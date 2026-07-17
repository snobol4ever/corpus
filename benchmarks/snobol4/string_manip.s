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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  mov edi, 5
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 5
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
  mov qword ptr [rsp + 1432], rsp
  mov r12, qword ptr [1879048192]
  mov rbp, rsp
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
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 624], rax
 mov qword ptr [rsp + 632], rdx
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n11_α:
 mov qword ptr [rsp + 592], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [rsp + 600], rax
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
 lea rsi, [rsp + 1120]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rsp + 1104], rax
 mov qword ptr [rsp + 1112], rdx
 cmp eax, 99
 je xchain0_n15_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n15_α
# IR_COERCE_NUMERIC
 xchain0_n13_α:
 mov eax, dword ptr [rsp + 624]
 cmp eax, 7
 je .Lx19_1
 cmp eax, 6
 jne .Lx19_0
 mov eax, dword ptr [rsp + 592]
 cmp eax, 6
 jne .Lx19_0
.Lx19_1:
 mov rax, qword ptr [rsp + 624]
 mov qword ptr [rsp + 560], rax
 mov rax, qword ptr [rsp + 632]
 mov qword ptr [rsp + 568], rax
 jmp .Lx19_2
.Lx19_0:
 lea rdi, [rsp + 624]
 lea rsi, [rsp + 592]
 lea rdx, [rsp + 560]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
.Lx19_2:
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n12_α
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [rsp + 1104]
 mov rdx, qword ptr [rsp + 1112]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rsp + 1088], rax
 mov qword ptr [rsp + 1096], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n15_α
# IR_LIT_STRING
 xchain0_n15_α:
 mov qword ptr [rsp + 1184], 1
 mov rax, qword ptr [rip + .Lx21_0]
 mov qword ptr [rsp + 1192], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n20_α
.Lx21_0:
 .quad .Lx21_0_s
.Lx21_0_s:
 .string "result: "
# IR_COERCE_NUMERIC
 xchain0_n16_α:
 mov eax, dword ptr [rsp + 592]
 cmp eax, 7
 je .Lx23_1
 cmp eax, 6
 jne .Lx23_0
 mov eax, dword ptr [rsp + 624]
 cmp eax, 6
 jne .Lx23_0
.Lx23_1:
 mov rax, qword ptr [rsp + 592]
 mov qword ptr [rsp + 528], rax
 mov rax, qword ptr [rsp + 600]
 mov qword ptr [rsp + 536], rax
 jmp .Lx23_2
.Lx23_0:
 lea rdi, [rsp + 592]
 lea rsi, [rsp + 624]
 lea rdx, [rsp + 528]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
.Lx23_2:
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rsp + 1216], rax
 mov qword ptr [rsp + 1224], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
# IR_CMP_TEST
 xchain0_n18_α:
 lea rdi, [rsp + 560]
 lea rsi, [rsp + 528]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain0_n12_α
 mov qword ptr [rsp + 496], 0
 mov qword ptr [rsp + 504], 0
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n12_α
 xchain0_n19_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1184]
 mov rsi, qword ptr [rsp + 1192]
 mov rdx, qword ptr [rsp + 1216]
 mov rcx, qword ptr [rsp + 1224]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1152], rax
 mov qword ptr [rsp + 1160], rdx
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
# IR_LIT_STRING
 xchain0_n20_α:
 mov qword ptr [rsp + 1296], 1
 mov rax, qword ptr [rip + .Lx28_0]
 mov qword ptr [rsp + 1304], rax
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp main_γ
.Lx28_0:
 .quad .Lx28_0_s
.Lx28_0_s:
 .string "ms: "
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rsp + 688], rax
 mov qword ptr [rsp + 696], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n12_α
# IR_ASSIGN global
 xchain0_n22_α:
 mov rsi, qword ptr [rsp + 1152]
 mov rdx, qword ptr [rsp + 1160]
 mov rdi, qword ptr [rip + .Lx30_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1136], rax
 mov qword ptr [rsp + 1144], rdx
 jmp xchain0_n20_α
 xchain0_n22_β:
 jmp xchain0_n20_α
.Lx30_0:
 .quad .Lx30_0_s
.Lx30_0_s:
 .string "OUTPUT"
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [1879052352]
 mov rdx, qword ptr [1879052360]
 mov qword ptr [rsp + 1360], rax
 mov qword ptr [rsp + 1368], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp main_γ
# IR_LIT_INTEGER
 xchain0_n24_α:
 mov qword ptr [rsp + 720], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [rsp + 728], rax
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n12_α
.Lx32_0:
 .quad 1
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [1879052288]
 mov rdx, qword ptr [1879052296]
 mov qword ptr [rsp + 1392], rax
 mov qword ptr [rsp + 1400], rdx
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp main_γ
 xchain0_n26_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 688]
 cmp eax, 100
 je .Lx34_0
 mov eax, dword ptr [rsp + 688]
 cmp eax, 6
 jne .Lx34_2
.Lx34_1:
 mov rax, qword ptr [rsp + 696]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rsp + 656], 6
 mov qword ptr [rsp + 664], rax
 jmp xchain0_n28_α
.Lx34_0:
 mov rdi, qword ptr [rsp + 688]
 mov rsi, qword ptr [rsp + 696]
 mov rdx, qword ptr [rsp + 720]
 mov rcx, qword ptr [rsp + 728]
 mov r8d, 0
 lea r9, [rsp + 656]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx34_3
.Lx34_2:
 mov rdi, qword ptr [rsp + 688]
 mov rsi, qword ptr [rsp + 696]
 mov rdx, qword ptr [rsp + 720]
 mov rcx, qword ptr [rsp + 728]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n12_α
 mov qword ptr [rsp + 656], rax
 mov qword ptr [rsp + 664], rdx
.Lx34_3:
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n12_α
 xchain0_n27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rsp + 1360]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [rsp + 1392]
 cmp eax, 100
 je .Lx35_0
 mov eax, dword ptr [rsp + 1360]
 cmp eax, 6
 jne .Lx35_2
 mov eax, dword ptr [rsp + 1392]
 cmp eax, 6
 jne .Lx35_2
.Lx35_1:
 mov rax, qword ptr [rsp + 1368]
 mov rcx, qword ptr [rsp + 1400]
 sub rax, rcx
 mov qword ptr [rsp + 1328], 6
 mov qword ptr [rsp + 1336], rax
 jmp xchain0_n29_α
.Lx35_0:
 mov rdi, qword ptr [rsp + 1360]
 mov rsi, qword ptr [rsp + 1368]
 mov rdx, qword ptr [rsp + 1392]
 mov rcx, qword ptr [rsp + 1400]
 mov r8d, 1
 lea r9, [rsp + 1328]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx35_3
.Lx35_2:
 mov rdi, qword ptr [rsp + 1360]
 mov rsi, qword ptr [rsp + 1368]
 mov rdx, qword ptr [rsp + 1392]
 mov rcx, qword ptr [rsp + 1400]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je main_γ
 mov qword ptr [rsp + 1328], rax
 mov qword ptr [rsp + 1336], rdx
.Lx35_3:
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp main_γ
 xchain0_n28_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 496]
 mov rsi, qword ptr [rsp + 504]
 mov rdx, qword ptr [rsp + 656]
 mov rcx, qword ptr [rsp + 664]
 call str_concat_d@PLT
 mov qword ptr [rsp + 464], rax
 mov qword ptr [rsp + 472], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n12_α
 xchain0_n29_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rsp + 1296]
 mov rsi, qword ptr [rsp + 1304]
 mov rdx, qword ptr [rsp + 1328]
 mov rcx, qword ptr [rsp + 1336]
 call str_concat_d@PLT
 mov qword ptr [rsp + 1264], rax
 mov qword ptr [rsp + 1272], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain0_n30_α:
 mov rax, qword ptr [rsp + 464]
 mov rdx, qword ptr [rsp + 472]
 mov qword ptr [1879052304], rax
 mov qword ptr [1879052312], rdx
 mov qword ptr [rsp + 448], rax
 mov qword ptr [rsp + 456], rdx
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n12_α
# IR_ASSIGN global
 xchain0_n31_α:
 mov rsi, qword ptr [rsp + 1264]
 mov rdx, qword ptr [rsp + 1272]
 mov rdi, qword ptr [rip + .Lx39_0]
 call NV_SET_fn@PLT
 mov qword ptr [rsp + 1248], rax
 mov qword ptr [rsp + 1256], rdx
 jmp main_γ
 xchain0_n31_β:
 jmp main_γ
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "OUTPUT"
# IR_LIT_STRING
 xchain0_n32_α:
 mov qword ptr [rsp + 768], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rsp + 776], rax
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n34_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "The quick brown fox jumps over the lazy dog"
# IR_ASSIGN gva
 xchain0_n33_α:
 mov rax, qword ptr [rsp + 768]
 mov rdx, qword ptr [rsp + 776]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rsp + 752], rax
 mov qword ptr [rsp + 760], rdx
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n34_α
# IR_VAR
 xchain0_n34_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rsp + 896], rax
 mov qword ptr [rsp + 904], rdx
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n36_α
# IR_LIT_STRING
 xchain0_n35_α:
 mov qword ptr [rsp + 928], 1
 mov rax, qword ptr [rip + .Lx43_0]
 mov qword ptr [rsp + 936], rax
 jmp xchain0_n37_α
 xchain0_n35_β:
 jmp xchain0_n36_α
.Lx43_0:
 .quad .Lx43_0_s
.Lx43_0_s:
 .string "aeiou"
# IR_VAR
 xchain0_n36_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rsp + 1056], rax
 mov qword ptr [rsp + 1064], rdx
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n10_α
# IR_LIT_STRING
 xchain0_n37_α:
 mov qword ptr [rsp + 960], 1
 mov rax, qword ptr [rip + .Lx45_0]
 mov qword ptr [rsp + 968], rax
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n36_α
.Lx45_0:
 .quad .Lx45_0_s
.Lx45_0_s:
 .string "*****"
 xchain0_n38_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1024]
 mov rax, qword ptr [rsp + 1056]
 mov qword ptr [rsp + 1024], rax
 mov rax, qword ptr [rsp + 1064]
 mov qword ptr [rsp + 1032], rax
  .section .rodata
  .Lrkfn47: .string "SIZE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn47]
 lea rsi, [rsp + 1024]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rsp + 1008], rax
 mov qword ptr [rsp + 1016], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp xchain0_n10_α
 xchain0_n39_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [rsp + 896]
 mov qword ptr [rsp + 832], rax
 mov rax, qword ptr [rsp + 904]
 mov qword ptr [rsp + 840], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+848]
 mov rax, qword ptr [rsp + 928]
 mov qword ptr [rsp + 848], rax
 mov rax, qword ptr [rsp + 936]
 mov qword ptr [rsp + 856], rax
# marshal arg2 = producer-box slot [zr+960] -> [zr+864]
 mov rax, qword ptr [rsp + 960]
 mov qword ptr [rsp + 864], rax
 mov rax, qword ptr [rsp + 968]
 mov qword ptr [rsp + 872], rax
  .section .rodata
  .Lrkfn49: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn49]
 lea rsi, [rsp + 832]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rsp + 816], rax
 mov qword ptr [rsp + 824], rdx
 cmp eax, 99
 je xchain0_n36_α
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n36_α
# IR_ASSIGN gva
 xchain0_n40_α:
 mov rax, qword ptr [rsp + 1008]
 mov rdx, qword ptr [rsp + 1016]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rsp + 992], rax
 mov qword ptr [rsp + 1000], rdx
 jmp xchain0_n10_α
 xchain0_n40_β:
 jmp xchain0_n10_α
# IR_ASSIGN gva
 xchain0_n41_α:
 mov rax, qword ptr [rsp + 816]
 mov rdx, qword ptr [rsp + 824]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rsp + 800], rax
 mov qword ptr [rsp + 808], rdx
 jmp xchain0_n36_α
 xchain0_n41_β:
 jmp xchain0_n36_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rsp + 1432]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rsp + 1432]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
add rsp, 65544
ret
