  .intel_syntax noprefix
  .text
  .section .rodata
  .Lgvan0: .string "T1"
  .Lgvan1: .string "N"
  .Lgvan2: .string "OUTER"
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
  mov qword ptr [rsp + 1784], rsp
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
 .quad 1
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
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 544], rax
 mov qword ptr [rsp + 552], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n13_α:
 mov qword ptr [rsp + 576], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rsp + 584], rax
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n14_α
.Lx17_0:
 .quad 3
# IR_VAR
 xchain0_n14_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 656], rax
 mov qword ptr [rsp + 664], rdx
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n17_α
 xchain0_n15_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 544]
 cmp eax, 100
 je .Lx19_0
 mov eax, dword ptr [rsp + 544]
 cmp eax, 6
 jne .Lx19_2
.Lx19_1:
 mov rax, qword ptr [rsp + 552]
 mov rcx, 3
 add rax, rcx
 mov qword ptr [rsp + 512], 6
 mov qword ptr [rsp + 520], rax
 jmp xchain0_n18_α
.Lx19_0:
 mov rdi, qword ptr [rsp + 544]
 mov rsi, qword ptr [rsp + 552]
 mov rdx, qword ptr [rsp + 576]
 mov rcx, qword ptr [rsp + 584]
 mov r8d, 0
 lea r9, [rsp + 512]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx19_3
.Lx19_2:
 mov rdi, qword ptr [rsp + 544]
 mov rsi, qword ptr [rsp + 552]
 mov rdx, qword ptr [rsp + 576]
 mov rcx, qword ptr [rsp + 584]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n14_α
 mov qword ptr [rsp + 512], rax
 mov qword ptr [rsp + 520], rdx
.Lx19_3:
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [rsp + 688], 6
 mov rax, qword ptr [rip + .Lx20_0]
 mov qword ptr [rsp + 696], rax
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n17_α
.Lx20_0:
 .quad 1
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 768], rax
 mov qword ptr [rsp + 776], rdx
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n21_α
# IR_ASSIGN gva
 xchain0_n18_α:
 mov rax, qword ptr [rsp + 512]
 mov rdx, qword ptr [rsp + 520]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 496], rax
 mov qword ptr [rsp + 504], rdx
 jmp xchain0_n14_α
 xchain0_n18_β:
 jmp xchain0_n14_α
 xchain0_n19_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 656]
 cmp eax, 100
 je .Lx23_0
 mov eax, dword ptr [rsp + 656]
 cmp eax, 6
 jne .Lx23_2
.Lx23_1:
 mov rax, qword ptr [rsp + 664]
 mov rcx, 1
 sub rax, rcx
 mov qword ptr [rsp + 624], 6
 mov qword ptr [rsp + 632], rax
 jmp xchain0_n22_α
.Lx23_0:
 mov rdi, qword ptr [rsp + 656]
 mov rsi, qword ptr [rsp + 664]
 mov rdx, qword ptr [rsp + 688]
 mov rcx, qword ptr [rsp + 696]
 mov r8d, 1
 lea r9, [rsp + 624]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx23_3
.Lx23_2:
 mov rdi, qword ptr [rsp + 656]
 mov rsi, qword ptr [rsp + 664]
 mov rdx, qword ptr [rsp + 688]
 mov rcx, qword ptr [rsp + 696]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n17_α
 mov qword ptr [rsp + 624], rax
 mov qword ptr [rsp + 632], rdx
.Lx23_3:
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n17_α
# IR_LIT_INTEGER
 xchain0_n20_α:
 mov qword ptr [rsp + 800], 6
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rsp + 808], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n21_α
.Lx24_0:
 .quad 2
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 1008], rax
 mov qword ptr [rsp + 1016], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n25_α
# IR_ASSIGN gva
 xchain0_n22_α:
 mov rax, qword ptr [rsp + 624]
 mov rdx, qword ptr [rsp + 632]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 608], rax
 mov qword ptr [rsp + 616], rdx
 jmp xchain0_n17_α
 xchain0_n22_β:
 jmp xchain0_n17_α
 xchain0_n23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 768]
 cmp eax, 100
 je .Lx27_0
 mov eax, dword ptr [rsp + 768]
 cmp eax, 6
 jne .Lx27_2
.Lx27_1:
 mov rax, qword ptr [rsp + 776]
 mov rcx, 2
 imul rax, rcx
 mov qword ptr [rsp + 736], 6
 mov qword ptr [rsp + 744], rax
 jmp xchain0_n26_α
.Lx27_0:
 mov rdi, qword ptr [rsp + 768]
 mov rsi, qword ptr [rsp + 776]
 mov rdx, qword ptr [rsp + 800]
 mov rcx, qword ptr [rsp + 808]
 mov r8d, 2
 lea r9, [rsp + 736]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx27_3
.Lx27_2:
 mov rdi, qword ptr [rsp + 768]
 mov rsi, qword ptr [rsp + 776]
 mov rdx, qword ptr [rsp + 800]
 mov rcx, qword ptr [rsp + 808]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n21_α
 mov qword ptr [rsp + 736], rax
 mov qword ptr [rsp + 744], rdx
.Lx27_3:
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n21_α
# IR_LIT_INTEGER
 xchain0_n24_α:
 mov qword ptr [rsp + 976], 6
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [rsp + 984], rax
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n25_α
.Lx28_0:
 .quad 10000000
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rsp + 1312], rax
 mov qword ptr [rsp + 1320], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n29_α
# IR_ASSIGN gva
 xchain0_n26_α:
 mov rax, qword ptr [rsp + 736]
 mov rdx, qword ptr [rsp + 744]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 720], rax
 mov qword ptr [rsp + 728], rdx
 jmp xchain0_n21_α
 xchain0_n26_β:
 jmp xchain0_n21_α
# IR_COERCE_NUMERIC
 xchain0_n27_α:
 mov eax, dword ptr [rsp + 1008]
 cmp eax, 7
 je .Lx32_1
 cmp eax, 6
 jne .Lx32_0
 mov eax, dword ptr [rsp + 976]
 cmp eax, 6
 jne .Lx32_0
.Lx32_1:
 mov rax, qword ptr [rsp + 1008]
 mov qword ptr [rsp + 944], rax
 mov rax, qword ptr [rsp + 1016]
 mov qword ptr [rsp + 952], rax
 jmp .Lx32_2
.Lx32_0:
 lea rdi, [rsp + 1008]
 lea rsi, [rsp + 976]
 lea rdx, [rsp + 944]
 mov rcx, 109
 call rt_coerce_num2_d@PLT
.Lx32_2:
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n25_α
# IR_LIT_INTEGER
 xchain0_n28_α:
 mov qword ptr [rsp + 1280], 6
 mov rax, qword ptr [rip + .Lx33_0]
 mov qword ptr [rsp + 1288], rax
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n29_α
.Lx33_0:
 .quad 1000000
 xchain0_n29_α:
# BOX IR_CALL TIME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn35: .string "TIME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn35]
 lea rsi, [rsp + 1472]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 1456], rax
 mov qword ptr [rsp + 1464], rdx
 cmp eax, 99
 je xchain0_n33_α
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n33_α
# IR_COERCE_NUMERIC
 xchain0_n30_α:
 mov eax, dword ptr [rsp + 976]
 cmp eax, 7
 je .Lx37_1
 cmp eax, 6
 jne .Lx37_0
 mov eax, dword ptr [rsp + 1008]
 cmp eax, 6
 jne .Lx37_0
.Lx37_1:
 mov rax, qword ptr [rsp + 976]
 mov qword ptr [rsp + 912], rax
 mov rax, qword ptr [rsp + 984]
 mov qword ptr [rsp + 920], rax
 jmp .Lx37_2
.Lx37_0:
 lea rdi, [rsp + 976]
 lea rsi, [rsp + 1008]
 lea rdx, [rsp + 912]
 mov rcx, 110
 call rt_coerce_num2_d@PLT
.Lx37_2:
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n25_α
# IR_COERCE_NUMERIC
 xchain0_n31_α:
 mov eax, dword ptr [rsp + 1312]
 cmp eax, 7
 je .Lx39_1
 cmp eax, 6
 jne .Lx39_0
 mov eax, dword ptr [rsp + 1280]
 cmp eax, 6
 jne .Lx39_0
.Lx39_1:
 mov rax, qword ptr [rsp + 1312]
 mov qword ptr [rsp + 1248], rax
 mov rax, qword ptr [rsp + 1320]
 mov qword ptr [rsp + 1256], rax
 jmp .Lx39_2
.Lx39_0:
 lea rdi, [rsp + 1312]
 lea rsi, [rsp + 1280]
 lea rdx, [rsp + 1248]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx39_2:
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n29_α
# IR_ASSIGN gva
 xchain0_n32_α:
 mov rax, qword ptr [rsp + 1456]
 mov rdx, qword ptr [rsp + 1464]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rsp + 1440], rax
 mov qword ptr [rsp + 1448], rdx
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n33_α
# IR_LIT_STRING
 xchain0_n33_α:
 mov qword ptr [rsp + 1536], 1
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rsp + 1544], rax
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n40_α
.Lx41_0:
 .quad .Lx41_0_s
.Lx41_0_s:
 .string "result: "
# IR_CMP_TEST
 xchain0_n34_α:
 lea rdi, [rsp + 944]
 lea rsi, [rsp + 912]
 call rt_cmp_d@PLT
 test eax, eax
 js xchain0_n25_α
 mov qword ptr [rsp + 880], 0
 mov qword ptr [rsp + 888], 0
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n25_α
# IR_COERCE_NUMERIC
 xchain0_n35_α:
 mov eax, dword ptr [rsp + 1280]
 cmp eax, 7
 je .Lx45_1
 cmp eax, 6
 jne .Lx45_0
 mov eax, dword ptr [rsp + 1312]
 cmp eax, 6
 jne .Lx45_0
.Lx45_1:
 mov rax, qword ptr [rsp + 1280]
 mov qword ptr [rsp + 1216], rax
 mov rax, qword ptr [rsp + 1288]
 mov qword ptr [rsp + 1224], rax
 jmp .Lx45_2
.Lx45_0:
 lea rdi, [rsp + 1280]
 lea rsi, [rsp + 1312]
 lea rdx, [rsp + 1216]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx45_2:
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n29_α
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 1568], rax
 mov qword ptr [rsp + 1576], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n40_α
# IR_VAR
 xchain0_n37_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 1072], rax
 mov qword ptr [rsp + 1080], rdx
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n25_α
# IR_CMP_TEST
 xchain0_n38_α:
 lea rdi, [rsp + 1248]
 lea rsi, [rsp + 1216]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n29_α
 mov qword ptr [rsp + 1184], 0
 mov qword ptr [rsp + 1192], 0
 jmp xchain0_n42_α
 xchain0_n38_β:
 jmp xchain0_n29_α
 xchain0_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1536]
 mov rsi, qword ptr [rsp + 1544]
 mov rdx, qword ptr [rsp + 1568]
 mov rcx, qword ptr [rsp + 1576]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1504], rax
 mov qword ptr [rsp + 1512], rdx
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n40_α
# IR_LIT_STRING
 xchain0_n40_α:
 mov qword ptr [rsp + 1648], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rsp + 1656], rax
 jmp xchain0_n44_α
 xchain0_n40_β:
 jmp main_γ
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "ms: "
# IR_LIT_INTEGER
 xchain0_n41_α:
 mov qword ptr [rsp + 1104], 6
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [rsp + 1112], rax
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n25_α
.Lx52_0:
 .quad 10000
# IR_VAR
 xchain0_n42_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rsp + 1376], rax
 mov qword ptr [rsp + 1384], rdx
 jmp xchain0_n46_α
 xchain0_n42_β:
 jmp xchain0_n29_α
# IR_ASSIGN global
 xchain0_n43_α:
 mov rsi, qword ptr [rsp + 1504]
 mov rdx, qword ptr [rsp + 1512]
 mov rdi, qword ptr [rip + .Lx54_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1488], rax
 mov qword ptr [rsp + 1496], rdx
 jmp xchain0_n40_α
 xchain0_n43_β:
 jmp xchain0_n40_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n44_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 1712], rax
 mov qword ptr [rsp + 1720], rdx
 jmp xchain0_n47_α
 xchain0_n44_β:
 jmp main_γ
 xchain0_n45_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1072]
 cmp eax, 100
 je .Lx56_0
 mov eax, dword ptr [rsp + 1072]
 cmp eax, 6
 jne .Lx56_2
.Lx56_1:
 mov rax, qword ptr [rsp + 1080]
 mov rcx, 10000
 cqo
 idiv rcx
 mov qword ptr [rsp + 1040], 6
 mov qword ptr [rsp + 1048], rax
 jmp xchain0_n48_α
.Lx56_0:
 mov rdi, qword ptr [rsp + 1072]
 mov rsi, qword ptr [rsp + 1080]
 mov rdx, qword ptr [rsp + 1104]
 mov rcx, qword ptr [rsp + 1112]
 mov r8d, 3
 lea r9, [rsp + 1040]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx56_3
.Lx56_2:
 mov rdi, qword ptr [rsp + 1072]
 mov rsi, qword ptr [rsp + 1080]
 mov rdx, qword ptr [rsp + 1104]
 mov rcx, qword ptr [rsp + 1112]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n25_α
 mov qword ptr [rsp + 1040], rax
 mov qword ptr [rsp + 1048], rdx
.Lx56_3:
 jmp xchain0_n48_α
 xchain0_n45_β:
 jmp xchain0_n25_α
# IR_LIT_INTEGER
 xchain0_n46_α:
 mov qword ptr [rsp + 1408], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rsp + 1416], rax
 jmp xchain0_n49_α
 xchain0_n46_β:
 jmp xchain0_n29_α
.Lx57_0:
 .quad 1
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rsp + 1744], rax
 mov qword ptr [rsp + 1752], rdx
 jmp xchain0_n50_α
 xchain0_n47_β:
 jmp main_γ
 xchain0_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 880]
 mov rsi, qword ptr [rsp + 888]
 mov rdx, qword ptr [rsp + 1040]
 mov rcx, qword ptr [rsp + 1048]
 call str_concat_d@PLT
 mov qword ptr [rsp + 848], rax
 mov qword ptr [rsp + 856], rdx
 jmp xchain0_n51_α
 xchain0_n48_β:
 jmp xchain0_n25_α
 xchain0_n49_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1376]
 cmp eax, 100
 je .Lx60_0
 mov eax, dword ptr [rsp + 1376]
 cmp eax, 6
 jne .Lx60_2
.Lx60_1:
 mov rax, qword ptr [rsp + 1384]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 1344], 6
 mov qword ptr [rsp + 1352], rax
 jmp xchain0_n52_α
.Lx60_0:
 mov rdi, qword ptr [rsp + 1376]
 mov rsi, qword ptr [rsp + 1384]
 mov rdx, qword ptr [rsp + 1408]
 mov rcx, qword ptr [rsp + 1416]
 mov r8d, 0
 lea r9, [rsp + 1344]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx60_3
.Lx60_2:
 mov rdi, qword ptr [rsp + 1376]
 mov rsi, qword ptr [rsp + 1384]
 mov rdx, qword ptr [rsp + 1408]
 mov rcx, qword ptr [rsp + 1416]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n29_α
 mov qword ptr [rsp + 1344], rax
 mov qword ptr [rsp + 1352], rdx
.Lx60_3:
 jmp xchain0_n52_α
 xchain0_n49_β:
 jmp xchain0_n29_α
 xchain0_n50_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1712]
 cmp eax, 100
 je .Lx61_0
 mov eax, dword ptr [rsp + 1744]
 cmp eax, 100
 je .Lx61_0
 mov eax, dword ptr [rsp + 1712]
 cmp eax, 6
 jne .Lx61_2
 mov eax, dword ptr [rsp + 1744]
 cmp eax, 6
 jne .Lx61_2
.Lx61_1:
 mov rax, qword ptr [rsp + 1720]
 mov rcx, qword ptr [rsp + 1752]
 sub rax, rcx
 mov qword ptr [rsp + 1680], 6
 mov qword ptr [rsp + 1688], rax
 jmp xchain0_n53_α
.Lx61_0:
 mov rdi, qword ptr [rsp + 1712]
 mov rsi, qword ptr [rsp + 1720]
 mov rdx, qword ptr [rsp + 1744]
 mov rcx, qword ptr [rsp + 1752]
 mov r8d, 1
 lea r9, [rsp + 1680]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx61_3
.Lx61_2:
 mov rdi, qword ptr [rsp + 1712]
 mov rsi, qword ptr [rsp + 1720]
 mov rdx, qword ptr [rsp + 1744]
 mov rcx, qword ptr [rsp + 1752]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rsp + 1680], rax
 mov qword ptr [rsp + 1688], rdx
.Lx61_3:
 jmp xchain0_n53_α
 xchain0_n50_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n51_α:
 mov rax, qword ptr [rsp + 848]
 mov rdx, qword ptr [rsp + 856]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 832], rax
 mov qword ptr [rsp + 840], rdx
 jmp xchain0_n12_α
 xchain0_n51_β:
 jmp xchain0_n25_α
 xchain0_n52_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1184]
 mov rsi, qword ptr [rsp + 1192]
 mov rdx, qword ptr [rsp + 1344]
 mov rcx, qword ptr [rsp + 1352]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1152], rax
 mov qword ptr [rsp + 1160], rdx
 jmp xchain0_n54_α
 xchain0_n52_β:
 jmp xchain0_n29_α
 xchain0_n53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1648]
 mov rsi, qword ptr [rsp + 1656]
 mov rdx, qword ptr [rsp + 1680]
 mov rcx, qword ptr [rsp + 1688]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1616], rax
 mov qword ptr [rsp + 1624], rdx
 jmp xchain0_n55_α
 xchain0_n53_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n54_α:
 mov rax, qword ptr [rsp + 1152]
 mov rdx, qword ptr [rsp + 1160]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rsp + 1136], rax
 mov qword ptr [rsp + 1144], rdx
 jmp xchain0_n12_α
 xchain0_n54_β:
 jmp xchain0_n29_α
# IR_ASSIGN global
 xchain0_n55_α:
 mov rsi, qword ptr [rsp + 1616]
 mov rdx, qword ptr [rsp + 1624]
 mov rdi, qword ptr [rip + .Lx66_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1600], rax
 mov qword ptr [rsp + 1608], rdx
 jmp main_γ
 xchain0_n55_β:
 jmp main_γ
.Lx66_0:
 .quad .Lx66_0_s
.Lx66_0_s:
 .string "OUTPUT"
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 1784]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 1784]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
