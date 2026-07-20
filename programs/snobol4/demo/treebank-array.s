  .intel_syntax noprefix
  .text
  .globl proc_stk_push_frame_α
proc_stk_push_frame_α:
#=======================================================================================================================
    .global proc_stk_push_frame_α
    .global proc_stk_push_frame_β
    .global proc_stk_push_frame_γ
    .global proc_stk_push_frame_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_stk_push_frame_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n1_α
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n3_α
.Lx2_0:
 .quad 1
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [1879052848]
 mov rdx, qword ptr [1879052856]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n4_α
 xchain0_n3_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx4_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx4_2
.Lx4_1:
 mov rax, qword ptr [rbp + 648]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 608], 6
 mov qword ptr [rbp + 616], rax
 jmp xchain0_n6_α
.Lx4_0:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 mov r8d, 0
 lea r9, [rbp + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n6_α
.Lx4_2:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n2_α
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n6_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n7_α
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain0_n8_α
# IR_ASSIGN gva
 xchain0_n6_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain0_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n7_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 736]
 mov rcx, qword ptr [rbp + 744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n5_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n10_α
# IR_VAR
 xchain0_n8_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n11_α
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain0_n14_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n11_α:
 mov rdi, qword ptr [rbp + 848]
 mov rsi, qword ptr [rbp + 856]
 mov rdx, qword ptr [rbp + 880]
 mov rcx, qword ptr [rbp + 888]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n9_α
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n12_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n16_α
# IR_VAR
 xchain0_n13_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n17_α
# IR_ASSIGN_VAR
 xchain0_n14_α:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 mov rdx, qword ptr [rbp + 800]
 mov rcx, qword ptr [rbp + 808]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n5_α
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n15_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain0_n19_α
.Lx16_0:
 .quad 0
# IR_SUBSCRIPT x[i] variable
 xchain0_n16_α:
 mov rdi, qword ptr [rbp + 992]
 mov rsi, qword ptr [rbp + 1000]
 mov rdx, qword ptr [rbp + 1024]
 mov rcx, qword ptr [rbp + 1032]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n13_α
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain0_n20_α
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain0_n21_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain0_n22_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "dummy"
# IR_ASSIGN_VAR
 xchain0_n19_α:
 mov rdi, qword ptr [rbp + 912]
 mov rsi, qword ptr [rbp + 920]
 mov rdx, qword ptr [rbp + 944]
 mov rcx, qword ptr [rbp + 952]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n9_α
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain0_n9_α
 xchain0_n20_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn22: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn22]
 lea rsi, [rbp + 1104]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n13_α
 xchain0_n21_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1184]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
  .section .rodata
  .Lrkfn24: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn24]
 lea rsi, [rbp + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n18_α
 xchain0_n22_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1312]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1320], rax
  .section .rodata
  .Lrkfn26: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn26]
 lea rsi, [rbp + 1312]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je proc_stk_push_frame_γ
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp proc_stk_push_frame_γ
# IR_ASSIGN_VAR
 xchain0_n23_α:
 mov rdi, qword ptr [rbp + 1056]
 mov rsi, qword ptr [rbp + 1064]
 mov rdx, qword ptr [rbp + 1088]
 mov rcx, qword ptr [rbp + 1096]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n13_α
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain0_n13_α
# IR_ASSIGN gva
 xchain0_n24_α:
 mov rax, qword ptr [rbp + 1152]
 mov rdx, qword ptr [rbp + 1160]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n18_α
# IR_ASSIGN gva
 xchain0_n25_α:
 mov rax, qword ptr [rbp + 1296]
 mov rdx, qword ptr [rbp + 1304]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp proc_stk_push_frame_γ
proc_stk_push_frame_res:
add rsp, 8
pop rbp
proc_stk_push_frame_β:
jmp proc_stk_push_frame_ω
proc_stk_push_frame_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_stk_push_frame_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_stk_push_item_α
proc_stk_push_item_α:
#=======================================================================================================================
    .global proc_stk_push_item_α
    .global proc_stk_push_item_β
    .global proc_stk_push_item_γ
    .global proc_stk_push_item_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_stk_push_item_α_body:
# IR_VAR
 xchain30_n0_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain30_n1_α
 xchain30_n1_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1408]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn33: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn33]
 lea rsi, [rbp + 1408]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain30_n2_α
 jmp xchain30_n3_α
 xchain30_n1_β:
 jmp xchain30_n2_α
# IR_VAR
 xchain30_n2_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain30_n4_α
# IR_ASSIGN gva
 xchain30_n3_α:
 mov rax, qword ptr [rbp + 1392]
 mov rdx, qword ptr [rbp + 1400]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain30_n2_α
# IR_VAR
 xchain30_n4_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain30_n6_α
# IR_VAR
 xchain30_n5_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain30_n7_α
# IR_SUBSCRIPT x[i] variable
 xchain30_n6_α:
 mov rdi, qword ptr [rbp + 1472]
 mov rsi, qword ptr [rbp + 1480]
 mov rdx, qword ptr [rbp + 1504]
 mov rcx, qword ptr [rbp + 1512]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain30_n9_α
# IR_VAR
 xchain30_n7_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain30_n10_α
# IR_LIT_STRING
 xchain30_n8_α:
 mov qword ptr [rbp + 2128], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain30_n11_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "dummy"
# IR_VAR
 xchain30_n9_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain30_n12_α
# IR_SUBSCRIPT x[i] variable
 xchain30_n10_α:
 mov rdi, qword ptr [rbp + 1760]
 mov rsi, qword ptr [rbp + 1768]
 mov rdx, qword ptr [rbp + 1792]
 mov rcx, qword ptr [rbp + 1800]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain30_n13_α
 xchain30_n11_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2096]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2104], rax
  .section .rodata
  .Lrkfn44: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn44]
 lea rsi, [rbp + 2096]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je proc_stk_push_item_γ
 jmp xchain30_n14_α
 xchain30_n11_β:
 jmp proc_stk_push_item_γ
# IR_VAR
 xchain30_n12_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain30_n15_α
# IR_DEREF variable -> value
 xchain30_n13_α:
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 call rt_deref@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain30_n16_α
# IR_ASSIGN gva
 xchain30_n14_α:
 mov rax, qword ptr [rbp + 2080]
 mov rdx, qword ptr [rbp + 2088]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp proc_stk_push_item_γ
# IR_SUBSCRIPT x[i] variable
 xchain30_n15_α:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 mov rdx, qword ptr [rbp + 1632]
 mov rcx, qword ptr [rbp + 1640]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain30_n17_α
# IR_VAR
 xchain30_n16_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain30_n18_α
# IR_DEREF variable -> value
 xchain30_n17_α:
 mov rdi, qword ptr [rbp + 1664]
 mov rsi, qword ptr [rbp + 1672]
 call rt_deref@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain30_n19_α
# IR_VAR
 xchain30_n18_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 jmp xchain30_n20_α
# IR_LIT_INTEGER
 xchain30_n19_α:
 mov qword ptr [rbp + 1712], 6
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain30_n21_α
.Lx52_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain30_n20_α:
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain30_n22_α
 xchain30_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 100
 je .Lx54_0
 mov eax, dword ptr [rbp + 1696]
 cmp eax, 6
 jne .Lx54_2
.Lx54_1:
 mov rax, qword ptr [rbp + 1704]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1568], 6
 mov qword ptr [rbp + 1576], rax
 jmp xchain30_n23_α
.Lx54_0:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 mov r8d, 0
 lea r9, [rbp + 1568]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n23_α
.Lx54_2:
 mov rdi, qword ptr [rbp + 1696]
 mov rsi, qword ptr [rbp + 1704]
 mov rdx, qword ptr [rbp + 1712]
 mov rcx, qword ptr [rbp + 1720]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain30_n23_α
 xchain30_n21_β:
 jmp xchain30_n5_α
# IR_DEREF variable -> value
 xchain30_n22_α:
 mov rdi, qword ptr [rbp + 1936]
 mov rsi, qword ptr [rbp + 1944]
 call rt_deref@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain30_n24_α
# IR_ASSIGN_VAR
 xchain30_n23_α:
 mov rdi, qword ptr [rbp + 1536]
 mov rsi, qword ptr [rbp + 1544]
 mov rdx, qword ptr [rbp + 1568]
 mov rcx, qword ptr [rbp + 1576]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain30_n5_α
# IR_SUBSCRIPT x[i] variable
 xchain30_n24_α:
 mov rdi, qword ptr [rbp + 1856]
 mov rsi, qword ptr [rbp + 1864]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain30_n25_α
# IR_VAR
 xchain30_n25_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain30_n26_α
# IR_ASSIGN_VAR
 xchain30_n26_α:
 mov rdi, qword ptr [rbp + 1984]
 mov rsi, qword ptr [rbp + 1992]
 mov rdx, qword ptr [rbp + 2016]
 mov rcx, qword ptr [rbp + 2024]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain30_n8_α
proc_stk_push_item_res:
add rsp, 8
pop rbp
proc_stk_push_item_β:
jmp proc_stk_push_item_ω
proc_stk_push_item_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_stk_push_item_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
#=======================================================================================================================
    .global proc_stk_pop_into_parent_α
    .global proc_stk_pop_into_parent_β
    .global proc_stk_pop_into_parent_γ
    .global proc_stk_pop_into_parent_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_stk_pop_into_parent_α_body:
# IR_VAR
 xchain60_n0_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain60_n1_α
 xchain60_n1_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2224] -> [zr+2192]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2200], rax
  .section .rodata
  .Lrkfn63: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn63]
 lea rsi, [rbp + 2192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain60_n2_α
 jmp xchain60_n3_α
 xchain60_n1_β:
 jmp xchain60_n2_α
# IR_VAR
 xchain60_n2_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain60_n4_α
# IR_ASSIGN gva
 xchain60_n3_α:
 mov rax, qword ptr [rbp + 2176]
 mov rdx, qword ptr [rbp + 2184]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain60_n2_α
 xchain60_n4_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2320] -> [zr+2288]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2296], rax
  .section .rodata
  .Lrkfn67: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn67]
 lea rsi, [rbp + 2288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain60_n5_α
 jmp xchain60_n6_α
 xchain60_n4_β:
 jmp xchain60_n5_α
# IR_VAR
 xchain60_n5_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain60_n7_α
# IR_ASSIGN gva
 xchain60_n6_α:
 mov rax, qword ptr [rbp + 2272]
 mov rdx, qword ptr [rbp + 2280]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain60_n5_α
 xchain60_n7_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2384]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2392], rax
  .section .rodata
  .Lrkfn71: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn71]
 lea rsi, [rbp + 2384]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain60_n8_α
 jmp xchain60_n9_α
 xchain60_n7_β:
 jmp xchain60_n8_α
# IR_VAR
 xchain60_n8_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain60_n10_α
# IR_ASSIGN gva
 xchain60_n9_α:
 mov rax, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 2352], rax
 mov qword ptr [rbp + 2360], rdx
 jmp xchain60_n8_α
# IR_VAR
 xchain60_n10_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain60_n12_α
# IR_VAR
 xchain60_n11_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 2576], rax
 mov qword ptr [rbp + 2584], rdx
 jmp xchain60_n13_α
# IR_SUBSCRIPT x[i] variable
 xchain60_n12_α:
 mov rdi, qword ptr [rbp + 2464]
 mov rsi, qword ptr [rbp + 2472]
 mov rdx, qword ptr [rbp + 2496]
 mov rcx, qword ptr [rbp + 2504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain60_n11_α
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain60_n15_α
# IR_VAR
 xchain60_n13_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain60_n16_α
# IR_VAR
 xchain60_n14_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain60_n17_α
# IR_DEREF variable -> value
 xchain60_n15_α:
 mov rdi, qword ptr [rbp + 2528]
 mov rsi, qword ptr [rbp + 2536]
 call rt_deref@PLT
 cmp eax, 99
 je xchain60_n11_α
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain60_n19_α
# IR_SUBSCRIPT x[i] variable
 xchain60_n16_α:
 mov rdi, qword ptr [rbp + 2576]
 mov rsi, qword ptr [rbp + 2584]
 mov rdx, qword ptr [rbp + 2608]
 mov rcx, qword ptr [rbp + 2616]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain60_n14_α
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain60_n20_α
# IR_VAR
 xchain60_n17_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain60_n21_α
# IR_LIT_STRING
 xchain60_n18_α:
 mov qword ptr [rbp + 3136], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 3144], rax
 jmp xchain60_n22_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain60_n19_α:
 mov rax, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain60_n11_α
# IR_VAR
 xchain60_n20_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain60_n23_α
# IR_SUBSCRIPT x[i] variable
 xchain60_n21_α:
 mov rdi, qword ptr [rbp + 2784]
 mov rsi, qword ptr [rbp + 2792]
 mov rdx, qword ptr [rbp + 2816]
 mov rcx, qword ptr [rbp + 2824]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain60_n24_α
 xchain60_n22_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3104]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3112], rax
  .section .rodata
  .Lrkfn87: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn87]
 lea rsi, [rbp + 3104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 cmp eax, 99
 je proc_stk_pop_into_parent_γ
 jmp xchain60_n25_α
 xchain60_n22_β:
 jmp proc_stk_pop_into_parent_γ
# IR_LIT_INTEGER
 xchain60_n23_α:
 mov qword ptr [rbp + 2736], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain60_n26_α
.Lx88_0:
 .quad 1
# IR_DEREF variable -> value
 xchain60_n24_α:
 mov rdi, qword ptr [rbp + 2848]
 mov rsi, qword ptr [rbp + 2856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp xchain60_n27_α
# IR_ASSIGN gva
 xchain60_n25_α:
 mov rax, qword ptr [rbp + 3088]
 mov rdx, qword ptr [rbp + 3096]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 jmp proc_stk_pop_into_parent_γ
 xchain60_n26_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2704]
 cmp eax, 100
 je .Lx91_0
 mov eax, dword ptr [rbp + 2704]
 cmp eax, 6
 jne .Lx91_2
.Lx91_1:
 mov rax, qword ptr [rbp + 2712]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2672], 6
 mov qword ptr [rbp + 2680], rax
 jmp xchain60_n28_α
.Lx91_0:
 mov rdi, qword ptr [rbp + 2704]
 mov rsi, qword ptr [rbp + 2712]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 lea r9, [rbp + 2672]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain60_n28_α
.Lx91_2:
 mov rdi, qword ptr [rbp + 2704]
 mov rsi, qword ptr [rbp + 2712]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain60_n14_α
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain60_n28_α
 xchain60_n26_β:
 jmp xchain60_n14_α
# IR_VAR
 xchain60_n27_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain60_n29_α
# IR_ASSIGN_VAR
 xchain60_n28_α:
 mov rdi, qword ptr [rbp + 2640]
 mov rsi, qword ptr [rbp + 2648]
 mov rdx, qword ptr [rbp + 2672]
 mov rcx, qword ptr [rbp + 2680]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain60_n14_α
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain60_n14_α
# IR_LIT_INTEGER
 xchain60_n29_α:
 mov qword ptr [rbp + 2960], 6
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain60_n30_α
.Lx94_0:
 .quad 1
 xchain60_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 100
 je .Lx95_0
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 6
 jne .Lx95_2
.Lx95_1:
 mov rax, qword ptr [rbp + 2936]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2896], 6
 mov qword ptr [rbp + 2904], rax
 jmp xchain60_n31_α
.Lx95_0:
 mov rdi, qword ptr [rbp + 2928]
 mov rsi, qword ptr [rbp + 2936]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 mov r8d, 0
 lea r9, [rbp + 2896]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain60_n31_α
.Lx95_2:
 mov rdi, qword ptr [rbp + 2928]
 mov rsi, qword ptr [rbp + 2936]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain60_n31_α
 xchain60_n30_β:
 jmp xchain60_n18_α
# IR_SUBSCRIPT x[i] variable
 xchain60_n31_α:
 mov rdi, qword ptr [rbp + 2880]
 mov rsi, qword ptr [rbp + 2888]
 mov rdx, qword ptr [rbp + 2896]
 mov rcx, qword ptr [rbp + 2904]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain60_n32_α
# IR_VAR
 xchain60_n32_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain60_n33_α
# IR_ASSIGN_VAR
 xchain60_n33_α:
 mov rdi, qword ptr [rbp + 2992]
 mov rsi, qword ptr [rbp + 3000]
 mov rdx, qword ptr [rbp + 3024]
 mov rcx, qword ptr [rbp + 3032]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain60_n18_α
proc_stk_pop_into_parent_res:
add rsp, 8
pop rbp
proc_stk_pop_into_parent_β:
jmp proc_stk_pop_into_parent_ω
proc_stk_pop_into_parent_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_stk_pop_into_parent_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_stk_pop_final_α
proc_stk_pop_final_α:
#=======================================================================================================================
    .global proc_stk_pop_final_α
    .global proc_stk_pop_final_β
    .global proc_stk_pop_final_γ
    .global proc_stk_pop_final_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_stk_pop_final_α_body:
# IR_VAR
 xchain99_n0_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain99_n1_α
 xchain99_n1_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3232] -> [zr+3200]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3208], rax
  .section .rodata
  .Lrkfn102: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn102]
 lea rsi, [rbp + 3200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je xchain99_n2_α
 jmp xchain99_n3_α
 xchain99_n1_β:
 jmp xchain99_n2_α
# IR_VAR
 xchain99_n2_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain99_n4_α
# IR_ASSIGN gva
 xchain99_n3_α:
 mov rax, qword ptr [rbp + 3184]
 mov rdx, qword ptr [rbp + 3192]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain99_n2_α
 xchain99_n4_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3328] -> [zr+3296]
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3304], rax
  .section .rodata
  .Lrkfn106: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn106]
 lea rsi, [rbp + 3296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 cmp eax, 99
 je xchain99_n5_α
 jmp xchain99_n6_α
 xchain99_n4_β:
 jmp xchain99_n5_α
# IR_VAR
 xchain99_n5_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 jmp xchain99_n7_α
# IR_ASSIGN gva
 xchain99_n6_α:
 mov rax, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain99_n5_α
 xchain99_n7_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3408] -> [zr+3376]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3384], rax
  .section .rodata
  .Lrkfn110: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn110]
 lea rsi, [rbp + 3376]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 cmp eax, 99
 je xchain99_n8_α
 jmp xchain99_n9_α
 xchain99_n7_β:
 jmp xchain99_n8_α
# IR_LIT_STRING
 xchain99_n8_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain99_n10_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "dummy"
# IR_VAR
 xchain99_n9_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain99_n11_α
 xchain99_n10_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3520]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3528], rax
  .section .rodata
  .Lrkfn114: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn114]
 lea rsi, [rbp + 3520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 cmp eax, 99
 je proc_stk_pop_final_γ
 jmp xchain99_n12_α
 xchain99_n10_β:
 jmp proc_stk_pop_final_γ
# IR_ASSIGN_VAR
 xchain99_n11_α:
 mov rdi, qword ptr [rbp + 3360]
 mov rsi, qword ptr [rbp + 3368]
 mov rdx, qword ptr [rbp + 3440]
 mov rcx, qword ptr [rbp + 3448]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain99_n8_α
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 jmp xchain99_n8_α
# IR_ASSIGN gva
 xchain99_n12_α:
 mov rax, qword ptr [rbp + 3504]
 mov rdx, qword ptr [rbp + 3512]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 3488], rax
 mov qword ptr [rbp + 3496], rdx
 jmp proc_stk_pop_final_γ
proc_stk_pop_final_res:
add rsp, 8
pop rbp
proc_stk_pop_final_β:
jmp proc_stk_pop_final_ω
proc_stk_pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_stk_pop_final_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_init_list_α
proc_init_list_α:
#=======================================================================================================================
    .global proc_init_list_α
    .global proc_init_list_β
    .global proc_init_list_γ
    .global proc_init_list_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_init_list_α_body:
# IR_VAR
 xchain117_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain117_n1_α
 xchain117_n1_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3632] -> [zr+3600]
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3608], rax
  .section .rodata
  .Lrkfn120: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn120]
 lea rsi, [rbp + 3600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 cmp eax, 99
 je xchain117_n2_α
 jmp xchain117_n3_α
 xchain117_n1_β:
 jmp xchain117_n2_α
# IR_LIT_STRING
 xchain117_n2_α:
 mov qword ptr [rbp + 3728], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain117_n4_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string ""
# IR_LIT_STRING
 xchain117_n3_α:
 mov qword ptr [rbp + 3664], 1
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [rbp + 3672], rax
 jmp xchain117_n5_α
.Lx122_0:
 .quad .Lx122_0_s
.Lx122_0_s:
 .string ""
# IR_ASSIGN gva
 xchain117_n4_α:
 mov rax, qword ptr [rbp + 3728]
 mov rdx, qword ptr [rbp + 3736]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp xchain117_n6_α
# IR_ASSIGN_VAR
 xchain117_n5_α:
 mov rdi, qword ptr [rbp + 3584]
 mov rsi, qword ptr [rbp + 3592]
 mov rdx, qword ptr [rbp + 3664]
 mov rcx, qword ptr [rbp + 3672]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain117_n2_α
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain117_n2_α
# IR_LIT_INTEGER
 xchain117_n6_α:
 mov qword ptr [rbp + 3776], 6
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [rbp + 3784], rax
 jmp xchain117_n7_α
.Lx125_0:
 .quad 0
# IR_ASSIGN gva
 xchain117_n7_α:
 mov rax, qword ptr [rbp + 3776]
 mov rdx, qword ptr [rbp + 3784]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain117_n8_α
 xchain117_n8_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn128: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn128]
 lea rsi, [rbp + 3840]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 cmp eax, 99
 je xchain117_n10_α
 jmp xchain117_n9_α
 xchain117_n8_β:
 jmp xchain117_n10_α
# IR_ASSIGN gva
 xchain117_n9_α:
 mov rax, qword ptr [rbp + 3824]
 mov rdx, qword ptr [rbp + 3832]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain117_n10_α
 xchain117_n10_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn131: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn131]
 lea rsi, [rbp + 3888]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 cmp eax, 99
 je xchain117_n12_α
 jmp xchain117_n11_α
 xchain117_n10_β:
 jmp xchain117_n12_α
# IR_ASSIGN gva
 xchain117_n11_α:
 mov rax, qword ptr [rbp + 3872]
 mov rdx, qword ptr [rbp + 3880]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 jmp xchain117_n12_α
 xchain117_n12_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn134: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn134]
 lea rsi, [rbp + 3936]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n13_α
 xchain117_n12_β:
 jmp xchain117_n14_α
# IR_ASSIGN gva
 xchain117_n13_α:
 mov rax, qword ptr [rbp + 3920]
 mov rdx, qword ptr [rbp + 3928]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain117_n14_α
# IR_LIT_STRING
 xchain117_n14_α:
 mov qword ptr [rbp + 4016], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [rbp + 4024], rax
 jmp xchain117_n15_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "dummy"
 xchain117_n15_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3984]
 mov rax, qword ptr [rbp + 4016]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 3992], rax
  .section .rodata
  .Lrkfn138: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn138]
 lea rsi, [rbp + 3984]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je xchain117_n17_α
 jmp xchain117_n16_α
 xchain117_n15_β:
 jmp xchain117_n17_α
# IR_ASSIGN gva
 xchain117_n16_α:
 mov rax, qword ptr [rbp + 3968]
 mov rdx, qword ptr [rbp + 3976]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain117_n17_α
# IR_LIT_STRING
 xchain117_n17_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain117_n18_α
.Lx140_0:
 .quad .Lx140_0_s
.Lx140_0_s:
 .string ""
 xchain117_n18_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn142: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn142]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_init_list_ω
 jmp proc_init_list_γ
 xchain117_n18_β:
 jmp proc_init_list_ω
proc_init_list_res:
add rsp, 8
pop rbp
proc_init_list_β:
jmp proc_init_list_ω
proc_init_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_init_list_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_Init_list_α
proc_Init_list_α:
#=======================================================================================================================
    .global proc_Init_list_α
    .global proc_Init_list_β
    .global proc_Init_list_γ
    .global proc_Init_list_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_Init_list_α_body:
# IR_LIT_STRING
 xchain143_n0_α:
 mov qword ptr [rbp + 4176], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 4184], rax
 jmp xchain143_n1_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "epsilon . *init_list("
# IR_VAR
 xchain143_n1_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 4208], rax
 mov qword ptr [rbp + 4216], rdx
 jmp xchain143_n2_α
 xchain143_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4176]
 mov rsi, qword ptr [rbp + 4184]
 mov rdx, qword ptr [rbp + 4208]
 mov rcx, qword ptr [rbp + 4216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4144], rax
 mov qword ptr [rbp + 4152], rdx
 jmp xchain143_n3_α
# IR_LIT_STRING
 xchain143_n3_α:
 mov qword ptr [rbp + 4240], 1
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 4248], rax
 jmp xchain143_n4_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string ")"
 xchain143_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4144]
 mov rsi, qword ptr [rbp + 4152]
 mov rdx, qword ptr [rbp + 4240]
 mov rcx, qword ptr [rbp + 4248]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4112], rax
 mov qword ptr [rbp + 4120], rdx
 jmp xchain143_n5_α
 xchain143_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4112] -> [zr+4080]
 mov rax, qword ptr [rbp + 4112]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 4120]
 mov qword ptr [rbp + 4088], rax
  .section .rodata
  .Lrkfn150: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn150]
 lea rsi, [rbp + 4080]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 cmp eax, 99
 je proc_Init_list_γ
 jmp xchain143_n6_α
 xchain143_n5_β:
 jmp proc_Init_list_γ
# IR_ASSIGN gva
 xchain143_n6_α:
 mov rax, qword ptr [rbp + 4064]
 mov rdx, qword ptr [rbp + 4072]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 jmp proc_Init_list_γ
proc_Init_list_res:
add rsp, 8
pop rbp
proc_Init_list_β:
jmp proc_Init_list_ω
proc_Init_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_Init_list_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_push_list_α
proc_push_list_α:
#=======================================================================================================================
    .global proc_push_list_α
    .global proc_push_list_β
    .global proc_push_list_γ
    .global proc_push_list_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_push_list_α_body:
# IR_VAR
 xchain152_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain152_n1_α
 xchain152_n1_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx155_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx155_5
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx155_6]
 lea rdx, [rip + .Lx155_7]
 jmp rax
.Lx155_6:
 mov rdi, qword ptr [1879052288]
 mov rsi, qword ptr [1879052296]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx155_2
.Lx155_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx155_2
.Lx155_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 4336]
 mov rdx, qword ptr [rbp + 4344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx155_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx155_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx155_3]
 lea rdx, [rip + .Lx155_4]
 jmp rax
.Lx155_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx155_2
.Lx155_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx155_2
.Lx155_1:
 call rt_faildescr@PLT
.Lx155_2:
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain152_n2_α
 jmp xchain152_n3_α
 xchain152_n1_β:
 jmp xchain152_n2_α
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
 .string "stk_push_frame"
# IR_LIT_STRING
 xchain152_n2_α:
 mov qword ptr [rbp + 4432], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 4440], rax
 jmp xchain152_n4_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain152_n3_α:
 mov rax, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain152_n2_α
 xchain152_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4432] -> [zr+4400]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4400], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4408], rax
  .section .rodata
  .Lrkfn159: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn159]
 lea rsi, [rbp + 4400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 cmp eax, 99
 je xchain152_n6_α
 jmp xchain152_n5_α
 xchain152_n4_β:
 jmp xchain152_n6_α
# IR_ASSIGN gva
 xchain152_n5_α:
 mov rax, qword ptr [rbp + 4384]
 mov rdx, qword ptr [rbp + 4392]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp xchain152_n6_α
# IR_LIT_STRING
 xchain152_n6_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain152_n7_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string ""
 xchain152_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn163: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn163]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_push_list_ω
 jmp proc_push_list_γ
 xchain152_n7_β:
 jmp proc_push_list_ω
proc_push_list_res:
add rsp, 8
pop rbp
proc_push_list_β:
jmp proc_push_list_ω
proc_push_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_push_list_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_Push_list_α
proc_Push_list_α:
#=======================================================================================================================
    .global proc_Push_list_α
    .global proc_Push_list_β
    .global proc_Push_list_γ
    .global proc_Push_list_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_Push_list_α_body:
# IR_LIT_STRING
 xchain164_n0_α:
 mov qword ptr [rbp + 4592], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain164_n1_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "epsilon . *push_list("
# IR_VAR
 xchain164_n1_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 jmp xchain164_n2_α
 xchain164_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4592]
 mov rsi, qword ptr [rbp + 4600]
 mov rdx, qword ptr [rbp + 4624]
 mov rcx, qword ptr [rbp + 4632]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain164_n3_α
# IR_LIT_STRING
 xchain164_n3_α:
 mov qword ptr [rbp + 4656], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [rbp + 4664], rax
 jmp xchain164_n4_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string ")"
 xchain164_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4560]
 mov rsi, qword ptr [rbp + 4568]
 mov rdx, qword ptr [rbp + 4656]
 mov rcx, qword ptr [rbp + 4664]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 jmp xchain164_n5_α
 xchain164_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4528] -> [zr+4496]
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4504], rax
  .section .rodata
  .Lrkfn171: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn171]
 lea rsi, [rbp + 4496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 cmp eax, 99
 je proc_Push_list_γ
 jmp xchain164_n6_α
 xchain164_n5_β:
 jmp proc_Push_list_γ
# IR_ASSIGN gva
 xchain164_n6_α:
 mov rax, qword ptr [rbp + 4480]
 mov rdx, qword ptr [rbp + 4488]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp proc_Push_list_γ
proc_Push_list_res:
add rsp, 8
pop rbp
proc_Push_list_β:
jmp proc_Push_list_ω
proc_Push_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_Push_list_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_push_item_α
proc_push_item_α:
#=======================================================================================================================
    .global proc_push_item_α
    .global proc_push_item_β
    .global proc_push_item_γ
    .global proc_push_item_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_push_item_α_body:
# IR_VAR
 xchain173_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 jmp xchain173_n1_α
 xchain173_n1_α:
 sub rsp, 48
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052336]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052344]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052320]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052328]
 mov qword ptr [rsp + 40], rax
 mov rdi, qword ptr [rip + .Lx176_0]
 mov esi, 2
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx176_5
 mov rax, qword ptr [rbp + 4752]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 4760]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx176_6]
 lea rdx, [rip + .Lx176_7]
 jmp rax
.Lx176_6:
 mov rdi, qword ptr [1879052320]
 mov rsi, qword ptr [1879052328]
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052320], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052328], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052336], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052344], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 48
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx176_2
.Lx176_7:
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052320], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052328], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052336], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052344], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 48
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx176_2
.Lx176_5:
 add rsp, 48
 mov edi, 0
 mov rsi, qword ptr [rbp + 4752]
 mov rdx, qword ptr [rbp + 4760]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx176_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx176_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx176_3]
 lea rdx, [rip + .Lx176_4]
 jmp rax
.Lx176_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx176_2
.Lx176_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx176_2
.Lx176_1:
 call rt_faildescr@PLT
.Lx176_2:
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 cmp eax, 99
 je xchain173_n2_α
 jmp xchain173_n3_α
 xchain173_n1_β:
 jmp xchain173_n2_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "stk_push_item"
# IR_LIT_STRING
 xchain173_n2_α:
 mov qword ptr [rbp + 4848], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [rbp + 4856], rax
 jmp xchain173_n4_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain173_n3_α:
 mov rax, qword ptr [rbp + 4704]
 mov rdx, qword ptr [rbp + 4712]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 jmp xchain173_n2_α
 xchain173_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4848] -> [zr+4816]
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4816], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4824], rax
  .section .rodata
  .Lrkfn180: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn180]
 lea rsi, [rbp + 4816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 cmp eax, 99
 je xchain173_n6_α
 jmp xchain173_n5_α
 xchain173_n4_β:
 jmp xchain173_n6_α
# IR_ASSIGN gva
 xchain173_n5_α:
 mov rax, qword ptr [rbp + 4800]
 mov rdx, qword ptr [rbp + 4808]
 mov qword ptr [1879052528], rax
 mov qword ptr [1879052536], rdx
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 jmp xchain173_n6_α
# IR_LIT_STRING
 xchain173_n6_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain173_n7_α
.Lx182_0:
 .quad .Lx182_0_s
.Lx182_0_s:
 .string ""
 xchain173_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn184: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn184]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_push_item_ω
 jmp proc_push_item_γ
 xchain173_n7_β:
 jmp proc_push_item_ω
proc_push_item_res:
add rsp, 8
pop rbp
proc_push_item_β:
jmp proc_push_item_ω
proc_push_item_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_push_item_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_Push_item_α
proc_Push_item_α:
#=======================================================================================================================
    .global proc_Push_item_α
    .global proc_Push_item_β
    .global proc_Push_item_γ
    .global proc_Push_item_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_Push_item_α_body:
# IR_LIT_STRING
 xchain185_n0_α:
 mov qword ptr [rbp + 5008], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 5016], rax
 jmp xchain185_n1_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "epsilon . *push_item("
# IR_VAR
 xchain185_n1_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 5040], rax
 mov qword ptr [rbp + 5048], rdx
 jmp xchain185_n2_α
 xchain185_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5008]
 mov rsi, qword ptr [rbp + 5016]
 mov rdx, qword ptr [rbp + 5040]
 mov rcx, qword ptr [rbp + 5048]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 jmp xchain185_n3_α
# IR_LIT_STRING
 xchain185_n3_α:
 mov qword ptr [rbp + 5072], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 5080], rax
 jmp xchain185_n4_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string ")"
 xchain185_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4976]
 mov rsi, qword ptr [rbp + 4984]
 mov rdx, qword ptr [rbp + 5072]
 mov rcx, qword ptr [rbp + 5080]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 jmp xchain185_n5_α
 xchain185_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4944] -> [zr+4912]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 4920], rax
  .section .rodata
  .Lrkfn192: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn192]
 lea rsi, [rbp + 4912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 cmp eax, 99
 je proc_Push_item_γ
 jmp xchain185_n6_α
 xchain185_n5_β:
 jmp proc_Push_item_γ
# IR_ASSIGN gva
 xchain185_n6_α:
 mov rax, qword ptr [rbp + 4896]
 mov rdx, qword ptr [rbp + 4904]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 jmp proc_Push_item_γ
proc_Push_item_res:
add rsp, 8
pop rbp
proc_Push_item_β:
jmp proc_Push_item_ω
proc_Push_item_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_Push_item_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_pop_list_α
proc_pop_list_α:
#=======================================================================================================================
    .global proc_pop_list_α
    .global proc_pop_list_β
    .global proc_pop_list_γ
    .global proc_pop_list_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_pop_list_α_body:
 xchain194_n0_α:
 sub rsp, 64
 mov rax, qword ptr [1879052368]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052376]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052384]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052392]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052400]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052408]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052352]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052360]
 mov qword ptr [rsp + 56], rax
 mov rdi, qword ptr [rip + .Lx196_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx196_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx196_6]
 lea rdx, [rip + .Lx196_7]
 jmp rax
.Lx196_6:
 mov rdi, qword ptr [1879052352]
 mov rsi, qword ptr [1879052360]
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052352], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052360], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052384], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052392], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx196_2
.Lx196_7:
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052352], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052360], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052384], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052392], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx196_2
.Lx196_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx196_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx196_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx196_3]
 lea rdx, [rip + .Lx196_4]
 jmp rax
.Lx196_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx196_2
.Lx196_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx196_2
.Lx196_1:
 call rt_faildescr@PLT
.Lx196_2:
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 cmp eax, 99
 je xchain194_n2_α
 jmp xchain194_n1_α
 xchain194_n0_β:
 jmp xchain194_n2_α
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "stk_pop_into_parent"
# IR_ASSIGN gva
 xchain194_n1_α:
 mov rax, qword ptr [rbp + 5120]
 mov rdx, qword ptr [rbp + 5128]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain194_n2_α
# IR_LIT_STRING
 xchain194_n2_α:
 mov qword ptr [rbp + 5216], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 5224], rax
 jmp xchain194_n3_α
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "dummy"
 xchain194_n3_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5216] -> [zr+5184]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5192], rax
  .section .rodata
  .Lrkfn200: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn200]
 lea rsi, [rbp + 5184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 cmp eax, 99
 je xchain194_n5_α
 jmp xchain194_n4_α
 xchain194_n3_β:
 jmp xchain194_n5_α
# IR_ASSIGN gva
 xchain194_n4_α:
 mov rax, qword ptr [rbp + 5168]
 mov rdx, qword ptr [rbp + 5176]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 5152], rax
 mov qword ptr [rbp + 5160], rdx
 jmp xchain194_n5_α
# IR_LIT_STRING
 xchain194_n5_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain194_n6_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string ""
 xchain194_n6_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn204: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn204]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_pop_list_ω
 jmp proc_pop_list_γ
 xchain194_n6_β:
 jmp proc_pop_list_ω
proc_pop_list_res:
add rsp, 8
pop rbp
proc_pop_list_β:
jmp proc_pop_list_ω
proc_pop_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_pop_list_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_Pop_list_α
proc_Pop_list_α:
#=======================================================================================================================
    .global proc_Pop_list_α
    .global proc_Pop_list_β
    .global proc_Pop_list_γ
    .global proc_Pop_list_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_Pop_list_α_body:
# IR_LIT_INTEGER
 xchain205_n0_α:
 mov qword ptr [rbp + 5344], 6
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 5352], rax
 jmp xchain205_n1_α
.Lx206_0:
 .quad 42
# IR_LIT_STRING
 xchain205_n1_α:
 mov qword ptr [rbp + 5376], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 5384], rax
 jmp xchain205_n2_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "*EXPR$36"
# IR_VAR
 xchain205_n2_α:
 mov rax, qword ptr [1879052928]
 mov rdx, qword ptr [1879052936]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain205_n3_α
 xchain205_n3_α:
# BOX CALL SNO$PBC(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+5344] -> [zr+5280]
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 5288], rax
# marshal arg1 = producer-box slot [zr+5376] -> [zr+5296]
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5296], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5304], rax
# marshal arg2 = producer-box slot [zr+5408] -> [zr+5312]
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [rbp + 5312], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [rbp + 5320], rax
  .section .rodata
  .Lbynamefn167: .string "SNO$PBC"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn167]
 lea rsi, [rbp + 5280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 cmp eax, 99
 je proc_Pop_list_γ
 jmp xchain205_n4_α
 xchain205_n3_β:
 jmp proc_Pop_list_γ
# IR_ASSIGN gva
 xchain205_n4_α:
 mov rax, qword ptr [rbp + 5264]
 mov rdx, qword ptr [rbp + 5272]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 jmp proc_Pop_list_γ
proc_Pop_list_res:
add rsp, 8
pop rbp
proc_Pop_list_β:
jmp proc_Pop_list_ω
proc_Pop_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_Pop_list_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_pop_final_α
proc_pop_final_α:
#=======================================================================================================================
    .global proc_pop_final_α
    .global proc_pop_final_β
    .global proc_pop_final_γ
    .global proc_pop_final_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_pop_final_α_body:
# IR_VAR
 xchain211_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 jmp xchain211_n1_α
 xchain211_n1_α:
 sub rsp, 48
 mov rax, qword ptr [1879052432]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052440]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052368]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052376]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052416]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052424]
 mov qword ptr [rsp + 40], rax
 mov rdi, qword ptr [rip + .Lx214_0]
 mov esi, 2
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx214_5
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [1879052440], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx214_6]
 lea rdx, [rip + .Lx214_7]
 jmp rax
.Lx214_6:
 mov rdi, qword ptr [1879052416]
 mov rsi, qword ptr [1879052424]
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052416], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052424], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052376], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052440], rax
 add rsp, 48
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx214_2
.Lx214_7:
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052416], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052424], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052376], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052440], rax
 add rsp, 48
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx214_2
.Lx214_5:
 add rsp, 48
 mov edi, 0
 mov rsi, qword ptr [rbp + 5504]
 mov rdx, qword ptr [rbp + 5512]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx214_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx214_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx214_3]
 lea rdx, [rip + .Lx214_4]
 jmp rax
.Lx214_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx214_2
.Lx214_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx214_2
.Lx214_1:
 call rt_faildescr@PLT
.Lx214_2:
 mov qword ptr [rbp + 5456], rax
 mov qword ptr [rbp + 5464], rdx
 cmp eax, 99
 je xchain211_n2_α
 jmp xchain211_n3_α
 xchain211_n1_β:
 jmp xchain211_n2_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "stk_pop_final"
# IR_LIT_STRING
 xchain211_n2_α:
 mov qword ptr [rbp + 5600], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 5608], rax
 jmp xchain211_n4_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain211_n3_α:
 mov rax, qword ptr [rbp + 5456]
 mov rdx, qword ptr [rbp + 5464]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain211_n2_α
 xchain211_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5600] -> [zr+5568]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5576], rax
  .section .rodata
  .Lrkfn218: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn218]
 lea rsi, [rbp + 5568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je xchain211_n6_α
 jmp xchain211_n5_α
 xchain211_n4_β:
 jmp xchain211_n6_α
# IR_ASSIGN gva
 xchain211_n5_α:
 mov rax, qword ptr [rbp + 5552]
 mov rdx, qword ptr [rbp + 5560]
 mov qword ptr [1879052592], rax
 mov qword ptr [1879052600], rdx
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 jmp xchain211_n6_α
# IR_LIT_STRING
 xchain211_n6_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain211_n7_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string ""
 xchain211_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn222: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn222]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_pop_final_ω
 jmp proc_pop_final_γ
 xchain211_n7_β:
 jmp proc_pop_final_ω
proc_pop_final_res:
add rsp, 8
pop rbp
proc_pop_final_β:
jmp proc_pop_final_ω
proc_pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_pop_final_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_Pop_final_α
proc_Pop_final_α:
#=======================================================================================================================
    .global proc_Pop_final_α
    .global proc_Pop_final_β
    .global proc_Pop_final_γ
    .global proc_Pop_final_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_Pop_final_α_body:
# IR_LIT_STRING
 xchain223_n0_α:
 mov qword ptr [rbp + 5760], 1
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 5768], rax
 jmp xchain223_n1_α
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "epsilon . *pop_final("
# IR_VAR
 xchain223_n1_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 jmp xchain223_n2_α
 xchain223_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5760]
 mov rsi, qword ptr [rbp + 5768]
 mov rdx, qword ptr [rbp + 5792]
 mov rcx, qword ptr [rbp + 5800]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain223_n3_α
# IR_LIT_STRING
 xchain223_n3_α:
 mov qword ptr [rbp + 5824], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 5832], rax
 jmp xchain223_n4_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string ")"
 xchain223_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5728]
 mov rsi, qword ptr [rbp + 5736]
 mov rdx, qword ptr [rbp + 5824]
 mov rcx, qword ptr [rbp + 5832]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain223_n5_α
 xchain223_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5696] -> [zr+5664]
 mov rax, qword ptr [rbp + 5696]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5704]
 mov qword ptr [rbp + 5672], rax
  .section .rodata
  .Lrkfn230: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn230]
 lea rsi, [rbp + 5664]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 cmp eax, 99
 je proc_Pop_final_γ
 jmp xchain223_n6_α
 xchain223_n5_β:
 jmp proc_Pop_final_γ
# IR_ASSIGN gva
 xchain223_n6_α:
 mov rax, qword ptr [rbp + 5648]
 mov rdx, qword ptr [rbp + 5656]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 jmp proc_Pop_final_γ
proc_Pop_final_res:
add rsp, 8
pop rbp
proc_Pop_final_β:
jmp proc_Pop_final_ω
proc_Pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_Pop_final_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_node_repr_α
proc_node_repr_α:
#=======================================================================================================================
    .global proc_node_repr_α
    .global proc_node_repr_β
    .global proc_node_repr_γ
    .global proc_node_repr_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_node_repr_α_body:
# IR_VAR
 xchain232_n0_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 jmp xchain232_n1_α
 xchain232_n1_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6048] -> [zr+6016]
 mov rax, qword ptr [rbp + 6048]
 mov qword ptr [rbp + 6016], rax
 mov rax, qword ptr [rbp + 6056]
 mov qword ptr [rbp + 6024], rax
  .section .rodata
  .Lrkfn235: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn235]
 lea rsi, [rbp + 6016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 cmp eax, 99
 je xchain232_n2_α
 jmp xchain232_n3_α
 xchain232_n1_β:
 jmp xchain232_n2_α
# IR_VAR
 xchain232_n2_α:
 mov rax, qword ptr [1879052848]
 mov rdx, qword ptr [1879052856]
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 jmp xchain232_n4_α
# IR_KEYWORD_SNOBOL4_read
 xchain232_n3_α:
 mov rdi, qword ptr [rip + .Lx237_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain232_n6_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "LCASE"
# IR_VAR
 xchain232_n4_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 jmp xchain232_n7_α
# IR_VAR
 xchain232_n5_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 jmp xchain232_n8_α
# IR_KEYWORD_SNOBOL4_read
 xchain232_n6_α:
 mov rdi, qword ptr [rip + .Lx240_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 jmp xchain232_n10_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "UCASE"
# IR_SUBSCRIPT x[i] variable
 xchain232_n7_α:
 mov rdi, qword ptr [rbp + 6336]
 mov rsi, qword ptr [rbp + 6344]
 mov rdx, qword ptr [rbp + 6368]
 mov rcx, qword ptr [rbp + 6376]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain232_n5_α
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain232_n11_α
# IR_VAR
 xchain232_n8_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 jmp xchain232_n12_α
# IR_LIT_STRING
 xchain232_n9_α:
 mov qword ptr [rbp + 6656], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 6664], rax
 jmp xchain232_n13_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "('"
 xchain232_n10_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6000] -> [zr+5936]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5944], rax
# marshal arg1 = producer-box slot [zr+6080] -> [zr+5952]
 mov rax, qword ptr [rbp + 6080]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 6088]
 mov qword ptr [rbp + 5960], rax
# marshal arg2 = producer-box slot [zr+6096] -> [zr+5968]
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 5976], rax
  .section .rodata
  .Lrkfn245: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn245]
 lea rsi, [rbp + 5936]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je xchain232_n2_α
 jmp xchain232_n14_α
 xchain232_n10_β:
 jmp xchain232_n2_α
# IR_DEREF variable -> value
 xchain232_n11_α:
 mov rdi, qword ptr [rbp + 6400]
 mov rsi, qword ptr [rbp + 6408]
 call rt_deref@PLT
 cmp eax, 99
 je xchain232_n5_α
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain232_n15_α
# IR_SUBSCRIPT x[i] variable
 xchain232_n12_α:
 mov rdi, qword ptr [rbp + 6464]
 mov rsi, qword ptr [rbp + 6472]
 mov rdx, qword ptr [rbp + 6496]
 mov rcx, qword ptr [rbp + 6504]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain232_n9_α
 mov qword ptr [rbp + 6528], rax
 mov qword ptr [rbp + 6536], rdx
 jmp xchain232_n16_α
# IR_VAR
 xchain232_n13_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 6688], rax
 mov qword ptr [rbp + 6696], rdx
 jmp xchain232_n17_α
# IR_LIT_STRING
 xchain232_n14_α:
 mov qword ptr [rbp + 6112], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 6120], rax
 jmp xchain232_n19_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "STRING"
# IR_ASSIGN gva
 xchain232_n15_α:
 mov rax, qword ptr [rbp + 6432]
 mov rdx, qword ptr [rbp + 6440]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain232_n5_α
# IR_DEREF variable -> value
 xchain232_n16_α:
 mov rdi, qword ptr [rbp + 6528]
 mov rsi, qword ptr [rbp + 6536]
 call rt_deref@PLT
 cmp eax, 99
 je xchain232_n9_α
 mov qword ptr [rbp + 6560], rax
 mov qword ptr [rbp + 6568], rdx
 jmp xchain232_n20_α
 xchain232_n17_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6656]
 mov rsi, qword ptr [rbp + 6664]
 mov rdx, qword ptr [rbp + 6688]
 mov rcx, qword ptr [rbp + 6696]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 jmp xchain232_n21_α
# IR_LIT_INTEGER
 xchain232_n18_α:
 mov qword ptr [rbp + 6768], 6
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 6776], rax
 jmp xchain232_n22_α
.Lx253_0:
 .quad 0
 xchain232_n19_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5920] -> [zr+5872]
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 5872], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 5880], rax
# marshal arg1 = producer-box slot [zr+6112] -> [zr+5888]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 5888], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 5896], rax
  .section .rodata
  .Lrkfn255: .string "IDENT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn255]
 lea rsi, [rbp + 5872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5856], rax
 mov qword ptr [rbp + 5864], rdx
 cmp eax, 99
 je xchain232_n2_α
 jmp xchain232_n23_α
 xchain232_n19_β:
 jmp xchain232_n2_α
# IR_ASSIGN gva
 xchain232_n20_α:
 mov rax, qword ptr [rbp + 6560]
 mov rdx, qword ptr [rbp + 6568]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 jmp xchain232_n9_α
# IR_LIT_STRING
 xchain232_n21_α:
 mov qword ptr [rbp + 6720], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 6728], rax
 jmp xchain232_n24_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "'"
# IR_ASSIGN gva
 xchain232_n22_α:
 mov rax, qword ptr [rbp + 6768]
 mov rdx, qword ptr [rbp + 6776]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 jmp xchain232_n25_α
# IR_LIT_STRING
 xchain232_n23_α:
 mov qword ptr [rbp + 6224], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 6232], rax
 jmp xchain232_n26_α
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "'"
 xchain232_n24_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6624]
 mov rsi, qword ptr [rbp + 6632]
 mov rdx, qword ptr [rbp + 6720]
 mov rcx, qword ptr [rbp + 6728]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain232_n27_α
# IR_VAR
 xchain232_n25_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 jmp xchain232_n28_α
# IR_VAR
 xchain232_n26_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 6256], rax
 mov qword ptr [rbp + 6264], rdx
 jmp xchain232_n30_α
# IR_ASSIGN gva
 xchain232_n27_α:
 mov rax, qword ptr [rbp + 6592]
 mov rdx, qword ptr [rbp + 6600]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 6576], rax
 mov qword ptr [rbp + 6584], rdx
 jmp xchain232_n18_α
# IR_VAR
 xchain232_n28_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain232_n31_α
# IR_VAR
 xchain232_n29_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain232_n32_α
 xchain232_n30_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6224]
 mov rsi, qword ptr [rbp + 6232]
 mov rdx, qword ptr [rbp + 6256]
 mov rcx, qword ptr [rbp + 6264]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 jmp xchain232_n33_α
# IR_COERCE_NUMERIC
 xchain232_n31_α:
 mov eax, dword ptr [rbp + 6976]
 cmp eax, 7
 je .Lx268_1
 cmp eax, 6
 jne .Lx268_0
 mov eax, dword ptr [rbp + 6944]
 cmp eax, 6
 jne .Lx268_0
.Lx268_1:
 mov rax, qword ptr [rbp + 6976]
 mov qword ptr [rbp + 6912], rax
 mov rax, qword ptr [rbp + 6984]
 mov qword ptr [rbp + 6920], rax
 jmp xchain232_n34_α
.Lx268_0:
 lea rdi, [rbp + 6976]
 lea rsi, [rbp + 6944]
 lea rdx, [rbp + 6912]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain232_n34_α
# IR_LIT_STRING
 xchain232_n32_α:
 mov qword ptr [rbp + 7616], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 7624], rax
 jmp xchain232_n35_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string ")"
# IR_LIT_STRING
 xchain232_n33_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain232_n36_α
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "'"
# IR_COERCE_NUMERIC
 xchain232_n34_α:
 mov eax, dword ptr [rbp + 6944]
 cmp eax, 7
 je .Lx272_1
 cmp eax, 6
 jne .Lx272_0
 mov eax, dword ptr [rbp + 6976]
 cmp eax, 6
 jne .Lx272_0
.Lx272_1:
 mov rax, qword ptr [rbp + 6944]
 mov qword ptr [rbp + 6880], rax
 mov rax, qword ptr [rbp + 6952]
 mov qword ptr [rbp + 6888], rax
 jmp xchain232_n37_α
.Lx272_0:
 lea rdi, [rbp + 6944]
 lea rsi, [rbp + 6976]
 lea rdx, [rbp + 6880]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain232_n37_α
 xchain232_n35_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7584]
 mov rsi, qword ptr [rbp + 7592]
 mov rdx, qword ptr [rbp + 7616]
 mov rcx, qword ptr [rbp + 7624]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 jmp xchain232_n38_α
 xchain232_n36_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6192]
 mov rsi, qword ptr [rbp + 6200]
 mov rdx, qword ptr [rbp + 6288]
 mov rcx, qword ptr [rbp + 6296]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain232_n39_α
# IR_CMP_TEST
 xchain232_n37_α:
 lea rdi, [rbp + 6912]
 lea rsi, [rbp + 6880]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain232_n29_α
 mov qword ptr [rbp + 6848], 0
 mov qword ptr [rbp + 6856], 0
 jmp xchain232_n40_α
# IR_ASSIGN gva
 xchain232_n38_α:
 mov rax, qword ptr [rbp + 7552]
 mov rdx, qword ptr [rbp + 7560]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 7536], rax
 mov qword ptr [rbp + 7544], rdx
 jmp proc_node_repr_γ
# IR_ASSIGN gva
 xchain232_n39_α:
 mov rax, qword ptr [rbp + 6160]
 mov rdx, qword ptr [rbp + 6168]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp proc_node_repr_γ
# IR_VAR
 xchain232_n40_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp xchain232_n41_α
# IR_LIT_INTEGER
 xchain232_n41_α:
 mov qword ptr [rbp + 7072], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [rbp + 7080], rax
 jmp xchain232_n42_α
.Lx280_0:
 .quad 1
 xchain232_n42_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 7040]
 cmp eax, 100
 je .Lx281_0
 mov eax, dword ptr [rbp + 7040]
 cmp eax, 6
 jne .Lx281_2
.Lx281_1:
 mov rax, qword ptr [rbp + 7048]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 7008], 6
 mov qword ptr [rbp + 7016], rax
 jmp xchain232_n43_α
.Lx281_0:
 mov rdi, qword ptr [rbp + 7040]
 mov rsi, qword ptr [rbp + 7048]
 mov rdx, qword ptr [rbp + 7072]
 mov rcx, qword ptr [rbp + 7080]
 mov r8d, 0
 lea r9, [rbp + 7008]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain232_n43_α
.Lx281_2:
 mov rdi, qword ptr [rbp + 7040]
 mov rsi, qword ptr [rbp + 7048]
 mov rdx, qword ptr [rbp + 7072]
 mov rcx, qword ptr [rbp + 7080]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain232_n29_α
 mov qword ptr [rbp + 7008], rax
 mov qword ptr [rbp + 7016], rdx
 jmp xchain232_n43_α
 xchain232_n42_β:
 jmp xchain232_n29_α
 xchain232_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6848]
 mov rsi, qword ptr [rbp + 6856]
 mov rdx, qword ptr [rbp + 7008]
 mov rcx, qword ptr [rbp + 7016]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 jmp xchain232_n44_α
# IR_ASSIGN gva
 xchain232_n44_α:
 mov rax, qword ptr [rbp + 6816]
 mov rdx, qword ptr [rbp + 6824]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 jmp xchain232_n45_α
# IR_VAR
 xchain232_n45_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain232_n46_α
# IR_LIT_STRING
 xchain232_n46_α:
 mov qword ptr [rbp + 7216], 1
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [rbp + 7224], rax
 jmp xchain232_n48_α
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string ", "
# IR_VAR
 xchain232_n47_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 jmp xchain232_n49_α
 xchain232_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7184]
 mov rsi, qword ptr [rbp + 7192]
 mov rdx, qword ptr [rbp + 7216]
 mov rcx, qword ptr [rbp + 7224]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 jmp xchain232_n50_α
# IR_ASSIGN gva
 xchain232_n49_α:
 mov rax, qword ptr [rbp + 7504]
 mov rdx, qword ptr [rbp + 7512]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 7488], rax
 mov qword ptr [rbp + 7496], rdx
 jmp xchain232_n25_α
# IR_VAR
 xchain232_n50_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 7296], rax
 mov qword ptr [rbp + 7304], rdx
 jmp xchain232_n51_α
# IR_VAR
 xchain232_n51_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain232_n52_α
# IR_SUBSCRIPT x[i] variable
 xchain232_n52_α:
 mov rdi, qword ptr [rbp + 7296]
 mov rsi, qword ptr [rbp + 7304]
 mov rdx, qword ptr [rbp + 7328]
 mov rcx, qword ptr [rbp + 7336]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain232_n47_α
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain232_n53_α
# IR_DEREF variable -> value
 xchain232_n53_α:
 mov rdi, qword ptr [rbp + 7360]
 mov rsi, qword ptr [rbp + 7368]
 call rt_deref@PLT
 cmp eax, 99
 je xchain232_n47_α
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 jmp xchain232_n54_α
# IR_VAR
 xchain232_n54_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 jmp xchain232_n55_α
# IR_SUBSCRIPT x[i] variable
 xchain232_n55_α:
 mov rdi, qword ptr [rbp + 7392]
 mov rsi, qword ptr [rbp + 7400]
 mov rdx, qword ptr [rbp + 7408]
 mov rcx, qword ptr [rbp + 7416]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain232_n47_α
 mov qword ptr [rbp + 7440], rax
 mov qword ptr [rbp + 7448], rdx
 jmp xchain232_n56_α
# IR_DEREF variable -> value
 xchain232_n56_α:
 mov rdi, qword ptr [rbp + 7440]
 mov rsi, qword ptr [rbp + 7448]
 call rt_deref@PLT
 cmp eax, 99
 je xchain232_n47_α
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 jmp xchain232_n57_α
 xchain232_n57_α:
 sub rsp, 112
 mov rax, qword ptr [1879052640]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052648]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052672]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052680]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052400]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052408]
 mov qword ptr [rsp + 72], rax
 mov rax, qword ptr [1879052704]
 mov qword ptr [rsp + 80], rax
 mov rax, qword ptr [1879052712]
 mov qword ptr [rsp + 88], rax
 mov rax, qword ptr [1879052624]
 mov qword ptr [rsp + 96], rax
 mov rax, qword ptr [1879052632]
 mov qword ptr [rsp + 104], rax
 mov rdi, qword ptr [rip + .Lx297_0]
 mov esi, 6
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx297_5
 mov rax, qword ptr [rbp + 7472]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 7480]
 mov qword ptr [1879052648], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx297_6]
 lea rdx, [rip + .Lx297_7]
 jmp rax
.Lx297_6:
 mov rdi, qword ptr [1879052624]
 mov rsi, qword ptr [1879052632]
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052624], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052632], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 112
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx297_2
.Lx297_7:
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052624], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052632], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 112
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx297_2
.Lx297_5:
 add rsp, 112
 mov edi, 0
 mov rsi, qword ptr [rbp + 7472]
 mov rdx, qword ptr [rbp + 7480]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx297_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx297_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx297_3]
 lea rdx, [rip + .Lx297_4]
 jmp rax
.Lx297_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx297_2
.Lx297_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx297_2
.Lx297_1:
 call rt_faildescr@PLT
.Lx297_2:
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 cmp eax, 99
 je xchain232_n47_α
 jmp xchain232_n58_α
 xchain232_n57_β:
 jmp xchain232_n47_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "node_repr"
 xchain232_n58_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7152]
 mov rsi, qword ptr [rbp + 7160]
 mov rdx, qword ptr [rbp + 7248]
 mov rcx, qword ptr [rbp + 7256]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 jmp xchain232_n59_α
# IR_ASSIGN gva
 xchain232_n59_α:
 mov rax, qword ptr [rbp + 7120]
 mov rdx, qword ptr [rbp + 7128]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 7104], rax
 mov qword ptr [rbp + 7112], rdx
 jmp xchain232_n47_α
proc_node_repr_res:
add rsp, 8
pop rbp
proc_node_repr_β:
jmp proc_node_repr_ω
proc_node_repr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_node_repr_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_pp_node_α
proc_pp_node_α:
#=======================================================================================================================
    .global proc_pp_node_α
    .global proc_pp_node_β
    .global proc_pp_node_γ
    .global proc_pp_node_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_pp_node_α_body:
# IR_VAR
 xchain300_n0_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain300_n1_α
 xchain300_n1_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7840] -> [zr+7808]
 mov rax, qword ptr [rbp + 7840]
 mov qword ptr [rbp + 7808], rax
 mov rax, qword ptr [rbp + 7848]
 mov qword ptr [rbp + 7816], rax
  .section .rodata
  .Lrkfn303: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn303]
 lea rsi, [rbp + 7808]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 cmp eax, 99
 je xchain300_n2_α
 jmp xchain300_n3_α
 xchain300_n1_β:
 jmp xchain300_n2_α
# IR_VAR
 xchain300_n2_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain300_n4_α
# IR_KEYWORD_SNOBOL4_read
 xchain300_n3_α:
 mov rdi, qword ptr [rip + .Lx305_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 jmp xchain300_n6_α
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "LCASE"
 xchain300_n4_α:
 sub rsp, 112
 mov rax, qword ptr [1879052640]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052648]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052672]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052680]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052400]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052408]
 mov qword ptr [rsp + 72], rax
 mov rax, qword ptr [1879052704]
 mov qword ptr [rsp + 80], rax
 mov rax, qword ptr [1879052712]
 mov qword ptr [rsp + 88], rax
 mov rax, qword ptr [1879052624]
 mov qword ptr [rsp + 96], rax
 mov rax, qword ptr [1879052632]
 mov qword ptr [rsp + 104], rax
 mov rdi, qword ptr [rip + .Lx307_0]
 mov esi, 6
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx307_5
 mov rax, qword ptr [rbp + 8400]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 8408]
 mov qword ptr [1879052648], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx307_6]
 lea rdx, [rip + .Lx307_7]
 jmp rax
.Lx307_6:
 mov rdi, qword ptr [1879052624]
 mov rsi, qword ptr [1879052632]
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052624], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052632], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 112
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx307_2
.Lx307_7:
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052624], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052632], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 112
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx307_2
.Lx307_5:
 add rsp, 112
 mov edi, 0
 mov rsi, qword ptr [rbp + 8400]
 mov rdx, qword ptr [rbp + 8408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx307_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx307_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx307_3]
 lea rdx, [rip + .Lx307_4]
 jmp rax
.Lx307_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx307_2
.Lx307_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx307_2
.Lx307_1:
 call rt_faildescr@PLT
.Lx307_2:
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 cmp eax, 99
 je xchain300_n5_α
 jmp xchain300_n7_α
 xchain300_n4_β:
 jmp xchain300_n5_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "node_repr"
# IR_LIT_STRING
 xchain300_n5_α:
 mov qword ptr [rbp + 8512], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 8520], rax
 jmp xchain300_n8_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string " "
# IR_KEYWORD_SNOBOL4_read
 xchain300_n6_α:
 mov rdi, qword ptr [rip + .Lx309_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 7888], rax
 mov qword ptr [rbp + 7896], rdx
 jmp xchain300_n9_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "UCASE"
# IR_ASSIGN gva
 xchain300_n7_α:
 mov rax, qword ptr [rbp + 8352]
 mov rdx, qword ptr [rbp + 8360]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 8336], rax
 mov qword ptr [rbp + 8344], rdx
 jmp xchain300_n5_α
# IR_VAR
 xchain300_n8_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 8544], rax
 mov qword ptr [rbp + 8552], rdx
 jmp xchain300_n10_α
 xchain300_n9_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7792] -> [zr+7728]
 mov rax, qword ptr [rbp + 7792]
 mov qword ptr [rbp + 7728], rax
 mov rax, qword ptr [rbp + 7800]
 mov qword ptr [rbp + 7736], rax
# marshal arg1 = producer-box slot [zr+7872] -> [zr+7744]
 mov rax, qword ptr [rbp + 7872]
 mov qword ptr [rbp + 7744], rax
 mov rax, qword ptr [rbp + 7880]
 mov qword ptr [rbp + 7752], rax
# marshal arg2 = producer-box slot [zr+7888] -> [zr+7760]
 mov rax, qword ptr [rbp + 7888]
 mov qword ptr [rbp + 7760], rax
 mov rax, qword ptr [rbp + 7896]
 mov qword ptr [rbp + 7768], rax
  .section .rodata
  .Lrkfn313: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn313]
 lea rsi, [rbp + 7728]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 cmp eax, 99
 je xchain300_n2_α
 jmp xchain300_n12_α
 xchain300_n9_β:
 jmp xchain300_n2_α
 xchain300_n10_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8512] -> [zr+8464]
 mov rax, qword ptr [rbp + 8512]
 mov qword ptr [rbp + 8464], rax
 mov rax, qword ptr [rbp + 8520]
 mov qword ptr [rbp + 8472], rax
# marshal arg1 = producer-box slot [zr+8544] -> [zr+8480]
 mov rax, qword ptr [rbp + 8544]
 mov qword ptr [rbp + 8480], rax
 mov rax, qword ptr [rbp + 8552]
 mov qword ptr [rbp + 8488], rax
  .section .rodata
  .Lrkfn315: .string "DUPL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn315]
 lea rsi, [rbp + 8464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 cmp eax, 99
 je xchain300_n11_α
 jmp xchain300_n13_α
 xchain300_n10_β:
 jmp xchain300_n11_α
# IR_LIT_INTEGER
 xchain300_n11_α:
 mov qword ptr [rbp + 8816], 6
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 8824], rax
 jmp xchain300_n14_α
.Lx316_0:
 .quad 80
# IR_LIT_STRING
 xchain300_n12_α:
 mov qword ptr [rbp + 7904], 1
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [rbp + 7912], rax
 jmp xchain300_n15_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "STRING"
# IR_ASSIGN gva
 xchain300_n13_α:
 mov rax, qword ptr [rbp + 8448]
 mov rdx, qword ptr [rbp + 8456]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 8432], rax
 mov qword ptr [rbp + 8440], rdx
 jmp xchain300_n11_α
# IR_VAR
 xchain300_n14_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 jmp xchain300_n16_α
 xchain300_n15_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7712] -> [zr+7664]
 mov rax, qword ptr [rbp + 7712]
 mov qword ptr [rbp + 7664], rax
 mov rax, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 7672], rax
# marshal arg1 = producer-box slot [zr+7904] -> [zr+7680]
 mov rax, qword ptr [rbp + 7904]
 mov qword ptr [rbp + 7680], rax
 mov rax, qword ptr [rbp + 7912]
 mov qword ptr [rbp + 7688], rax
  .section .rodata
  .Lrkfn321: .string "IDENT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn321]
 lea rsi, [rbp + 7664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 cmp eax, 99
 je xchain300_n2_α
 jmp xchain300_n18_α
 xchain300_n15_β:
 jmp xchain300_n2_α
# IR_VAR
 xchain300_n16_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 8784], rax
 mov qword ptr [rbp + 8792], rdx
 jmp xchain300_n19_α
# IR_VAR
 xchain300_n17_α:
 mov rax, qword ptr [1879052848]
 mov rdx, qword ptr [1879052856]
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain300_n20_α
# IR_LIT_STRING
 xchain300_n18_α:
 mov qword ptr [rbp + 8144], 1
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 8152], rax
 jmp xchain300_n22_α
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string " "
 xchain300_n19_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8784] -> [zr+8752]
 mov rax, qword ptr [rbp + 8784]
 mov qword ptr [rbp + 8752], rax
 mov rax, qword ptr [rbp + 8792]
 mov qword ptr [rbp + 8760], rax
  .section .rodata
  .Lrkfn326: .string "SIZE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn326]
 lea rsi, [rbp + 8752]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8736], rax
 mov qword ptr [rbp + 8744], rdx
 cmp eax, 99
 je xchain300_n17_α
 jmp xchain300_n23_α
 xchain300_n19_β:
 jmp xchain300_n17_α
# IR_VAR
 xchain300_n20_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 jmp xchain300_n24_α
# IR_VAR
 xchain300_n21_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 9168], rax
 mov qword ptr [rbp + 9176], rdx
 jmp xchain300_n25_α
# IR_VAR
 xchain300_n22_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 8176], rax
 mov qword ptr [rbp + 8184], rdx
 jmp xchain300_n27_α
 xchain300_n23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 8704]
 cmp eax, 100
 je .Lx330_0
 mov eax, dword ptr [rbp + 8736]
 cmp eax, 100
 je .Lx330_0
 mov eax, dword ptr [rbp + 8704]
 cmp eax, 6
 jne .Lx330_2
 mov eax, dword ptr [rbp + 8736]
 cmp eax, 6
 jne .Lx330_2
.Lx330_1:
 mov rax, qword ptr [rbp + 8712]
 mov rcx, qword ptr [rbp + 8744]
 add rax, rcx
 mov qword ptr [rbp + 8672], 6
 mov qword ptr [rbp + 8680], rax
 jmp xchain300_n28_α
.Lx330_0:
 mov rdi, qword ptr [rbp + 8704]
 mov rsi, qword ptr [rbp + 8712]
 mov rdx, qword ptr [rbp + 8736]
 mov rcx, qword ptr [rbp + 8744]
 mov r8d, 0
 lea r9, [rbp + 8672]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain300_n28_α
.Lx330_2:
 mov rdi, qword ptr [rbp + 8704]
 mov rsi, qword ptr [rbp + 8712]
 mov rdx, qword ptr [rbp + 8736]
 mov rcx, qword ptr [rbp + 8744]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain300_n17_α
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 jmp xchain300_n28_α
 xchain300_n23_β:
 jmp xchain300_n17_α
# IR_SUBSCRIPT x[i] variable
 xchain300_n24_α:
 mov rdi, qword ptr [rbp + 9040]
 mov rsi, qword ptr [rbp + 9048]
 mov rdx, qword ptr [rbp + 9072]
 mov rcx, qword ptr [rbp + 9080]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain300_n21_α
 mov qword ptr [rbp + 9104], rax
 mov qword ptr [rbp + 9112], rdx
 jmp xchain300_n29_α
# IR_VAR
 xchain300_n25_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain300_n30_α
# IR_VAR
 xchain300_n26_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 9424], rax
 mov qword ptr [rbp + 9432], rdx
 jmp xchain300_n31_α
 xchain300_n27_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8144] -> [zr+8096]
 mov rax, qword ptr [rbp + 8144]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8152]
 mov qword ptr [rbp + 8104], rax
# marshal arg1 = producer-box slot [zr+8176] -> [zr+8112]
 mov rax, qword ptr [rbp + 8176]
 mov qword ptr [rbp + 8112], rax
 mov rax, qword ptr [rbp + 8184]
 mov qword ptr [rbp + 8120], rax
  .section .rodata
  .Lrkfn335: .string "DUPL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn335]
 lea rsi, [rbp + 8096]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp xchain300_n33_α
 xchain300_n27_β:
 jmp proc_pp_node_γ
# IR_COERCE_NUMERIC
 xchain300_n28_α:
 mov eax, dword ptr [rbp + 8816]
 cmp eax, 7
 je .Lx337_1
 cmp eax, 6
 jne .Lx337_0
 mov eax, dword ptr [rbp + 8672]
 cmp eax, 6
 jne .Lx337_0
.Lx337_1:
 mov rax, qword ptr [rbp + 8816]
 mov qword ptr [rbp + 8640], rax
 mov rax, qword ptr [rbp + 8824]
 mov qword ptr [rbp + 8648], rax
 jmp xchain300_n34_α
.Lx337_0:
 lea rdi, [rbp + 8816]
 lea rsi, [rbp + 8672]
 lea rdx, [rbp + 8640]
 mov rcx, 111
 call rt_coerce_num2_d@PLT
 jmp xchain300_n34_α
# IR_DEREF variable -> value
 xchain300_n29_α:
 mov rdi, qword ptr [rbp + 9104]
 mov rsi, qword ptr [rbp + 9112]
 call rt_deref@PLT
 cmp eax, 99
 je xchain300_n21_α
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 jmp xchain300_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain300_n30_α:
 mov rdi, qword ptr [rbp + 9168]
 mov rsi, qword ptr [rbp + 9176]
 mov rdx, qword ptr [rbp + 9200]
 mov rcx, qword ptr [rbp + 9208]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain300_n26_α
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 jmp xchain300_n36_α
# IR_LIT_STRING
 xchain300_n31_α:
 mov qword ptr [rbp + 9456], 1
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [rbp + 9464], rax
 jmp xchain300_n37_α
.Lx340_0:
 .quad .Lx340_0_s
.Lx340_0_s:
 .string "( "
# IR_LIT_INTEGER
 xchain300_n32_α:
 mov qword ptr [rbp + 9600], 6
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 9608], rax
 jmp xchain300_n38_α
.Lx341_0:
 .quad 0
# IR_LIT_STRING
 xchain300_n33_α:
 mov qword ptr [rbp + 8208], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [rbp + 8216], rax
 jmp xchain300_n39_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "'"
# IR_COERCE_NUMERIC
 xchain300_n34_α:
 mov eax, dword ptr [rbp + 8672]
 cmp eax, 7
 je .Lx344_1
 cmp eax, 6
 jne .Lx344_0
 mov eax, dword ptr [rbp + 8816]
 cmp eax, 6
 jne .Lx344_0
.Lx344_1:
 mov rax, qword ptr [rbp + 8672]
 mov qword ptr [rbp + 8608], rax
 mov rax, qword ptr [rbp + 8680]
 mov qword ptr [rbp + 8616], rax
 jmp xchain300_n40_α
.Lx344_0:
 lea rdi, [rbp + 8672]
 lea rsi, [rbp + 8816]
 lea rdx, [rbp + 8608]
 mov rcx, 112
 call rt_coerce_num2_d@PLT
 jmp xchain300_n40_α
# IR_ASSIGN gva
 xchain300_n35_α:
 mov rax, qword ptr [rbp + 9136]
 mov rdx, qword ptr [rbp + 9144]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 9024], rax
 mov qword ptr [rbp + 9032], rdx
 jmp xchain300_n21_α
# IR_DEREF variable -> value
 xchain300_n36_α:
 mov rdi, qword ptr [rbp + 9232]
 mov rsi, qword ptr [rbp + 9240]
 call rt_deref@PLT
 cmp eax, 99
 je xchain300_n26_α
 mov qword ptr [rbp + 9264], rax
 mov qword ptr [rbp + 9272], rdx
 jmp xchain300_n41_α
 xchain300_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9424]
 mov rsi, qword ptr [rbp + 9432]
 mov rdx, qword ptr [rbp + 9456]
 mov rcx, qword ptr [rbp + 9464]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 jmp xchain300_n42_α
# IR_ASSIGN gva
 xchain300_n38_α:
 mov rax, qword ptr [rbp + 9600]
 mov rdx, qword ptr [rbp + 9608]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 9584], rax
 mov qword ptr [rbp + 9592], rdx
 jmp xchain300_n43_α
 xchain300_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8080]
 mov rsi, qword ptr [rbp + 8088]
 mov rdx, qword ptr [rbp + 8208]
 mov rcx, qword ptr [rbp + 8216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 jmp xchain300_n44_α
# IR_CMP_TEST
 xchain300_n40_α:
 lea rdi, [rbp + 8640]
 lea rsi, [rbp + 8608]
 call rt_cmp_d@PLT
 test eax, eax
 jle xchain300_n17_α
 mov qword ptr [rbp + 8576], 0
 mov qword ptr [rbp + 8584], 0
 jmp xchain300_n45_α
# IR_ASSIGN gva
 xchain300_n41_α:
 mov rax, qword ptr [rbp + 9264]
 mov rdx, qword ptr [rbp + 9272]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 9152], rax
 mov qword ptr [rbp + 9160], rdx
 jmp xchain300_n26_α
# IR_LIT_STRING
 xchain300_n42_α:
 mov qword ptr [rbp + 9488], 1
 mov rax, qword ptr [rip + .Lx353_0]
 mov qword ptr [rbp + 9496], rax
 jmp xchain300_n46_α
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
 .string "'"
# IR_VAR
 xchain300_n43_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 jmp xchain300_n47_α
# IR_VAR
 xchain300_n44_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain300_n48_α
# IR_VAR
 xchain300_n45_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 8928], rax
 mov qword ptr [rbp + 8936], rdx
 jmp xchain300_n49_α
 xchain300_n46_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9392]
 mov rsi, qword ptr [rbp + 9400]
 mov rdx, qword ptr [rbp + 9488]
 mov rcx, qword ptr [rbp + 9496]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9360], rax
 mov qword ptr [rbp + 9368], rdx
 jmp xchain300_n50_α
# IR_VAR
 xchain300_n47_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain300_n51_α
 xchain300_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8048]
 mov rsi, qword ptr [rbp + 8056]
 mov rdx, qword ptr [rbp + 8240]
 mov rcx, qword ptr [rbp + 8248]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8016], rax
 mov qword ptr [rbp + 8024], rdx
 jmp xchain300_n52_α
# IR_VAR
 xchain300_n49_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 jmp xchain300_n53_α
# IR_VAR
 xchain300_n50_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 jmp xchain300_n54_α
# IR_COERCE_NUMERIC
 xchain300_n51_α:
 mov eax, dword ptr [rbp + 9808]
 cmp eax, 7
 je .Lx363_1
 cmp eax, 6
 jne .Lx363_0
 mov eax, dword ptr [rbp + 9776]
 cmp eax, 6
 jne .Lx363_0
.Lx363_1:
 mov rax, qword ptr [rbp + 9808]
 mov qword ptr [rbp + 9744], rax
 mov rax, qword ptr [rbp + 9816]
 mov qword ptr [rbp + 9752], rax
 jmp xchain300_n55_α
.Lx363_0:
 lea rdi, [rbp + 9808]
 lea rsi, [rbp + 9776]
 lea rdx, [rbp + 9744]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain300_n55_α
# IR_LIT_STRING
 xchain300_n52_α:
 mov qword ptr [rbp + 8272], 1
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [rbp + 8280], rax
 jmp xchain300_n56_α
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "'"
 xchain300_n53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8928]
 mov rsi, qword ptr [rbp + 8936]
 mov rdx, qword ptr [rbp + 8960]
 mov rcx, qword ptr [rbp + 8968]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8896], rax
 mov qword ptr [rbp + 8904], rdx
 jmp xchain300_n57_α
 xchain300_n54_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9360]
 mov rsi, qword ptr [rbp + 9368]
 mov rdx, qword ptr [rbp + 9520]
 mov rcx, qword ptr [rbp + 9528]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9328], rax
 mov qword ptr [rbp + 9336], rdx
 jmp xchain300_n58_α
# IR_COERCE_NUMERIC
 xchain300_n55_α:
 mov eax, dword ptr [rbp + 9776]
 cmp eax, 7
 je .Lx368_1
 cmp eax, 6
 jne .Lx368_0
 mov eax, dword ptr [rbp + 9808]
 cmp eax, 6
 jne .Lx368_0
.Lx368_1:
 mov rax, qword ptr [rbp + 9776]
 mov qword ptr [rbp + 9712], rax
 mov rax, qword ptr [rbp + 9784]
 mov qword ptr [rbp + 9720], rax
 jmp xchain300_n59_α
.Lx368_0:
 lea rdi, [rbp + 9776]
 lea rsi, [rbp + 9808]
 lea rdx, [rbp + 9712]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain300_n59_α
 xchain300_n56_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8016]
 mov rsi, qword ptr [rbp + 8024]
 mov rdx, qword ptr [rbp + 8272]
 mov rcx, qword ptr [rbp + 8280]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7984], rax
 mov qword ptr [rbp + 7992], rdx
 jmp xchain300_n60_α
# IR_VAR
 xchain300_n57_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 8992], rax
 mov qword ptr [rbp + 9000], rdx
 jmp xchain300_n61_α
# IR_LIT_STRING
 xchain300_n58_α:
 mov qword ptr [rbp + 9552], 1
 mov rax, qword ptr [rip + .Lx371_0]
 mov qword ptr [rbp + 9560], rax
 jmp xchain300_n62_α
.Lx371_0:
 .quad .Lx371_0_s
.Lx371_0_s:
 .string "',"
# IR_CMP_TEST
 xchain300_n59_α:
 lea rdi, [rbp + 9744]
 lea rsi, [rbp + 9712]
 call rt_cmp_d@PLT
 test eax, eax
 jns proc_pp_node_γ
 mov qword ptr [rbp + 9680], 0
 mov qword ptr [rbp + 9688], 0
 jmp xchain300_n63_α
# IR_VAR
 xchain300_n60_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 8304], rax
 mov qword ptr [rbp + 8312], rdx
 jmp xchain300_n64_α
 xchain300_n61_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8896]
 mov rsi, qword ptr [rbp + 8904]
 mov rdx, qword ptr [rbp + 8992]
 mov rcx, qword ptr [rbp + 9000]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8864], rax
 mov qword ptr [rbp + 8872], rdx
 jmp xchain300_n65_α
 xchain300_n62_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9328]
 mov rsi, qword ptr [rbp + 9336]
 mov rdx, qword ptr [rbp + 9552]
 mov rcx, qword ptr [rbp + 9560]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 jmp xchain300_n66_α
# IR_VAR
 xchain300_n63_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 jmp xchain300_n67_α
 xchain300_n64_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7984]
 mov rsi, qword ptr [rbp + 7992]
 mov rdx, qword ptr [rbp + 8304]
 mov rcx, qword ptr [rbp + 8312]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 jmp xchain300_n68_α
# IR_ASSIGN global
 xchain300_n65_α:
 mov rsi, qword ptr [rbp + 8864]
 mov rdx, qword ptr [rbp + 8872]
 mov rdi, qword ptr [rip + .Lx379_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
 jmp proc_pp_node_γ
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "OUTPUT"
# IR_ASSIGN global
 xchain300_n66_α:
 mov rsi, qword ptr [rbp + 9296]
 mov rdx, qword ptr [rbp + 9304]
 mov rdi, qword ptr [rip + .Lx380_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp xchain300_n32_α
.Lx380_0:
 .quad .Lx380_0_s
.Lx380_0_s:
 .string "OUTPUT"
# IR_LIT_INTEGER
 xchain300_n67_α:
 mov qword ptr [rbp + 9904], 6
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [rbp + 9912], rax
 jmp xchain300_n69_α
.Lx381_0:
 .quad 1
# IR_ASSIGN global
 xchain300_n68_α:
 mov rsi, qword ptr [rbp + 7952]
 mov rdx, qword ptr [rbp + 7960]
 mov rdi, qword ptr [rip + .Lx382_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 jmp proc_pp_node_γ
.Lx382_0:
 .quad .Lx382_0_s
.Lx382_0_s:
 .string "OUTPUT"
 xchain300_n69_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 9872]
 cmp eax, 100
 je .Lx383_0
 mov eax, dword ptr [rbp + 9872]
 cmp eax, 6
 jne .Lx383_2
.Lx383_1:
 mov rax, qword ptr [rbp + 9880]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 9840], 6
 mov qword ptr [rbp + 9848], rax
 jmp xchain300_n70_α
.Lx383_0:
 mov rdi, qword ptr [rbp + 9872]
 mov rsi, qword ptr [rbp + 9880]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 lea r9, [rbp + 9840]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain300_n70_α
.Lx383_2:
 mov rdi, qword ptr [rbp + 9872]
 mov rsi, qword ptr [rbp + 9880]
 mov rdx, qword ptr [rbp + 9904]
 mov rcx, qword ptr [rbp + 9912]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 9840], rax
 mov qword ptr [rbp + 9848], rdx
 jmp xchain300_n70_α
 xchain300_n69_β:
 jmp proc_pp_node_γ
 xchain300_n70_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9680]
 mov rsi, qword ptr [rbp + 9688]
 mov rdx, qword ptr [rbp + 9840]
 mov rcx, qword ptr [rbp + 9848]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9648], rax
 mov qword ptr [rbp + 9656], rdx
 jmp xchain300_n71_α
# IR_ASSIGN gva
 xchain300_n71_α:
 mov rax, qword ptr [rbp + 9648]
 mov rdx, qword ptr [rbp + 9656]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 9632], rax
 mov qword ptr [rbp + 9640], rdx
 jmp xchain300_n72_α
# IR_VAR
 xchain300_n72_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10112], rax
 mov qword ptr [rbp + 10120], rdx
 jmp xchain300_n73_α
# IR_VAR
 xchain300_n73_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 10080], rax
 mov qword ptr [rbp + 10088], rdx
 jmp xchain300_n75_α
# IR_VAR
 xchain300_n74_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 10704], rax
 mov qword ptr [rbp + 10712], rdx
 jmp xchain300_n76_α
# IR_COERCE_NUMERIC
 xchain300_n75_α:
 mov eax, dword ptr [rbp + 10112]
 cmp eax, 7
 je .Lx390_1
 cmp eax, 6
 jne .Lx390_0
 mov eax, dword ptr [rbp + 10080]
 cmp eax, 6
 jne .Lx390_0
.Lx390_1:
 mov rax, qword ptr [rbp + 10112]
 mov qword ptr [rbp + 10048], rax
 mov rax, qword ptr [rbp + 10120]
 mov qword ptr [rbp + 10056], rax
 jmp xchain300_n77_α
.Lx390_0:
 lea rdi, [rbp + 10112]
 lea rsi, [rbp + 10080]
 lea rdx, [rbp + 10048]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain300_n77_α
# IR_VAR
 xchain300_n76_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain300_n78_α
# IR_COERCE_NUMERIC
 xchain300_n77_α:
 mov eax, dword ptr [rbp + 10080]
 cmp eax, 7
 je .Lx393_1
 cmp eax, 6
 jne .Lx393_0
 mov eax, dword ptr [rbp + 10112]
 cmp eax, 6
 jne .Lx393_0
.Lx393_1:
 mov rax, qword ptr [rbp + 10080]
 mov qword ptr [rbp + 10016], rax
 mov rax, qword ptr [rbp + 10088]
 mov qword ptr [rbp + 10024], rax
 jmp xchain300_n79_α
.Lx393_0:
 lea rdi, [rbp + 10080]
 lea rsi, [rbp + 10112]
 lea rdx, [rbp + 10016]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain300_n79_α
# IR_SUBSCRIPT x[i] variable
 xchain300_n78_α:
 mov rdi, qword ptr [rbp + 10704]
 mov rsi, qword ptr [rbp + 10712]
 mov rdx, qword ptr [rbp + 10736]
 mov rcx, qword ptr [rbp + 10744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10768], rax
 mov qword ptr [rbp + 10776], rdx
 jmp xchain300_n80_α
# IR_CMP_TEST
 xchain300_n79_α:
 lea rdi, [rbp + 10048]
 lea rsi, [rbp + 10016]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain300_n74_α
 mov qword ptr [rbp + 9984], 0
 mov qword ptr [rbp + 9992], 0
 jmp xchain300_n81_α
# IR_DEREF variable -> value
 xchain300_n80_α:
 mov rdi, qword ptr [rbp + 10768]
 mov rsi, qword ptr [rbp + 10776]
 call rt_deref@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10800], rax
 mov qword ptr [rbp + 10808], rdx
 jmp xchain300_n82_α
# IR_VAR
 xchain300_n81_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10144], rax
 mov qword ptr [rbp + 10152], rdx
 jmp xchain300_n83_α
# IR_VAR
 xchain300_n82_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10816], rax
 mov qword ptr [rbp + 10824], rdx
 jmp xchain300_n84_α
 xchain300_n83_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9984]
 mov rsi, qword ptr [rbp + 9992]
 mov rdx, qword ptr [rbp + 10144]
 mov rcx, qword ptr [rbp + 10152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9952], rax
 mov qword ptr [rbp + 9960], rdx
 jmp xchain300_n85_α
# IR_SUBSCRIPT x[i] variable
 xchain300_n84_α:
 mov rdi, qword ptr [rbp + 10800]
 mov rsi, qword ptr [rbp + 10808]
 mov rdx, qword ptr [rbp + 10816]
 mov rcx, qword ptr [rbp + 10824]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10848], rax
 mov qword ptr [rbp + 10856], rdx
 jmp xchain300_n86_α
# IR_ASSIGN gva
 xchain300_n85_α:
 mov rax, qword ptr [rbp + 9952]
 mov rdx, qword ptr [rbp + 9960]
 mov qword ptr [1879052784], rax
 mov qword ptr [1879052792], rdx
 mov qword ptr [rbp + 9936], rax
 mov qword ptr [rbp + 9944], rdx
 jmp xchain300_n87_α
# IR_DEREF variable -> value
 xchain300_n86_α:
 mov rdi, qword ptr [rbp + 10848]
 mov rsi, qword ptr [rbp + 10856]
 call rt_deref@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10880], rax
 mov qword ptr [rbp + 10888], rdx
 jmp xchain300_n88_α
# IR_VAR
 xchain300_n87_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 10256], rax
 mov qword ptr [rbp + 10264], rdx
 jmp xchain300_n89_α
# IR_VAR
 xchain300_n88_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 10928], rax
 mov qword ptr [rbp + 10936], rdx
 jmp xchain300_n91_α
# IR_VAR
 xchain300_n89_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 10288], rax
 mov qword ptr [rbp + 10296], rdx
 jmp xchain300_n92_α
# IR_VAR
 xchain300_n90_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10592], rax
 mov qword ptr [rbp + 10600], rdx
 jmp xchain300_n93_α
# IR_LIT_INTEGER
 xchain300_n91_α:
 mov qword ptr [rbp + 10960], 6
 mov rax, qword ptr [rip + .Lx408_0]
 mov qword ptr [rbp + 10968], rax
 jmp xchain300_n94_α
.Lx408_0:
 .quad 2
# IR_SUBSCRIPT x[i] variable
 xchain300_n92_α:
 mov rdi, qword ptr [rbp + 10256]
 mov rsi, qword ptr [rbp + 10264]
 mov rdx, qword ptr [rbp + 10288]
 mov rcx, qword ptr [rbp + 10296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain300_n90_α
 mov qword ptr [rbp + 10320], rax
 mov qword ptr [rbp + 10328], rdx
 jmp xchain300_n95_α
# IR_ASSIGN gva
 xchain300_n93_α:
 mov rax, qword ptr [rbp + 10592]
 mov rdx, qword ptr [rbp + 10600]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 10576], rax
 mov qword ptr [rbp + 10584], rdx
 jmp xchain300_n43_α
 xchain300_n94_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10928]
 cmp eax, 100
 je .Lx411_0
 mov eax, dword ptr [rbp + 10928]
 cmp eax, 6
 jne .Lx411_2
.Lx411_1:
 mov rax, qword ptr [rbp + 10936]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 10896], 6
 mov qword ptr [rbp + 10904], rax
 jmp xchain300_n96_α
.Lx411_0:
 mov rdi, qword ptr [rbp + 10928]
 mov rsi, qword ptr [rbp + 10936]
 mov rdx, qword ptr [rbp + 10960]
 mov rcx, qword ptr [rbp + 10968]
 mov r8d, 0
 lea r9, [rbp + 10896]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain300_n96_α
.Lx411_2:
 mov rdi, qword ptr [rbp + 10928]
 mov rsi, qword ptr [rbp + 10936]
 mov rdx, qword ptr [rbp + 10960]
 mov rcx, qword ptr [rbp + 10968]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10896], rax
 mov qword ptr [rbp + 10904], rdx
 jmp xchain300_n96_α
 xchain300_n94_β:
 jmp proc_pp_node_γ
# IR_DEREF variable -> value
 xchain300_n95_α:
 mov rdi, qword ptr [rbp + 10320]
 mov rsi, qword ptr [rbp + 10328]
 call rt_deref@PLT
 cmp eax, 99
 je xchain300_n90_α
 mov qword ptr [rbp + 10352], rax
 mov qword ptr [rbp + 10360], rdx
 jmp xchain300_n97_α
# IR_LIT_STRING
 xchain300_n96_α:
 mov qword ptr [rbp + 11024], 1
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [rbp + 11032], rax
 jmp xchain300_n98_α
.Lx413_0:
 .quad .Lx413_0_s
.Lx413_0_s:
 .string ")"
# IR_VAR
 xchain300_n97_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10368], rax
 mov qword ptr [rbp + 10376], rdx
 jmp xchain300_n99_α
# IR_VAR
 xchain300_n98_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 11056], rax
 mov qword ptr [rbp + 11064], rdx
 jmp xchain300_n100_α
# IR_SUBSCRIPT x[i] variable
 xchain300_n99_α:
 mov rdi, qword ptr [rbp + 10352]
 mov rsi, qword ptr [rbp + 10360]
 mov rdx, qword ptr [rbp + 10368]
 mov rcx, qword ptr [rbp + 10376]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain300_n90_α
 mov qword ptr [rbp + 10400], rax
 mov qword ptr [rbp + 10408], rdx
 jmp xchain300_n101_α
 xchain300_n100_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11024]
 mov rsi, qword ptr [rbp + 11032]
 mov rdx, qword ptr [rbp + 11056]
 mov rcx, qword ptr [rbp + 11064]
 call str_concat_d@PLT
 mov qword ptr [rbp + 10992], rax
 mov qword ptr [rbp + 11000], rdx
 jmp xchain300_n102_α
# IR_DEREF variable -> value
 xchain300_n101_α:
 mov rdi, qword ptr [rbp + 10400]
 mov rsi, qword ptr [rbp + 10408]
 call rt_deref@PLT
 cmp eax, 99
 je xchain300_n90_α
 mov qword ptr [rbp + 10432], rax
 mov qword ptr [rbp + 10440], rdx
 jmp xchain300_n103_α
 xchain300_n102_α:
 sub rsp, 160
 mov rax, qword ptr [1879052640]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052648]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052736]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052744]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052752]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052760]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052768]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052776]
 mov qword ptr [rsp + 72], rax
 mov rax, qword ptr [1879052704]
 mov qword ptr [rsp + 80], rax
 mov rax, qword ptr [1879052712]
 mov qword ptr [rsp + 88], rax
 mov rax, qword ptr [1879052400]
 mov qword ptr [rsp + 96], rax
 mov rax, qword ptr [1879052408]
 mov qword ptr [rsp + 104], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 112], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 120], rax
 mov rax, qword ptr [1879052784]
 mov qword ptr [rsp + 128], rax
 mov rax, qword ptr [1879052792]
 mov qword ptr [rsp + 136], rax
 mov rax, qword ptr [1879052720]
 mov qword ptr [rsp + 144], rax
 mov rax, qword ptr [1879052728]
 mov qword ptr [rsp + 152], rax
 mov rdi, qword ptr [rip + .Lx420_0]
 mov esi, 9
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx420_5
 mov rax, qword ptr [rbp + 10880]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 10888]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rbp + 10896]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 10904]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 10992]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 11000]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx420_6]
 lea rdx, [rip + .Lx420_7]
 jmp rax
.Lx420_6:
 mov rdi, qword ptr [1879052720]
 mov rsi, qword ptr [1879052728]
 mov rax, qword ptr [rsp + 144]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 152]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 128]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 136]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 160
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx420_2
.Lx420_7:
 mov rax, qword ptr [rsp + 144]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 152]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 128]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 136]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 160
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx420_2
.Lx420_5:
 add rsp, 160
 mov edi, 0
 mov rsi, qword ptr [rbp + 10880]
 mov rdx, qword ptr [rbp + 10888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10896]
 mov rdx, qword ptr [rbp + 10904]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 10992]
 mov rdx, qword ptr [rbp + 11000]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx420_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx420_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx420_3]
 lea rdx, [rip + .Lx420_4]
 jmp rax
.Lx420_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx420_2
.Lx420_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx420_2
.Lx420_1:
 call rt_faildescr@PLT
.Lx420_2:
 mov qword ptr [rbp + 10624], rax
 mov qword ptr [rbp + 10632], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp proc_pp_node_γ
 xchain300_n102_β:
 jmp proc_pp_node_γ
.Lx420_0:
 .quad .Lx420_0_s
.Lx420_0_s:
 .string "pp_node"
# IR_VAR
 xchain300_n103_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 10480], rax
 mov qword ptr [rbp + 10488], rdx
 jmp xchain300_n104_α
# IR_LIT_INTEGER
 xchain300_n104_α:
 mov qword ptr [rbp + 10512], 6
 mov rax, qword ptr [rip + .Lx422_0]
 mov qword ptr [rbp + 10520], rax
 jmp xchain300_n105_α
.Lx422_0:
 .quad 2
 xchain300_n105_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10480]
 cmp eax, 100
 je .Lx423_0
 mov eax, dword ptr [rbp + 10480]
 cmp eax, 6
 jne .Lx423_2
.Lx423_1:
 mov rax, qword ptr [rbp + 10488]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 10448], 6
 mov qword ptr [rbp + 10456], rax
 jmp xchain300_n106_α
.Lx423_0:
 mov rdi, qword ptr [rbp + 10480]
 mov rsi, qword ptr [rbp + 10488]
 mov rdx, qword ptr [rbp + 10512]
 mov rcx, qword ptr [rbp + 10520]
 mov r8d, 0
 lea r9, [rbp + 10448]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain300_n106_α
.Lx423_2:
 mov rdi, qword ptr [rbp + 10480]
 mov rsi, qword ptr [rbp + 10488]
 mov rdx, qword ptr [rbp + 10512]
 mov rcx, qword ptr [rbp + 10520]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain300_n90_α
 mov qword ptr [rbp + 10448], rax
 mov qword ptr [rbp + 10456], rdx
 jmp xchain300_n106_α
 xchain300_n105_β:
 jmp xchain300_n90_α
# IR_LIT_STRING
 xchain300_n106_α:
 mov qword ptr [rbp + 10544], 1
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [rbp + 10552], rax
 jmp xchain300_n107_α
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string ","
 xchain300_n107_α:
 sub rsp, 160
 mov rax, qword ptr [1879052640]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052648]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052736]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052744]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052752]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052760]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052768]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052776]
 mov qword ptr [rsp + 72], rax
 mov rax, qword ptr [1879052704]
 mov qword ptr [rsp + 80], rax
 mov rax, qword ptr [1879052712]
 mov qword ptr [rsp + 88], rax
 mov rax, qword ptr [1879052400]
 mov qword ptr [rsp + 96], rax
 mov rax, qword ptr [1879052408]
 mov qword ptr [rsp + 104], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 112], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 120], rax
 mov rax, qword ptr [1879052784]
 mov qword ptr [rsp + 128], rax
 mov rax, qword ptr [1879052792]
 mov qword ptr [rsp + 136], rax
 mov rax, qword ptr [1879052720]
 mov qword ptr [rsp + 144], rax
 mov rax, qword ptr [1879052728]
 mov qword ptr [rsp + 152], rax
 mov rdi, qword ptr [rip + .Lx426_0]
 mov esi, 9
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx426_5
 mov rax, qword ptr [rbp + 10432]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 10440]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rbp + 10448]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 10456]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 10544]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 10552]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx426_6]
 lea rdx, [rip + .Lx426_7]
 jmp rax
.Lx426_6:
 mov rdi, qword ptr [1879052720]
 mov rsi, qword ptr [1879052728]
 mov rax, qword ptr [rsp + 144]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 152]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 128]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 136]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 160
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx426_2
.Lx426_7:
 mov rax, qword ptr [rsp + 144]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 152]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 128]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 136]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 160
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx426_2
.Lx426_5:
 add rsp, 160
 mov edi, 0
 mov rsi, qword ptr [rbp + 10432]
 mov rdx, qword ptr [rbp + 10440]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10448]
 mov rdx, qword ptr [rbp + 10456]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 10544]
 mov rdx, qword ptr [rbp + 10552]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx426_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx426_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx426_3]
 lea rdx, [rip + .Lx426_4]
 jmp rax
.Lx426_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx426_2
.Lx426_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx426_2
.Lx426_1:
 call rt_faildescr@PLT
.Lx426_2:
 mov qword ptr [rbp + 10176], rax
 mov qword ptr [rbp + 10184], rdx
 cmp eax, 99
 je xchain300_n90_α
 jmp xchain300_n90_α
 xchain300_n107_β:
 jmp xchain300_n90_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "pp_node"
proc_pp_node_res:
add rsp, 8
pop rbp
proc_pp_node_β:
jmp proc_pp_node_ω
proc_pp_node_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_pp_node_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_pp_bank_α
proc_pp_bank_α:
#=======================================================================================================================
    .global proc_pp_bank_α
    .global proc_pp_bank_β
    .global proc_pp_bank_γ
    .global proc_pp_bank_ω
  sub rsp, 14320
  mov [rsp + 14296], rcx
  mov [rsp + 14304], rdx
  mov [rsp + 14312], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 14288
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 14280], rsp
proc_pp_bank_α_body:
# IR_VAR
 xchain427_n0_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 mov qword ptr [rbp + 11168], rax
 mov qword ptr [rbp + 11176], rdx
 jmp xchain427_n1_α
# IR_LIT_INTEGER
 xchain427_n1_α:
 mov qword ptr [rbp + 11200], 6
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 11208], rax
 jmp xchain427_n3_α
.Lx429_0:
 .quad 0
# IR_LIT_STRING
 xchain427_n2_α:
 mov qword ptr [rbp + 11328], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain427_n4_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "dummy"
# IR_LIT_STRING
 xchain427_n3_α:
 mov qword ptr [rbp + 11232], 1
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 11240], rax
 jmp xchain427_n5_α
.Lx431_0:
 .quad .Lx431_0_s
.Lx431_0_s:
 .string ""
 xchain427_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11328] -> [zr+11296]
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11304], rax
  .section .rodata
  .Lrkfn433: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn433]
 lea rsi, [rbp + 11296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11280], rax
 mov qword ptr [rbp + 11288], rdx
 cmp eax, 99
 je proc_pp_bank_γ
 jmp xchain427_n6_α
 xchain427_n4_β:
 jmp proc_pp_bank_γ
 xchain427_n5_α:
 sub rsp, 160
 mov rax, qword ptr [1879052640]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052648]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052736]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052744]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052752]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052760]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052768]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052776]
 mov qword ptr [rsp + 72], rax
 mov rax, qword ptr [1879052704]
 mov qword ptr [rsp + 80], rax
 mov rax, qword ptr [1879052712]
 mov qword ptr [rsp + 88], rax
 mov rax, qword ptr [1879052400]
 mov qword ptr [rsp + 96], rax
 mov rax, qword ptr [1879052408]
 mov qword ptr [rsp + 104], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 112], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 120], rax
 mov rax, qword ptr [1879052784]
 mov qword ptr [rsp + 128], rax
 mov rax, qword ptr [1879052792]
 mov qword ptr [rsp + 136], rax
 mov rax, qword ptr [1879052720]
 mov qword ptr [rsp + 144], rax
 mov rax, qword ptr [1879052728]
 mov qword ptr [rsp + 152], rax
 mov rdi, qword ptr [rip + .Lx435_0]
 mov esi, 9
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx435_5
 mov rax, qword ptr [rbp + 11168]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 11176]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rbp + 11200]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 11208]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 11232]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 11240]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx435_6]
 lea rdx, [rip + .Lx435_7]
 jmp rax
.Lx435_6:
 mov rdi, qword ptr [1879052720]
 mov rsi, qword ptr [1879052728]
 mov rax, qword ptr [rsp + 144]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 152]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 128]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 136]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 160
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx435_2
.Lx435_7:
 mov rax, qword ptr [rsp + 144]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 152]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 128]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 136]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052648], rax
 add rsp, 160
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx435_2
.Lx435_5:
 add rsp, 160
 mov edi, 0
 mov rsi, qword ptr [rbp + 11168]
 mov rdx, qword ptr [rbp + 11176]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 11200]
 mov rdx, qword ptr [rbp + 11208]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 11232]
 mov rdx, qword ptr [rbp + 11240]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx435_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx435_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx435_3]
 lea rdx, [rip + .Lx435_4]
 jmp rax
.Lx435_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx435_2
.Lx435_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx435_2
.Lx435_1:
 call rt_faildescr@PLT
.Lx435_2:
 mov qword ptr [rbp + 11088], rax
 mov qword ptr [rbp + 11096], rdx
 cmp eax, 99
 je xchain427_n2_α
 jmp xchain427_n2_α
 xchain427_n5_β:
 jmp xchain427_n2_α
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "pp_node"
# IR_ASSIGN gva
 xchain427_n6_α:
 mov rax, qword ptr [rbp + 11280]
 mov rdx, qword ptr [rbp + 11288]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 11264], rax
 mov qword ptr [rbp + 11272], rdx
 jmp proc_pp_bank_γ
proc_pp_bank_res:
add rsp, 8
pop rbp
proc_pp_bank_β:
jmp proc_pp_bank_ω
proc_pp_bank_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 14296]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
proc_pp_bank_ω:
mov rax, [rbp + 14304]
lea rsp, [rbp + 14320]
mov rbp, [rbp + 14312]
jmp rax
  .globl proc_EXPR$0_α
proc_EXPR$0_α:
#=======================================================================================================================
    .global proc_EXPR$0_α
    .global proc_EXPR$0_β
    .global proc_EXPR$0_γ
    .global proc_EXPR$0_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$0_α_body:
 xchain437_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx439_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx439_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx439_6]
 lea rdx, [rip + .Lx439_7]
 jmp rax
.Lx439_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx439_2
.Lx439_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx439_2
.Lx439_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx439_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx439_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx439_3]
 lea rdx, [rip + .Lx439_4]
 jmp rax
.Lx439_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx439_2
.Lx439_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx439_2
.Lx439_1:
 call rt_faildescr@PLT
.Lx439_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$0_ω
 jmp xchain437_n1_α
 xchain437_n0_β:
 jmp proc_EXPR$0_ω
.Lx439_0:
 .quad .Lx439_0_s
.Lx439_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain437_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$0_γ
proc_EXPR$0_res:
add rsp, 8
pop rbp
proc_EXPR$0_β:
jmp proc_EXPR$0_ω
proc_EXPR$0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$0_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$1_α
proc_EXPR$1_α:
#=======================================================================================================================
    .global proc_EXPR$1_α
    .global proc_EXPR$1_β
    .global proc_EXPR$1_γ
    .global proc_EXPR$1_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$1_α_body:
# IR_VAR
 xchain441_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain441_n1_α
# IR_ASSIGN gva
 xchain441_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053104], rax
 mov qword ptr [1879053112], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$1_γ
proc_EXPR$1_res:
add rsp, 8
pop rbp
proc_EXPR$1_β:
jmp proc_EXPR$1_ω
proc_EXPR$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$1_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$2_α
proc_EXPR$2_α:
#=======================================================================================================================
    .global proc_EXPR$2_α
    .global proc_EXPR$2_β
    .global proc_EXPR$2_γ
    .global proc_EXPR$2_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$2_α_body:
# IR_VAR
 xchain444_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain444_n1_α
# IR_ASSIGN gva
 xchain444_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053120], rax
 mov qword ptr [1879053128], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$2_γ
proc_EXPR$2_res:
add rsp, 8
pop rbp
proc_EXPR$2_β:
jmp proc_EXPR$2_ω
proc_EXPR$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$2_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$3_α
proc_EXPR$3_α:
#=======================================================================================================================
    .global proc_EXPR$3_α
    .global proc_EXPR$3_β
    .global proc_EXPR$3_γ
    .global proc_EXPR$3_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$3_α_body:
 xchain447_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx449_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx449_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx449_6]
 lea rdx, [rip + .Lx449_7]
 jmp rax
.Lx449_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx449_2
.Lx449_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx449_2
.Lx449_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx449_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx449_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx449_3]
 lea rdx, [rip + .Lx449_4]
 jmp rax
.Lx449_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx449_2
.Lx449_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx449_2
.Lx449_1:
 call rt_faildescr@PLT
.Lx449_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$3_ω
 jmp xchain447_n1_α
 xchain447_n0_β:
 jmp proc_EXPR$3_ω
.Lx449_0:
 .quad .Lx449_0_s
.Lx449_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain447_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053136], rax
 mov qword ptr [1879053144], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$3_γ
proc_EXPR$3_res:
add rsp, 8
pop rbp
proc_EXPR$3_β:
jmp proc_EXPR$3_ω
proc_EXPR$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$3_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$4_α
proc_EXPR$4_α:
#=======================================================================================================================
    .global proc_EXPR$4_α
    .global proc_EXPR$4_β
    .global proc_EXPR$4_γ
    .global proc_EXPR$4_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$4_α_body:
# IR_VAR
 xchain451_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain451_n1_α
# IR_ASSIGN gva
 xchain451_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053152], rax
 mov qword ptr [1879053160], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$4_γ
proc_EXPR$4_res:
add rsp, 8
pop rbp
proc_EXPR$4_β:
jmp proc_EXPR$4_ω
proc_EXPR$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$4_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$5_α
proc_EXPR$5_α:
#=======================================================================================================================
    .global proc_EXPR$5_α
    .global proc_EXPR$5_β
    .global proc_EXPR$5_γ
    .global proc_EXPR$5_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$5_α_body:
# IR_VAR
 xchain454_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain454_n1_α
# IR_ASSIGN gva
 xchain454_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053168], rax
 mov qword ptr [1879053176], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$5_γ
proc_EXPR$5_res:
add rsp, 8
pop rbp
proc_EXPR$5_β:
jmp proc_EXPR$5_ω
proc_EXPR$5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$5_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$6_α
proc_EXPR$6_α:
#=======================================================================================================================
    .global proc_EXPR$6_α
    .global proc_EXPR$6_β
    .global proc_EXPR$6_γ
    .global proc_EXPR$6_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$6_α_body:
 xchain457_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx459_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx459_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx459_6]
 lea rdx, [rip + .Lx459_7]
 jmp rax
.Lx459_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx459_2
.Lx459_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx459_2
.Lx459_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx459_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx459_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx459_3]
 lea rdx, [rip + .Lx459_4]
 jmp rax
.Lx459_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx459_2
.Lx459_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx459_2
.Lx459_1:
 call rt_faildescr@PLT
.Lx459_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$6_ω
 jmp xchain457_n1_α
 xchain457_n0_β:
 jmp proc_EXPR$6_ω
.Lx459_0:
 .quad .Lx459_0_s
.Lx459_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain457_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053184], rax
 mov qword ptr [1879053192], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$6_γ
proc_EXPR$6_res:
add rsp, 8
pop rbp
proc_EXPR$6_β:
jmp proc_EXPR$6_ω
proc_EXPR$6_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$6_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$7_α
proc_EXPR$7_α:
#=======================================================================================================================
    .global proc_EXPR$7_α
    .global proc_EXPR$7_β
    .global proc_EXPR$7_γ
    .global proc_EXPR$7_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$7_α_body:
# IR_VAR
 xchain461_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain461_n1_α
# IR_ASSIGN gva
 xchain461_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053200], rax
 mov qword ptr [1879053208], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$7_γ
proc_EXPR$7_res:
add rsp, 8
pop rbp
proc_EXPR$7_β:
jmp proc_EXPR$7_ω
proc_EXPR$7_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$7_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$8_α
proc_EXPR$8_α:
#=======================================================================================================================
    .global proc_EXPR$8_α
    .global proc_EXPR$8_β
    .global proc_EXPR$8_γ
    .global proc_EXPR$8_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$8_α_body:
# IR_VAR
 xchain464_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain464_n1_α
# IR_ASSIGN gva
 xchain464_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053216], rax
 mov qword ptr [1879053224], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$8_γ
proc_EXPR$8_res:
add rsp, 8
pop rbp
proc_EXPR$8_β:
jmp proc_EXPR$8_ω
proc_EXPR$8_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$8_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$9_α
proc_EXPR$9_α:
#=======================================================================================================================
    .global proc_EXPR$9_α
    .global proc_EXPR$9_β
    .global proc_EXPR$9_γ
    .global proc_EXPR$9_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$9_α_body:
 xchain467_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx469_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx469_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx469_6]
 lea rdx, [rip + .Lx469_7]
 jmp rax
.Lx469_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx469_2
.Lx469_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx469_2
.Lx469_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx469_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx469_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx469_3]
 lea rdx, [rip + .Lx469_4]
 jmp rax
.Lx469_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx469_2
.Lx469_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx469_2
.Lx469_1:
 call rt_faildescr@PLT
.Lx469_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$9_ω
 jmp xchain467_n1_α
 xchain467_n0_β:
 jmp proc_EXPR$9_ω
.Lx469_0:
 .quad .Lx469_0_s
.Lx469_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain467_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053232], rax
 mov qword ptr [1879053240], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$9_γ
proc_EXPR$9_res:
add rsp, 8
pop rbp
proc_EXPR$9_β:
jmp proc_EXPR$9_ω
proc_EXPR$9_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$9_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$10_α
proc_EXPR$10_α:
#=======================================================================================================================
    .global proc_EXPR$10_α
    .global proc_EXPR$10_β
    .global proc_EXPR$10_γ
    .global proc_EXPR$10_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$10_α_body:
# IR_VAR
 xchain471_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain471_n1_α
# IR_ASSIGN gva
 xchain471_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053248], rax
 mov qword ptr [1879053256], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$10_γ
proc_EXPR$10_res:
add rsp, 8
pop rbp
proc_EXPR$10_β:
jmp proc_EXPR$10_ω
proc_EXPR$10_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$10_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$11_α
proc_EXPR$11_α:
#=======================================================================================================================
    .global proc_EXPR$11_α
    .global proc_EXPR$11_β
    .global proc_EXPR$11_γ
    .global proc_EXPR$11_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$11_α_body:
# IR_VAR
 xchain474_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain474_n1_α
# IR_ASSIGN gva
 xchain474_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053264], rax
 mov qword ptr [1879053272], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$11_γ
proc_EXPR$11_res:
add rsp, 8
pop rbp
proc_EXPR$11_β:
jmp proc_EXPR$11_ω
proc_EXPR$11_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$11_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$12_α
proc_EXPR$12_α:
#=======================================================================================================================
    .global proc_EXPR$12_α
    .global proc_EXPR$12_β
    .global proc_EXPR$12_γ
    .global proc_EXPR$12_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$12_α_body:
 xchain477_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx479_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx479_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx479_6]
 lea rdx, [rip + .Lx479_7]
 jmp rax
.Lx479_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx479_2
.Lx479_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx479_2
.Lx479_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx479_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx479_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx479_3]
 lea rdx, [rip + .Lx479_4]
 jmp rax
.Lx479_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx479_2
.Lx479_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx479_2
.Lx479_1:
 call rt_faildescr@PLT
.Lx479_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$12_ω
 jmp xchain477_n1_α
 xchain477_n0_β:
 jmp proc_EXPR$12_ω
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain477_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053280], rax
 mov qword ptr [1879053288], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$12_γ
proc_EXPR$12_res:
add rsp, 8
pop rbp
proc_EXPR$12_β:
jmp proc_EXPR$12_ω
proc_EXPR$12_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$12_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$13_α
proc_EXPR$13_α:
#=======================================================================================================================
    .global proc_EXPR$13_α
    .global proc_EXPR$13_β
    .global proc_EXPR$13_γ
    .global proc_EXPR$13_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$13_α_body:
# IR_VAR
 xchain481_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain481_n1_α
# IR_ASSIGN gva
 xchain481_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053296], rax
 mov qword ptr [1879053304], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$13_γ
proc_EXPR$13_res:
add rsp, 8
pop rbp
proc_EXPR$13_β:
jmp proc_EXPR$13_ω
proc_EXPR$13_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$13_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$14_α
proc_EXPR$14_α:
#=======================================================================================================================
    .global proc_EXPR$14_α
    .global proc_EXPR$14_β
    .global proc_EXPR$14_γ
    .global proc_EXPR$14_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$14_α_body:
# IR_VAR
 xchain484_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain484_n1_α
# IR_ASSIGN gva
 xchain484_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053312], rax
 mov qword ptr [1879053320], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$14_γ
proc_EXPR$14_res:
add rsp, 8
pop rbp
proc_EXPR$14_β:
jmp proc_EXPR$14_ω
proc_EXPR$14_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$14_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$15_α
proc_EXPR$15_α:
#=======================================================================================================================
    .global proc_EXPR$15_α
    .global proc_EXPR$15_β
    .global proc_EXPR$15_γ
    .global proc_EXPR$15_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$15_α_body:
 xchain487_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx489_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx489_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx489_6]
 lea rdx, [rip + .Lx489_7]
 jmp rax
.Lx489_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx489_2
.Lx489_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx489_2
.Lx489_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx489_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx489_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx489_3]
 lea rdx, [rip + .Lx489_4]
 jmp rax
.Lx489_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx489_2
.Lx489_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx489_2
.Lx489_1:
 call rt_faildescr@PLT
.Lx489_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$15_ω
 jmp xchain487_n1_α
 xchain487_n0_β:
 jmp proc_EXPR$15_ω
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain487_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053328], rax
 mov qword ptr [1879053336], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$15_γ
proc_EXPR$15_res:
add rsp, 8
pop rbp
proc_EXPR$15_β:
jmp proc_EXPR$15_ω
proc_EXPR$15_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$15_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$16_α
proc_EXPR$16_α:
#=======================================================================================================================
    .global proc_EXPR$16_α
    .global proc_EXPR$16_β
    .global proc_EXPR$16_γ
    .global proc_EXPR$16_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$16_α_body:
# IR_VAR
 xchain491_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain491_n1_α
# IR_ASSIGN gva
 xchain491_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053344], rax
 mov qword ptr [1879053352], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$16_γ
proc_EXPR$16_res:
add rsp, 8
pop rbp
proc_EXPR$16_β:
jmp proc_EXPR$16_ω
proc_EXPR$16_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$16_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$17_α
proc_EXPR$17_α:
#=======================================================================================================================
    .global proc_EXPR$17_α
    .global proc_EXPR$17_β
    .global proc_EXPR$17_γ
    .global proc_EXPR$17_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$17_α_body:
# IR_VAR
 xchain494_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain494_n1_α
# IR_ASSIGN gva
 xchain494_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053360], rax
 mov qword ptr [1879053368], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$17_γ
proc_EXPR$17_res:
add rsp, 8
pop rbp
proc_EXPR$17_β:
jmp proc_EXPR$17_ω
proc_EXPR$17_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$17_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$18_α
proc_EXPR$18_α:
#=======================================================================================================================
    .global proc_EXPR$18_α
    .global proc_EXPR$18_β
    .global proc_EXPR$18_γ
    .global proc_EXPR$18_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$18_α_body:
 xchain497_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx499_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx499_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx499_6]
 lea rdx, [rip + .Lx499_7]
 jmp rax
.Lx499_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx499_2
.Lx499_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx499_2
.Lx499_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx499_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx499_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx499_3]
 lea rdx, [rip + .Lx499_4]
 jmp rax
.Lx499_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx499_2
.Lx499_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx499_2
.Lx499_1:
 call rt_faildescr@PLT
.Lx499_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$18_ω
 jmp xchain497_n1_α
 xchain497_n0_β:
 jmp proc_EXPR$18_ω
.Lx499_0:
 .quad .Lx499_0_s
.Lx499_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain497_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053376], rax
 mov qword ptr [1879053384], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$18_γ
proc_EXPR$18_res:
add rsp, 8
pop rbp
proc_EXPR$18_β:
jmp proc_EXPR$18_ω
proc_EXPR$18_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$18_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$19_α
proc_EXPR$19_α:
#=======================================================================================================================
    .global proc_EXPR$19_α
    .global proc_EXPR$19_β
    .global proc_EXPR$19_γ
    .global proc_EXPR$19_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$19_α_body:
# IR_VAR
 xchain501_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain501_n1_α
# IR_ASSIGN gva
 xchain501_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053392], rax
 mov qword ptr [1879053400], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$19_γ
proc_EXPR$19_res:
add rsp, 8
pop rbp
proc_EXPR$19_β:
jmp proc_EXPR$19_ω
proc_EXPR$19_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$19_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$20_α
proc_EXPR$20_α:
#=======================================================================================================================
    .global proc_EXPR$20_α
    .global proc_EXPR$20_β
    .global proc_EXPR$20_γ
    .global proc_EXPR$20_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$20_α_body:
# IR_VAR
 xchain504_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain504_n1_α
# IR_ASSIGN gva
 xchain504_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053408], rax
 mov qword ptr [1879053416], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$20_γ
proc_EXPR$20_res:
add rsp, 8
pop rbp
proc_EXPR$20_β:
jmp proc_EXPR$20_ω
proc_EXPR$20_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$20_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$21_α
proc_EXPR$21_α:
#=======================================================================================================================
    .global proc_EXPR$21_α
    .global proc_EXPR$21_β
    .global proc_EXPR$21_γ
    .global proc_EXPR$21_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$21_α_body:
 xchain507_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx509_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx509_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx509_6]
 lea rdx, [rip + .Lx509_7]
 jmp rax
.Lx509_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx509_2
.Lx509_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx509_2
.Lx509_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx509_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx509_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx509_3]
 lea rdx, [rip + .Lx509_4]
 jmp rax
.Lx509_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx509_2
.Lx509_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx509_2
.Lx509_1:
 call rt_faildescr@PLT
.Lx509_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$21_ω
 jmp xchain507_n1_α
 xchain507_n0_β:
 jmp proc_EXPR$21_ω
.Lx509_0:
 .quad .Lx509_0_s
.Lx509_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain507_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053424], rax
 mov qword ptr [1879053432], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$21_γ
proc_EXPR$21_res:
add rsp, 8
pop rbp
proc_EXPR$21_β:
jmp proc_EXPR$21_ω
proc_EXPR$21_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$21_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$22_α
proc_EXPR$22_α:
#=======================================================================================================================
    .global proc_EXPR$22_α
    .global proc_EXPR$22_β
    .global proc_EXPR$22_γ
    .global proc_EXPR$22_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$22_α_body:
# IR_VAR
 xchain511_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain511_n1_α
# IR_ASSIGN gva
 xchain511_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053440], rax
 mov qword ptr [1879053448], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$22_γ
proc_EXPR$22_res:
add rsp, 8
pop rbp
proc_EXPR$22_β:
jmp proc_EXPR$22_ω
proc_EXPR$22_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$22_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$23_α
proc_EXPR$23_α:
#=======================================================================================================================
    .global proc_EXPR$23_α
    .global proc_EXPR$23_β
    .global proc_EXPR$23_γ
    .global proc_EXPR$23_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$23_α_body:
# IR_VAR
 xchain514_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain514_n1_α
# IR_ASSIGN gva
 xchain514_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053456], rax
 mov qword ptr [1879053464], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$23_γ
proc_EXPR$23_res:
add rsp, 8
pop rbp
proc_EXPR$23_β:
jmp proc_EXPR$23_ω
proc_EXPR$23_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$23_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$24_α
proc_EXPR$24_α:
#=======================================================================================================================
    .global proc_EXPR$24_α
    .global proc_EXPR$24_β
    .global proc_EXPR$24_γ
    .global proc_EXPR$24_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$24_α_body:
 xchain517_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx519_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx519_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx519_6]
 lea rdx, [rip + .Lx519_7]
 jmp rax
.Lx519_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx519_2
.Lx519_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx519_2
.Lx519_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx519_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx519_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx519_3]
 lea rdx, [rip + .Lx519_4]
 jmp rax
.Lx519_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx519_2
.Lx519_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx519_2
.Lx519_1:
 call rt_faildescr@PLT
.Lx519_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$24_ω
 jmp xchain517_n1_α
 xchain517_n0_β:
 jmp proc_EXPR$24_ω
.Lx519_0:
 .quad .Lx519_0_s
.Lx519_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain517_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053472], rax
 mov qword ptr [1879053480], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$24_γ
proc_EXPR$24_res:
add rsp, 8
pop rbp
proc_EXPR$24_β:
jmp proc_EXPR$24_ω
proc_EXPR$24_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$24_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$25_α
proc_EXPR$25_α:
#=======================================================================================================================
    .global proc_EXPR$25_α
    .global proc_EXPR$25_β
    .global proc_EXPR$25_γ
    .global proc_EXPR$25_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$25_α_body:
# IR_VAR
 xchain521_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain521_n1_α
# IR_ASSIGN gva
 xchain521_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053488], rax
 mov qword ptr [1879053496], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$25_γ
proc_EXPR$25_res:
add rsp, 8
pop rbp
proc_EXPR$25_β:
jmp proc_EXPR$25_ω
proc_EXPR$25_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$25_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$26_α
proc_EXPR$26_α:
#=======================================================================================================================
    .global proc_EXPR$26_α
    .global proc_EXPR$26_β
    .global proc_EXPR$26_γ
    .global proc_EXPR$26_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$26_α_body:
# IR_VAR
 xchain524_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain524_n1_α
# IR_ASSIGN gva
 xchain524_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053504], rax
 mov qword ptr [1879053512], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$26_γ
proc_EXPR$26_res:
add rsp, 8
pop rbp
proc_EXPR$26_β:
jmp proc_EXPR$26_ω
proc_EXPR$26_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$26_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$27_α
proc_EXPR$27_α:
#=======================================================================================================================
    .global proc_EXPR$27_α
    .global proc_EXPR$27_β
    .global proc_EXPR$27_γ
    .global proc_EXPR$27_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$27_α_body:
 xchain527_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx529_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx529_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx529_6]
 lea rdx, [rip + .Lx529_7]
 jmp rax
.Lx529_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx529_2
.Lx529_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx529_2
.Lx529_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx529_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx529_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx529_3]
 lea rdx, [rip + .Lx529_4]
 jmp rax
.Lx529_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx529_2
.Lx529_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx529_2
.Lx529_1:
 call rt_faildescr@PLT
.Lx529_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$27_ω
 jmp xchain527_n1_α
 xchain527_n0_β:
 jmp proc_EXPR$27_ω
.Lx529_0:
 .quad .Lx529_0_s
.Lx529_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain527_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053520], rax
 mov qword ptr [1879053528], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$27_γ
proc_EXPR$27_res:
add rsp, 8
pop rbp
proc_EXPR$27_β:
jmp proc_EXPR$27_ω
proc_EXPR$27_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$27_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$28_α
proc_EXPR$28_α:
#=======================================================================================================================
    .global proc_EXPR$28_α
    .global proc_EXPR$28_β
    .global proc_EXPR$28_γ
    .global proc_EXPR$28_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$28_α_body:
# IR_VAR
 xchain531_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain531_n1_α
# IR_ASSIGN gva
 xchain531_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053536], rax
 mov qword ptr [1879053544], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$28_γ
proc_EXPR$28_res:
add rsp, 8
pop rbp
proc_EXPR$28_β:
jmp proc_EXPR$28_ω
proc_EXPR$28_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$28_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$29_α
proc_EXPR$29_α:
#=======================================================================================================================
    .global proc_EXPR$29_α
    .global proc_EXPR$29_β
    .global proc_EXPR$29_γ
    .global proc_EXPR$29_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$29_α_body:
# IR_VAR
 xchain534_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain534_n1_α
# IR_ASSIGN gva
 xchain534_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053552], rax
 mov qword ptr [1879053560], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$29_γ
proc_EXPR$29_res:
add rsp, 8
pop rbp
proc_EXPR$29_β:
jmp proc_EXPR$29_ω
proc_EXPR$29_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$29_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$30_α
proc_EXPR$30_α:
#=======================================================================================================================
    .global proc_EXPR$30_α
    .global proc_EXPR$30_β
    .global proc_EXPR$30_γ
    .global proc_EXPR$30_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$30_α_body:
 xchain537_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx539_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx539_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx539_6]
 lea rdx, [rip + .Lx539_7]
 jmp rax
.Lx539_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx539_2
.Lx539_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx539_2
.Lx539_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx539_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx539_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx539_3]
 lea rdx, [rip + .Lx539_4]
 jmp rax
.Lx539_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx539_2
.Lx539_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx539_2
.Lx539_1:
 call rt_faildescr@PLT
.Lx539_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$30_ω
 jmp xchain537_n1_α
 xchain537_n0_β:
 jmp proc_EXPR$30_ω
.Lx539_0:
 .quad .Lx539_0_s
.Lx539_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain537_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053568], rax
 mov qword ptr [1879053576], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$30_γ
proc_EXPR$30_res:
add rsp, 8
pop rbp
proc_EXPR$30_β:
jmp proc_EXPR$30_ω
proc_EXPR$30_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$30_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$31_α
proc_EXPR$31_α:
#=======================================================================================================================
    .global proc_EXPR$31_α
    .global proc_EXPR$31_β
    .global proc_EXPR$31_γ
    .global proc_EXPR$31_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$31_α_body:
# IR_VAR
 xchain541_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain541_n1_α
# IR_ASSIGN gva
 xchain541_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053584], rax
 mov qword ptr [1879053592], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$31_γ
proc_EXPR$31_res:
add rsp, 8
pop rbp
proc_EXPR$31_β:
jmp proc_EXPR$31_ω
proc_EXPR$31_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$31_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$32_α
proc_EXPR$32_α:
#=======================================================================================================================
    .global proc_EXPR$32_α
    .global proc_EXPR$32_β
    .global proc_EXPR$32_γ
    .global proc_EXPR$32_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$32_α_body:
# IR_VAR
 xchain544_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain544_n1_α
# IR_ASSIGN gva
 xchain544_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053600], rax
 mov qword ptr [1879053608], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$32_γ
proc_EXPR$32_res:
add rsp, 8
pop rbp
proc_EXPR$32_β:
jmp proc_EXPR$32_ω
proc_EXPR$32_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$32_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$33_α
proc_EXPR$33_α:
#=======================================================================================================================
    .global proc_EXPR$33_α
    .global proc_EXPR$33_β
    .global proc_EXPR$33_γ
    .global proc_EXPR$33_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$33_α_body:
 xchain547_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx549_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx549_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx549_6]
 lea rdx, [rip + .Lx549_7]
 jmp rax
.Lx549_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx549_2
.Lx549_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx549_2
.Lx549_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx549_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx549_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx549_3]
 lea rdx, [rip + .Lx549_4]
 jmp rax
.Lx549_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx549_2
.Lx549_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx549_2
.Lx549_1:
 call rt_faildescr@PLT
.Lx549_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$33_ω
 jmp xchain547_n1_α
 xchain547_n0_β:
 jmp proc_EXPR$33_ω
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain547_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053616], rax
 mov qword ptr [1879053624], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$33_γ
proc_EXPR$33_res:
add rsp, 8
pop rbp
proc_EXPR$33_β:
jmp proc_EXPR$33_ω
proc_EXPR$33_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$33_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$34_α
proc_EXPR$34_α:
#=======================================================================================================================
    .global proc_EXPR$34_α
    .global proc_EXPR$34_β
    .global proc_EXPR$34_γ
    .global proc_EXPR$34_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$34_α_body:
# IR_VAR
 xchain551_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain551_n1_α
# IR_ASSIGN gva
 xchain551_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053632], rax
 mov qword ptr [1879053640], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$34_γ
proc_EXPR$34_res:
add rsp, 8
pop rbp
proc_EXPR$34_β:
jmp proc_EXPR$34_ω
proc_EXPR$34_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$34_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$35_α
proc_EXPR$35_α:
#=======================================================================================================================
    .global proc_EXPR$35_α
    .global proc_EXPR$35_β
    .global proc_EXPR$35_γ
    .global proc_EXPR$35_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$35_α_body:
# IR_VAR
 xchain554_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain554_n1_α
# IR_ASSIGN gva
 xchain554_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053648], rax
 mov qword ptr [1879053656], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$35_γ
proc_EXPR$35_res:
add rsp, 8
pop rbp
proc_EXPR$35_β:
jmp proc_EXPR$35_ω
proc_EXPR$35_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$35_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$36_α
proc_EXPR$36_α:
#=======================================================================================================================
    .global proc_EXPR$36_α
    .global proc_EXPR$36_β
    .global proc_EXPR$36_γ
    .global proc_EXPR$36_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$36_α_body:
 xchain557_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx559_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx559_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx559_6]
 lea rdx, [rip + .Lx559_7]
 jmp rax
.Lx559_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx559_2
.Lx559_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx559_2
.Lx559_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx559_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx559_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx559_3]
 lea rdx, [rip + .Lx559_4]
 jmp rax
.Lx559_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx559_2
.Lx559_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx559_2
.Lx559_1:
 call rt_faildescr@PLT
.Lx559_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$36_ω
 jmp xchain557_n1_α
 xchain557_n0_β:
 jmp proc_EXPR$36_ω
.Lx559_0:
 .quad .Lx559_0_s
.Lx559_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain557_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053664], rax
 mov qword ptr [1879053672], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$36_γ
proc_EXPR$36_res:
add rsp, 8
pop rbp
proc_EXPR$36_β:
jmp proc_EXPR$36_ω
proc_EXPR$36_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$36_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$37_α
proc_EXPR$37_α:
#=======================================================================================================================
    .global proc_EXPR$37_α
    .global proc_EXPR$37_β
    .global proc_EXPR$37_γ
    .global proc_EXPR$37_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$37_α_body:
# IR_VAR
 xchain561_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain561_n1_α
# IR_ASSIGN gva
 xchain561_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053680], rax
 mov qword ptr [1879053688], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$37_γ
proc_EXPR$37_res:
add rsp, 8
pop rbp
proc_EXPR$37_β:
jmp proc_EXPR$37_ω
proc_EXPR$37_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$37_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$38_α
proc_EXPR$38_α:
#=======================================================================================================================
    .global proc_EXPR$38_α
    .global proc_EXPR$38_β
    .global proc_EXPR$38_γ
    .global proc_EXPR$38_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$38_α_body:
# IR_VAR
 xchain564_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain564_n1_α
# IR_ASSIGN gva
 xchain564_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053696], rax
 mov qword ptr [1879053704], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$38_γ
proc_EXPR$38_res:
add rsp, 8
pop rbp
proc_EXPR$38_β:
jmp proc_EXPR$38_ω
proc_EXPR$38_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$38_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$39_α
proc_EXPR$39_α:
#=======================================================================================================================
    .global proc_EXPR$39_α
    .global proc_EXPR$39_β
    .global proc_EXPR$39_γ
    .global proc_EXPR$39_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$39_α_body:
 xchain567_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx569_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx569_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx569_6]
 lea rdx, [rip + .Lx569_7]
 jmp rax
.Lx569_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx569_2
.Lx569_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx569_2
.Lx569_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx569_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx569_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx569_3]
 lea rdx, [rip + .Lx569_4]
 jmp rax
.Lx569_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx569_2
.Lx569_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx569_2
.Lx569_1:
 call rt_faildescr@PLT
.Lx569_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$39_ω
 jmp xchain567_n1_α
 xchain567_n0_β:
 jmp proc_EXPR$39_ω
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain567_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053712], rax
 mov qword ptr [1879053720], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$39_γ
proc_EXPR$39_res:
add rsp, 8
pop rbp
proc_EXPR$39_β:
jmp proc_EXPR$39_ω
proc_EXPR$39_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$39_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$40_α
proc_EXPR$40_α:
#=======================================================================================================================
    .global proc_EXPR$40_α
    .global proc_EXPR$40_β
    .global proc_EXPR$40_γ
    .global proc_EXPR$40_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$40_α_body:
# IR_VAR
 xchain571_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain571_n1_α
# IR_ASSIGN gva
 xchain571_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053728], rax
 mov qword ptr [1879053736], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$40_γ
proc_EXPR$40_res:
add rsp, 8
pop rbp
proc_EXPR$40_β:
jmp proc_EXPR$40_ω
proc_EXPR$40_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$40_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$41_α
proc_EXPR$41_α:
#=======================================================================================================================
    .global proc_EXPR$41_α
    .global proc_EXPR$41_β
    .global proc_EXPR$41_γ
    .global proc_EXPR$41_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$41_α_body:
# IR_VAR
 xchain574_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain574_n1_α
# IR_ASSIGN gva
 xchain574_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053744], rax
 mov qword ptr [1879053752], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$41_γ
proc_EXPR$41_res:
add rsp, 8
pop rbp
proc_EXPR$41_β:
jmp proc_EXPR$41_ω
proc_EXPR$41_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$41_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$42_α
proc_EXPR$42_α:
#=======================================================================================================================
    .global proc_EXPR$42_α
    .global proc_EXPR$42_β
    .global proc_EXPR$42_γ
    .global proc_EXPR$42_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$42_α_body:
 xchain577_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx579_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx579_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx579_6]
 lea rdx, [rip + .Lx579_7]
 jmp rax
.Lx579_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx579_2
.Lx579_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx579_2
.Lx579_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx579_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx579_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx579_3]
 lea rdx, [rip + .Lx579_4]
 jmp rax
.Lx579_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx579_2
.Lx579_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx579_2
.Lx579_1:
 call rt_faildescr@PLT
.Lx579_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$42_ω
 jmp xchain577_n1_α
 xchain577_n0_β:
 jmp proc_EXPR$42_ω
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain577_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053760], rax
 mov qword ptr [1879053768], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$42_γ
proc_EXPR$42_res:
add rsp, 8
pop rbp
proc_EXPR$42_β:
jmp proc_EXPR$42_ω
proc_EXPR$42_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$42_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$43_α
proc_EXPR$43_α:
#=======================================================================================================================
    .global proc_EXPR$43_α
    .global proc_EXPR$43_β
    .global proc_EXPR$43_γ
    .global proc_EXPR$43_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$43_α_body:
# IR_VAR
 xchain581_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain581_n1_α
# IR_ASSIGN gva
 xchain581_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053776], rax
 mov qword ptr [1879053784], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$43_γ
proc_EXPR$43_res:
add rsp, 8
pop rbp
proc_EXPR$43_β:
jmp proc_EXPR$43_ω
proc_EXPR$43_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$43_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$44_α
proc_EXPR$44_α:
#=======================================================================================================================
    .global proc_EXPR$44_α
    .global proc_EXPR$44_β
    .global proc_EXPR$44_γ
    .global proc_EXPR$44_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$44_α_body:
# IR_VAR
 xchain584_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain584_n1_α
# IR_ASSIGN gva
 xchain584_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053792], rax
 mov qword ptr [1879053800], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$44_γ
proc_EXPR$44_res:
add rsp, 8
pop rbp
proc_EXPR$44_β:
jmp proc_EXPR$44_ω
proc_EXPR$44_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$44_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$45_α
proc_EXPR$45_α:
#=======================================================================================================================
    .global proc_EXPR$45_α
    .global proc_EXPR$45_β
    .global proc_EXPR$45_γ
    .global proc_EXPR$45_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$45_α_body:
 xchain587_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx589_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx589_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx589_6]
 lea rdx, [rip + .Lx589_7]
 jmp rax
.Lx589_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx589_2
.Lx589_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx589_2
.Lx589_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx589_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx589_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx589_3]
 lea rdx, [rip + .Lx589_4]
 jmp rax
.Lx589_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx589_2
.Lx589_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx589_2
.Lx589_1:
 call rt_faildescr@PLT
.Lx589_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$45_ω
 jmp xchain587_n1_α
 xchain587_n0_β:
 jmp proc_EXPR$45_ω
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain587_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053808], rax
 mov qword ptr [1879053816], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$45_γ
proc_EXPR$45_res:
add rsp, 8
pop rbp
proc_EXPR$45_β:
jmp proc_EXPR$45_ω
proc_EXPR$45_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$45_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$46_α
proc_EXPR$46_α:
#=======================================================================================================================
    .global proc_EXPR$46_α
    .global proc_EXPR$46_β
    .global proc_EXPR$46_γ
    .global proc_EXPR$46_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$46_α_body:
# IR_VAR
 xchain591_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain591_n1_α
# IR_ASSIGN gva
 xchain591_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053824], rax
 mov qword ptr [1879053832], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$46_γ
proc_EXPR$46_res:
add rsp, 8
pop rbp
proc_EXPR$46_β:
jmp proc_EXPR$46_ω
proc_EXPR$46_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$46_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$47_α
proc_EXPR$47_α:
#=======================================================================================================================
    .global proc_EXPR$47_α
    .global proc_EXPR$47_β
    .global proc_EXPR$47_γ
    .global proc_EXPR$47_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$47_α_body:
# IR_VAR
 xchain594_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain594_n1_α
# IR_ASSIGN gva
 xchain594_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053840], rax
 mov qword ptr [1879053848], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$47_γ
proc_EXPR$47_res:
add rsp, 8
pop rbp
proc_EXPR$47_β:
jmp proc_EXPR$47_ω
proc_EXPR$47_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$47_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$48_α
proc_EXPR$48_α:
#=======================================================================================================================
    .global proc_EXPR$48_α
    .global proc_EXPR$48_β
    .global proc_EXPR$48_γ
    .global proc_EXPR$48_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$48_α_body:
 xchain597_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx599_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx599_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx599_6]
 lea rdx, [rip + .Lx599_7]
 jmp rax
.Lx599_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx599_2
.Lx599_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx599_2
.Lx599_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx599_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx599_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx599_3]
 lea rdx, [rip + .Lx599_4]
 jmp rax
.Lx599_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx599_2
.Lx599_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx599_2
.Lx599_1:
 call rt_faildescr@PLT
.Lx599_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$48_ω
 jmp xchain597_n1_α
 xchain597_n0_β:
 jmp proc_EXPR$48_ω
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain597_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053856], rax
 mov qword ptr [1879053864], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$48_γ
proc_EXPR$48_res:
add rsp, 8
pop rbp
proc_EXPR$48_β:
jmp proc_EXPR$48_ω
proc_EXPR$48_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$48_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$49_α
proc_EXPR$49_α:
#=======================================================================================================================
    .global proc_EXPR$49_α
    .global proc_EXPR$49_β
    .global proc_EXPR$49_γ
    .global proc_EXPR$49_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$49_α_body:
# IR_VAR
 xchain601_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain601_n1_α
# IR_ASSIGN gva
 xchain601_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053872], rax
 mov qword ptr [1879053880], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$49_γ
proc_EXPR$49_res:
add rsp, 8
pop rbp
proc_EXPR$49_β:
jmp proc_EXPR$49_ω
proc_EXPR$49_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$49_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$50_α
proc_EXPR$50_α:
#=======================================================================================================================
    .global proc_EXPR$50_α
    .global proc_EXPR$50_β
    .global proc_EXPR$50_γ
    .global proc_EXPR$50_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$50_α_body:
# IR_VAR
 xchain604_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain604_n1_α
# IR_ASSIGN gva
 xchain604_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053888], rax
 mov qword ptr [1879053896], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$50_γ
proc_EXPR$50_res:
add rsp, 8
pop rbp
proc_EXPR$50_β:
jmp proc_EXPR$50_ω
proc_EXPR$50_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$50_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$51_α
proc_EXPR$51_α:
#=======================================================================================================================
    .global proc_EXPR$51_α
    .global proc_EXPR$51_β
    .global proc_EXPR$51_γ
    .global proc_EXPR$51_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$51_α_body:
 xchain607_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx609_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx609_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx609_6]
 lea rdx, [rip + .Lx609_7]
 jmp rax
.Lx609_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx609_2
.Lx609_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx609_2
.Lx609_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx609_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx609_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx609_3]
 lea rdx, [rip + .Lx609_4]
 jmp rax
.Lx609_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx609_2
.Lx609_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx609_2
.Lx609_1:
 call rt_faildescr@PLT
.Lx609_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$51_ω
 jmp xchain607_n1_α
 xchain607_n0_β:
 jmp proc_EXPR$51_ω
.Lx609_0:
 .quad .Lx609_0_s
.Lx609_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain607_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053904], rax
 mov qword ptr [1879053912], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$51_γ
proc_EXPR$51_res:
add rsp, 8
pop rbp
proc_EXPR$51_β:
jmp proc_EXPR$51_ω
proc_EXPR$51_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$51_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$52_α
proc_EXPR$52_α:
#=======================================================================================================================
    .global proc_EXPR$52_α
    .global proc_EXPR$52_β
    .global proc_EXPR$52_γ
    .global proc_EXPR$52_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$52_α_body:
# IR_VAR
 xchain611_n0_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain611_n1_α
# IR_ASSIGN gva
 xchain611_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053920], rax
 mov qword ptr [1879053928], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$52_γ
proc_EXPR$52_res:
add rsp, 8
pop rbp
proc_EXPR$52_β:
jmp proc_EXPR$52_ω
proc_EXPR$52_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$52_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$53_α
proc_EXPR$53_α:
#=======================================================================================================================
    .global proc_EXPR$53_α
    .global proc_EXPR$53_β
    .global proc_EXPR$53_γ
    .global proc_EXPR$53_ω
  sub rsp, 112
  mov [rsp + 88], rcx
  mov [rsp + 96], rdx
  mov [rsp + 104], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 80
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 72], rsp
proc_EXPR$53_α_body:
# IR_VAR
 xchain614_n0_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain614_n1_α
# IR_ASSIGN gva
 xchain614_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053936], rax
 mov qword ptr [1879053944], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$53_γ
proc_EXPR$53_res:
add rsp, 8
pop rbp
proc_EXPR$53_β:
jmp proc_EXPR$53_ω
proc_EXPR$53_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$53_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_PAT$0_α
proc_PAT$0_α:
#=======================================================================================================================
    .global proc_PAT$0_α
    .global proc_PAT$0_β
    .global proc_PAT$0_γ
    .global proc_PAT$0_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
lea rax, [rip + xchain617_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain617_n0_α:
 mov rax, qword ptr [1879053952]
 mov rdx, qword ptr [1879053960]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain617_n1_α
# IR_COERCE_STRING
 xchain617_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain617_n2_α
# IR_MATCH_SPAN
 xchain617_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx622_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx622_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx622_1
 add dword ptr [rsp + 0], 1
 jmp .Lx622_0
.Lx622_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx622_240
 add rsp, 16
 jmp proc_PAT$0_scanfail
.Lx622_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$0_scanhit
 xchain617_n2_β:
 xchain617_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$0_scanfail
proc_PAT$0_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$0_γ
proc_PAT$0_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$0_attempt
8:
jmp proc_PAT$0_ω
proc_PAT$0_res:
add rsp, 8
pop rbp
proc_PAT$0_β:
jmp qword ptr [rbp + 112]
proc_PAT$0_γ:
push rbp
lea rax, [rip + proc_PAT$0_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$0_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$1_α
proc_PAT$1_α:
#=======================================================================================================================
    .global proc_PAT$1_α
    .global proc_PAT$1_β
    .global proc_PAT$1_γ
    .global proc_PAT$1_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$1_attempt:
proc_PAT$1_α_body:
lea rax, [rip + xchain623_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain623_n0_α:
 mov rax, qword ptr [1879053984]
 mov rdx, qword ptr [1879053992]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain623_n1_α
 xchain623_n0_β:
 jmp proc_PAT$1_scanfail
# IR_COERCE_STRING
 xchain623_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain623_n2_α
 xchain623_n1_β:
 jmp proc_PAT$1_scanfail
# IR_VAR
 xchain623_n2_α:
 mov rax, qword ptr [1879053968]
 mov rdx, qword ptr [1879053976]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain623_n3_α
 xchain623_n2_β:
 jmp proc_PAT$1_scanfail
# IR_COERCE_STRING
 xchain623_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain623_n4_α
 xchain623_n3_β:
 jmp proc_PAT$1_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain623_n4_α:
 jmp xchain623_n5_α
xchain623_n4_as:
 jmp proc_PAT$1_γ
 xchain623_n4_β:
 jmp xchain623_n6_β
xchain623_n4_af:
 jmp proc_PAT$1_ω
# IR_MATCH_NOTANY
 xchain623_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain623_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain623_n4_af
 add r14d, 1
 jmp xchain623_n6_α
 xchain623_n5_β:
 sub r14d, 1
 jmp xchain623_n4_af
# IR_MATCH_BREAK
 xchain623_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx634_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx634_240
 add rsp, 16
 jmp xchain623_n5_β
.Lx634_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx634_1
 add dword ptr [rsp + 0], 1
 jmp .Lx634_0
.Lx634_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain623_n4_as
 xchain623_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain623_n5_β
proc_PAT$1_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$1_γ
proc_PAT$1_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$1_attempt
8:
jmp proc_PAT$1_ω
proc_PAT$1_res:
add rsp, 8
pop rbp
proc_PAT$1_β:
jmp qword ptr [rbp + 224]
proc_PAT$1_γ:
push rbp
lea rax, [rip + proc_PAT$1_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$1_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$2_α
proc_PAT$2_α:
#=======================================================================================================================
    .global proc_PAT$2_α
    .global proc_PAT$2_β
    .global proc_PAT$2_γ
    .global proc_PAT$2_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
lea rax, [rip + xchain635_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain635_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain635_n1_α
 xchain635_n0_β:
 add rsp, 16
 jmp proc_PAT$2_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain635_n1_α:
 jmp xchain635_n3_α
xchain635_n1_as:
 jmp xchain635_n2_α
 xchain635_n1_β:
 jmp xchain635_n5_β
xchain635_n1_af:
 jmp xchain635_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain635_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$2_scanhit
 xchain635_n2_β:
 sub r12, 24
 jmp xchain635_n1_β
# IR_MATCH_LIT
 xchain635_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain635_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain635_n1_af
 add r14d, 1
 jmp xchain635_n4_α
 xchain635_n3_β:
 sub r14d, 1
 jmp xchain635_n1_af
# IR_MATCH_BAL
 xchain635_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain635_n4_β:
.Lx645_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx645_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx645_1
 add edx, 1
 jmp .Lx645_2
.Lx645_1:
 cmp esi, 41
 jne .Lx645_2
 sub edx, 1
 cmp edx, 0
 jl .Lx645_3
.Lx645_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx645_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain635_n5_α
.Lx645_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain635_n3_β
# IR_MATCH_LIT
 xchain635_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain635_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain635_n4_β
 add r14d, 1
 jmp xchain635_n1_as
 xchain635_n5_β:
 sub r14d, 1
 jmp xchain635_n4_β
proc_PAT$2_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$2_γ
proc_PAT$2_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$2_attempt
8:
jmp proc_PAT$2_ω
proc_PAT$2_res:
add rsp, 8
pop rbp
proc_PAT$2_β:
jmp qword ptr [rbp + 160]
proc_PAT$2_γ:
push rbp
lea rax, [rip + proc_PAT$2_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$2_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$3_α
proc_PAT$3_α:
#=======================================================================================================================
    .global proc_PAT$3_α
    .global proc_PAT$3_β
    .global proc_PAT$3_γ
    .global proc_PAT$3_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + xchain648_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain648_n0_α:
 mov rax, qword ptr [1879054000]
 mov rdx, qword ptr [1879054008]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain648_n1_α
# IR_COERCE_STRING
 xchain648_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain648_n2_α
# IR_MATCH_SPAN
 xchain648_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx653_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx653_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx653_1
 add dword ptr [rsp + 0], 1
 jmp .Lx653_0
.Lx653_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx653_240
 add rsp, 16
 jmp proc_PAT$3_scanfail
.Lx653_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$3_scanhit
 xchain648_n2_β:
 xchain648_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$3_scanfail
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 112]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$4_α
proc_PAT$4_α:
#=======================================================================================================================
    .global proc_PAT$4_α
    .global proc_PAT$4_β
    .global proc_PAT$4_γ
    .global proc_PAT$4_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
lea rax, [rip + xchain654_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain654_n0_α:
 mov rax, qword ptr [1879054032]
 mov rdx, qword ptr [1879054040]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain654_n1_α
 xchain654_n0_β:
 jmp proc_PAT$4_scanfail
# IR_COERCE_STRING
 xchain654_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain654_n2_α
 xchain654_n1_β:
 jmp proc_PAT$4_scanfail
# IR_VAR
 xchain654_n2_α:
 mov rax, qword ptr [1879054016]
 mov rdx, qword ptr [1879054024]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain654_n3_α
 xchain654_n2_β:
 jmp proc_PAT$4_scanfail
# IR_COERCE_STRING
 xchain654_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain654_n4_α
 xchain654_n3_β:
 jmp proc_PAT$4_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain654_n4_α:
 jmp xchain654_n5_α
xchain654_n4_as:
 jmp proc_PAT$4_γ
 xchain654_n4_β:
 jmp xchain654_n6_β
xchain654_n4_af:
 jmp proc_PAT$4_ω
# IR_MATCH_NOTANY
 xchain654_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain654_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain654_n4_af
 add r14d, 1
 jmp xchain654_n6_α
 xchain654_n5_β:
 sub r14d, 1
 jmp xchain654_n4_af
# IR_MATCH_BREAK
 xchain654_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx665_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx665_240
 add rsp, 16
 jmp xchain654_n5_β
.Lx665_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx665_1
 add dword ptr [rsp + 0], 1
 jmp .Lx665_0
.Lx665_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain654_n4_as
 xchain654_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain654_n5_β
proc_PAT$4_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$4_γ
proc_PAT$4_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$4_attempt
8:
jmp proc_PAT$4_ω
proc_PAT$4_res:
add rsp, 8
pop rbp
proc_PAT$4_β:
jmp qword ptr [rbp + 224]
proc_PAT$4_γ:
push rbp
lea rax, [rip + proc_PAT$4_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$4_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$5_α
proc_PAT$5_α:
#=======================================================================================================================
    .global proc_PAT$5_α
    .global proc_PAT$5_β
    .global proc_PAT$5_γ
    .global proc_PAT$5_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
lea rax, [rip + xchain666_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain666_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain666_n1_α
 xchain666_n0_β:
 add rsp, 16
 jmp proc_PAT$5_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain666_n1_α:
 jmp xchain666_n3_α
xchain666_n1_as:
 jmp xchain666_n2_α
 xchain666_n1_β:
 jmp xchain666_n5_β
xchain666_n1_af:
 jmp xchain666_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain666_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$5_scanhit
 xchain666_n2_β:
 sub r12, 24
 jmp xchain666_n1_β
# IR_MATCH_LIT
 xchain666_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain666_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain666_n1_af
 add r14d, 1
 jmp xchain666_n4_α
 xchain666_n3_β:
 sub r14d, 1
 jmp xchain666_n1_af
# IR_MATCH_BAL
 xchain666_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain666_n4_β:
.Lx676_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx676_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx676_1
 add edx, 1
 jmp .Lx676_2
.Lx676_1:
 cmp esi, 41
 jne .Lx676_2
 sub edx, 1
 cmp edx, 0
 jl .Lx676_3
.Lx676_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx676_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain666_n5_α
.Lx676_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain666_n3_β
# IR_MATCH_LIT
 xchain666_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain666_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain666_n4_β
 add r14d, 1
 jmp xchain666_n1_as
 xchain666_n5_β:
 sub r14d, 1
 jmp xchain666_n4_β
proc_PAT$5_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$5_γ
proc_PAT$5_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$5_attempt
8:
jmp proc_PAT$5_ω
proc_PAT$5_res:
add rsp, 8
pop rbp
proc_PAT$5_β:
jmp qword ptr [rbp + 160]
proc_PAT$5_γ:
push rbp
lea rax, [rip + proc_PAT$5_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$5_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$6_α
proc_PAT$6_α:
#=======================================================================================================================
    .global proc_PAT$6_α
    .global proc_PAT$6_β
    .global proc_PAT$6_γ
    .global proc_PAT$6_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
lea rax, [rip + xchain679_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain679_n0_α:
 mov rax, qword ptr [1879054048]
 mov rdx, qword ptr [1879054056]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain679_n1_α
# IR_COERCE_STRING
 xchain679_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain679_n2_α
# IR_MATCH_SPAN
 xchain679_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx684_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx684_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx684_1
 add dword ptr [rsp + 0], 1
 jmp .Lx684_0
.Lx684_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx684_240
 add rsp, 16
 jmp proc_PAT$6_scanfail
.Lx684_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$6_scanhit
 xchain679_n2_β:
 xchain679_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$6_scanfail
proc_PAT$6_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$6_γ
proc_PAT$6_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$6_attempt
8:
jmp proc_PAT$6_ω
proc_PAT$6_res:
add rsp, 8
pop rbp
proc_PAT$6_β:
jmp qword ptr [rbp + 112]
proc_PAT$6_γ:
push rbp
lea rax, [rip + proc_PAT$6_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$6_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$7_α
proc_PAT$7_α:
#=======================================================================================================================
    .global proc_PAT$7_α
    .global proc_PAT$7_β
    .global proc_PAT$7_γ
    .global proc_PAT$7_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$7_attempt:
proc_PAT$7_α_body:
lea rax, [rip + xchain685_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain685_n0_α:
 mov rax, qword ptr [1879054080]
 mov rdx, qword ptr [1879054088]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain685_n1_α
 xchain685_n0_β:
 jmp proc_PAT$7_scanfail
# IR_COERCE_STRING
 xchain685_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain685_n2_α
 xchain685_n1_β:
 jmp proc_PAT$7_scanfail
# IR_VAR
 xchain685_n2_α:
 mov rax, qword ptr [1879054064]
 mov rdx, qword ptr [1879054072]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain685_n3_α
 xchain685_n2_β:
 jmp proc_PAT$7_scanfail
# IR_COERCE_STRING
 xchain685_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain685_n4_α
 xchain685_n3_β:
 jmp proc_PAT$7_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain685_n4_α:
 jmp xchain685_n5_α
xchain685_n4_as:
 jmp proc_PAT$7_γ
 xchain685_n4_β:
 jmp xchain685_n6_β
xchain685_n4_af:
 jmp proc_PAT$7_ω
# IR_MATCH_NOTANY
 xchain685_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain685_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain685_n4_af
 add r14d, 1
 jmp xchain685_n6_α
 xchain685_n5_β:
 sub r14d, 1
 jmp xchain685_n4_af
# IR_MATCH_BREAK
 xchain685_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx696_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx696_240
 add rsp, 16
 jmp xchain685_n5_β
.Lx696_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx696_1
 add dword ptr [rsp + 0], 1
 jmp .Lx696_0
.Lx696_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain685_n4_as
 xchain685_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain685_n5_β
proc_PAT$7_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$7_γ
proc_PAT$7_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$7_attempt
8:
jmp proc_PAT$7_ω
proc_PAT$7_res:
add rsp, 8
pop rbp
proc_PAT$7_β:
jmp qword ptr [rbp + 224]
proc_PAT$7_γ:
push rbp
lea rax, [rip + proc_PAT$7_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$7_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$8_α
proc_PAT$8_α:
#=======================================================================================================================
    .global proc_PAT$8_α
    .global proc_PAT$8_β
    .global proc_PAT$8_γ
    .global proc_PAT$8_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$8_attempt:
proc_PAT$8_α_body:
lea rax, [rip + xchain697_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain697_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain697_n1_α
 xchain697_n0_β:
 add rsp, 16
 jmp proc_PAT$8_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain697_n1_α:
 jmp xchain697_n3_α
xchain697_n1_as:
 jmp xchain697_n2_α
 xchain697_n1_β:
 jmp xchain697_n5_β
xchain697_n1_af:
 jmp xchain697_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain697_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$8_scanhit
 xchain697_n2_β:
 sub r12, 24
 jmp xchain697_n1_β
# IR_MATCH_LIT
 xchain697_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain697_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain697_n1_af
 add r14d, 1
 jmp xchain697_n4_α
 xchain697_n3_β:
 sub r14d, 1
 jmp xchain697_n1_af
# IR_MATCH_BAL
 xchain697_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain697_n4_β:
.Lx707_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx707_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx707_1
 add edx, 1
 jmp .Lx707_2
.Lx707_1:
 cmp esi, 41
 jne .Lx707_2
 sub edx, 1
 cmp edx, 0
 jl .Lx707_3
.Lx707_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx707_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain697_n5_α
.Lx707_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain697_n3_β
# IR_MATCH_LIT
 xchain697_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain697_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain697_n4_β
 add r14d, 1
 jmp xchain697_n1_as
 xchain697_n5_β:
 sub r14d, 1
 jmp xchain697_n4_β
proc_PAT$8_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$8_γ
proc_PAT$8_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$8_attempt
8:
jmp proc_PAT$8_ω
proc_PAT$8_res:
add rsp, 8
pop rbp
proc_PAT$8_β:
jmp qword ptr [rbp + 160]
proc_PAT$8_γ:
push rbp
lea rax, [rip + proc_PAT$8_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$8_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$9_α
proc_PAT$9_α:
#=======================================================================================================================
    .global proc_PAT$9_α
    .global proc_PAT$9_β
    .global proc_PAT$9_γ
    .global proc_PAT$9_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$9_attempt:
proc_PAT$9_α_body:
lea rax, [rip + xchain710_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain710_n0_α:
 mov rax, qword ptr [1879054096]
 mov rdx, qword ptr [1879054104]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain710_n1_α
# IR_COERCE_STRING
 xchain710_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain710_n2_α
# IR_MATCH_SPAN
 xchain710_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx715_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx715_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx715_1
 add dword ptr [rsp + 0], 1
 jmp .Lx715_0
.Lx715_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx715_240
 add rsp, 16
 jmp proc_PAT$9_scanfail
.Lx715_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$9_scanhit
 xchain710_n2_β:
 xchain710_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$9_scanfail
proc_PAT$9_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$9_γ
proc_PAT$9_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$9_attempt
8:
jmp proc_PAT$9_ω
proc_PAT$9_res:
add rsp, 8
pop rbp
proc_PAT$9_β:
jmp qword ptr [rbp + 112]
proc_PAT$9_γ:
push rbp
lea rax, [rip + proc_PAT$9_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$9_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$10_α
proc_PAT$10_α:
#=======================================================================================================================
    .global proc_PAT$10_α
    .global proc_PAT$10_β
    .global proc_PAT$10_γ
    .global proc_PAT$10_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$10_attempt:
proc_PAT$10_α_body:
lea rax, [rip + xchain716_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain716_n0_α:
 mov rax, qword ptr [1879054128]
 mov rdx, qword ptr [1879054136]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain716_n1_α
 xchain716_n0_β:
 jmp proc_PAT$10_scanfail
# IR_COERCE_STRING
 xchain716_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain716_n2_α
 xchain716_n1_β:
 jmp proc_PAT$10_scanfail
# IR_VAR
 xchain716_n2_α:
 mov rax, qword ptr [1879054112]
 mov rdx, qword ptr [1879054120]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain716_n3_α
 xchain716_n2_β:
 jmp proc_PAT$10_scanfail
# IR_COERCE_STRING
 xchain716_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain716_n4_α
 xchain716_n3_β:
 jmp proc_PAT$10_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain716_n4_α:
 jmp xchain716_n5_α
xchain716_n4_as:
 jmp proc_PAT$10_γ
 xchain716_n4_β:
 jmp xchain716_n6_β
xchain716_n4_af:
 jmp proc_PAT$10_ω
# IR_MATCH_NOTANY
 xchain716_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain716_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain716_n4_af
 add r14d, 1
 jmp xchain716_n6_α
 xchain716_n5_β:
 sub r14d, 1
 jmp xchain716_n4_af
# IR_MATCH_BREAK
 xchain716_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx727_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx727_240
 add rsp, 16
 jmp xchain716_n5_β
.Lx727_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx727_1
 add dword ptr [rsp + 0], 1
 jmp .Lx727_0
.Lx727_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain716_n4_as
 xchain716_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain716_n5_β
proc_PAT$10_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$10_γ
proc_PAT$10_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$10_attempt
8:
jmp proc_PAT$10_ω
proc_PAT$10_res:
add rsp, 8
pop rbp
proc_PAT$10_β:
jmp qword ptr [rbp + 224]
proc_PAT$10_γ:
push rbp
lea rax, [rip + proc_PAT$10_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$10_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$11_α
proc_PAT$11_α:
#=======================================================================================================================
    .global proc_PAT$11_α
    .global proc_PAT$11_β
    .global proc_PAT$11_γ
    .global proc_PAT$11_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$11_attempt:
proc_PAT$11_α_body:
lea rax, [rip + xchain728_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain728_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain728_n1_α
 xchain728_n0_β:
 add rsp, 16
 jmp proc_PAT$11_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain728_n1_α:
 jmp xchain728_n3_α
xchain728_n1_as:
 jmp xchain728_n2_α
 xchain728_n1_β:
 jmp xchain728_n5_β
xchain728_n1_af:
 jmp xchain728_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain728_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$11_scanhit
 xchain728_n2_β:
 sub r12, 24
 jmp xchain728_n1_β
# IR_MATCH_LIT
 xchain728_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain728_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain728_n1_af
 add r14d, 1
 jmp xchain728_n4_α
 xchain728_n3_β:
 sub r14d, 1
 jmp xchain728_n1_af
# IR_MATCH_BAL
 xchain728_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain728_n4_β:
.Lx738_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx738_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx738_1
 add edx, 1
 jmp .Lx738_2
.Lx738_1:
 cmp esi, 41
 jne .Lx738_2
 sub edx, 1
 cmp edx, 0
 jl .Lx738_3
.Lx738_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx738_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain728_n5_α
.Lx738_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain728_n3_β
# IR_MATCH_LIT
 xchain728_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain728_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain728_n4_β
 add r14d, 1
 jmp xchain728_n1_as
 xchain728_n5_β:
 sub r14d, 1
 jmp xchain728_n4_β
proc_PAT$11_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$11_γ
proc_PAT$11_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$11_attempt
8:
jmp proc_PAT$11_ω
proc_PAT$11_res:
add rsp, 8
pop rbp
proc_PAT$11_β:
jmp qword ptr [rbp + 160]
proc_PAT$11_γ:
push rbp
lea rax, [rip + proc_PAT$11_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$11_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$12_α
proc_PAT$12_α:
#=======================================================================================================================
    .global proc_PAT$12_α
    .global proc_PAT$12_β
    .global proc_PAT$12_γ
    .global proc_PAT$12_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$12_attempt:
proc_PAT$12_α_body:
lea rax, [rip + xchain741_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain741_n0_α:
 mov rax, qword ptr [1879054144]
 mov rdx, qword ptr [1879054152]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain741_n1_α
# IR_COERCE_STRING
 xchain741_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain741_n2_α
# IR_MATCH_SPAN
 xchain741_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx746_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx746_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx746_1
 add dword ptr [rsp + 0], 1
 jmp .Lx746_0
.Lx746_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx746_240
 add rsp, 16
 jmp proc_PAT$12_scanfail
.Lx746_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$12_scanhit
 xchain741_n2_β:
 xchain741_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$12_scanfail
proc_PAT$12_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$12_γ
proc_PAT$12_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$12_attempt
8:
jmp proc_PAT$12_ω
proc_PAT$12_res:
add rsp, 8
pop rbp
proc_PAT$12_β:
jmp qword ptr [rbp + 112]
proc_PAT$12_γ:
push rbp
lea rax, [rip + proc_PAT$12_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$12_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$13_α
proc_PAT$13_α:
#=======================================================================================================================
    .global proc_PAT$13_α
    .global proc_PAT$13_β
    .global proc_PAT$13_γ
    .global proc_PAT$13_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$13_attempt:
proc_PAT$13_α_body:
lea rax, [rip + xchain747_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain747_n0_α:
 mov rax, qword ptr [1879054176]
 mov rdx, qword ptr [1879054184]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain747_n1_α
 xchain747_n0_β:
 jmp proc_PAT$13_scanfail
# IR_COERCE_STRING
 xchain747_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain747_n2_α
 xchain747_n1_β:
 jmp proc_PAT$13_scanfail
# IR_VAR
 xchain747_n2_α:
 mov rax, qword ptr [1879054160]
 mov rdx, qword ptr [1879054168]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain747_n3_α
 xchain747_n2_β:
 jmp proc_PAT$13_scanfail
# IR_COERCE_STRING
 xchain747_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain747_n4_α
 xchain747_n3_β:
 jmp proc_PAT$13_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain747_n4_α:
 jmp xchain747_n5_α
xchain747_n4_as:
 jmp proc_PAT$13_γ
 xchain747_n4_β:
 jmp xchain747_n6_β
xchain747_n4_af:
 jmp proc_PAT$13_ω
# IR_MATCH_NOTANY
 xchain747_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain747_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain747_n4_af
 add r14d, 1
 jmp xchain747_n6_α
 xchain747_n5_β:
 sub r14d, 1
 jmp xchain747_n4_af
# IR_MATCH_BREAK
 xchain747_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx758_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx758_240
 add rsp, 16
 jmp xchain747_n5_β
.Lx758_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx758_1
 add dword ptr [rsp + 0], 1
 jmp .Lx758_0
.Lx758_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain747_n4_as
 xchain747_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain747_n5_β
proc_PAT$13_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$13_γ
proc_PAT$13_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$13_attempt
8:
jmp proc_PAT$13_ω
proc_PAT$13_res:
add rsp, 8
pop rbp
proc_PAT$13_β:
jmp qword ptr [rbp + 224]
proc_PAT$13_γ:
push rbp
lea rax, [rip + proc_PAT$13_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$13_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$14_α
proc_PAT$14_α:
#=======================================================================================================================
    .global proc_PAT$14_α
    .global proc_PAT$14_β
    .global proc_PAT$14_γ
    .global proc_PAT$14_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$14_attempt:
proc_PAT$14_α_body:
lea rax, [rip + xchain759_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain759_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain759_n1_α
 xchain759_n0_β:
 add rsp, 16
 jmp proc_PAT$14_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain759_n1_α:
 jmp xchain759_n3_α
xchain759_n1_as:
 jmp xchain759_n2_α
 xchain759_n1_β:
 jmp xchain759_n5_β
xchain759_n1_af:
 jmp xchain759_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain759_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$14_scanhit
 xchain759_n2_β:
 sub r12, 24
 jmp xchain759_n1_β
# IR_MATCH_LIT
 xchain759_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain759_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain759_n1_af
 add r14d, 1
 jmp xchain759_n4_α
 xchain759_n3_β:
 sub r14d, 1
 jmp xchain759_n1_af
# IR_MATCH_BAL
 xchain759_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain759_n4_β:
.Lx769_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx769_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx769_1
 add edx, 1
 jmp .Lx769_2
.Lx769_1:
 cmp esi, 41
 jne .Lx769_2
 sub edx, 1
 cmp edx, 0
 jl .Lx769_3
.Lx769_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx769_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain759_n5_α
.Lx769_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain759_n3_β
# IR_MATCH_LIT
 xchain759_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain759_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain759_n4_β
 add r14d, 1
 jmp xchain759_n1_as
 xchain759_n5_β:
 sub r14d, 1
 jmp xchain759_n4_β
proc_PAT$14_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$14_γ
proc_PAT$14_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$14_attempt
8:
jmp proc_PAT$14_ω
proc_PAT$14_res:
add rsp, 8
pop rbp
proc_PAT$14_β:
jmp qword ptr [rbp + 160]
proc_PAT$14_γ:
push rbp
lea rax, [rip + proc_PAT$14_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$14_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$15_α
proc_PAT$15_α:
#=======================================================================================================================
    .global proc_PAT$15_α
    .global proc_PAT$15_β
    .global proc_PAT$15_γ
    .global proc_PAT$15_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$15_attempt:
proc_PAT$15_α_body:
lea rax, [rip + xchain772_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain772_n0_α:
 mov rax, qword ptr [1879054192]
 mov rdx, qword ptr [1879054200]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain772_n1_α
# IR_COERCE_STRING
 xchain772_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain772_n2_α
# IR_MATCH_SPAN
 xchain772_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx777_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx777_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx777_1
 add dword ptr [rsp + 0], 1
 jmp .Lx777_0
.Lx777_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx777_240
 add rsp, 16
 jmp proc_PAT$15_scanfail
.Lx777_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$15_scanhit
 xchain772_n2_β:
 xchain772_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$15_scanfail
proc_PAT$15_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$15_γ
proc_PAT$15_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$15_attempt
8:
jmp proc_PAT$15_ω
proc_PAT$15_res:
add rsp, 8
pop rbp
proc_PAT$15_β:
jmp qword ptr [rbp + 112]
proc_PAT$15_γ:
push rbp
lea rax, [rip + proc_PAT$15_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$15_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$16_α
proc_PAT$16_α:
#=======================================================================================================================
    .global proc_PAT$16_α
    .global proc_PAT$16_β
    .global proc_PAT$16_γ
    .global proc_PAT$16_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$16_attempt:
proc_PAT$16_α_body:
lea rax, [rip + xchain778_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain778_n0_α:
 mov rax, qword ptr [1879054224]
 mov rdx, qword ptr [1879054232]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain778_n1_α
 xchain778_n0_β:
 jmp proc_PAT$16_scanfail
# IR_COERCE_STRING
 xchain778_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain778_n2_α
 xchain778_n1_β:
 jmp proc_PAT$16_scanfail
# IR_VAR
 xchain778_n2_α:
 mov rax, qword ptr [1879054208]
 mov rdx, qword ptr [1879054216]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain778_n3_α
 xchain778_n2_β:
 jmp proc_PAT$16_scanfail
# IR_COERCE_STRING
 xchain778_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain778_n4_α
 xchain778_n3_β:
 jmp proc_PAT$16_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain778_n4_α:
 jmp xchain778_n5_α
xchain778_n4_as:
 jmp proc_PAT$16_γ
 xchain778_n4_β:
 jmp xchain778_n6_β
xchain778_n4_af:
 jmp proc_PAT$16_ω
# IR_MATCH_NOTANY
 xchain778_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain778_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain778_n4_af
 add r14d, 1
 jmp xchain778_n6_α
 xchain778_n5_β:
 sub r14d, 1
 jmp xchain778_n4_af
# IR_MATCH_BREAK
 xchain778_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx789_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx789_240
 add rsp, 16
 jmp xchain778_n5_β
.Lx789_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx789_1
 add dword ptr [rsp + 0], 1
 jmp .Lx789_0
.Lx789_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain778_n4_as
 xchain778_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain778_n5_β
proc_PAT$16_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$16_γ
proc_PAT$16_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$16_attempt
8:
jmp proc_PAT$16_ω
proc_PAT$16_res:
add rsp, 8
pop rbp
proc_PAT$16_β:
jmp qword ptr [rbp + 224]
proc_PAT$16_γ:
push rbp
lea rax, [rip + proc_PAT$16_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$16_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$17_α
proc_PAT$17_α:
#=======================================================================================================================
    .global proc_PAT$17_α
    .global proc_PAT$17_β
    .global proc_PAT$17_γ
    .global proc_PAT$17_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$17_attempt:
proc_PAT$17_α_body:
lea rax, [rip + xchain790_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain790_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain790_n1_α
 xchain790_n0_β:
 add rsp, 16
 jmp proc_PAT$17_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain790_n1_α:
 jmp xchain790_n3_α
xchain790_n1_as:
 jmp xchain790_n2_α
 xchain790_n1_β:
 jmp xchain790_n5_β
xchain790_n1_af:
 jmp xchain790_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain790_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$17_scanhit
 xchain790_n2_β:
 sub r12, 24
 jmp xchain790_n1_β
# IR_MATCH_LIT
 xchain790_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain790_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain790_n1_af
 add r14d, 1
 jmp xchain790_n4_α
 xchain790_n3_β:
 sub r14d, 1
 jmp xchain790_n1_af
# IR_MATCH_BAL
 xchain790_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain790_n4_β:
.Lx800_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx800_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx800_1
 add edx, 1
 jmp .Lx800_2
.Lx800_1:
 cmp esi, 41
 jne .Lx800_2
 sub edx, 1
 cmp edx, 0
 jl .Lx800_3
.Lx800_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx800_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain790_n5_α
.Lx800_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain790_n3_β
# IR_MATCH_LIT
 xchain790_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain790_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain790_n4_β
 add r14d, 1
 jmp xchain790_n1_as
 xchain790_n5_β:
 sub r14d, 1
 jmp xchain790_n4_β
proc_PAT$17_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$17_γ
proc_PAT$17_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$17_attempt
8:
jmp proc_PAT$17_ω
proc_PAT$17_res:
add rsp, 8
pop rbp
proc_PAT$17_β:
jmp qword ptr [rbp + 160]
proc_PAT$17_γ:
push rbp
lea rax, [rip + proc_PAT$17_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$17_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$18_α
proc_PAT$18_α:
#=======================================================================================================================
    .global proc_PAT$18_α
    .global proc_PAT$18_β
    .global proc_PAT$18_γ
    .global proc_PAT$18_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$18_attempt:
proc_PAT$18_α_body:
lea rax, [rip + xchain803_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain803_n0_α:
 mov rax, qword ptr [1879054240]
 mov rdx, qword ptr [1879054248]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain803_n1_α
# IR_COERCE_STRING
 xchain803_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain803_n2_α
# IR_MATCH_SPAN
 xchain803_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx808_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx808_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx808_1
 add dword ptr [rsp + 0], 1
 jmp .Lx808_0
.Lx808_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx808_240
 add rsp, 16
 jmp proc_PAT$18_scanfail
.Lx808_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$18_scanhit
 xchain803_n2_β:
 xchain803_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$18_scanfail
proc_PAT$18_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$18_γ
proc_PAT$18_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$18_attempt
8:
jmp proc_PAT$18_ω
proc_PAT$18_res:
add rsp, 8
pop rbp
proc_PAT$18_β:
jmp qword ptr [rbp + 112]
proc_PAT$18_γ:
push rbp
lea rax, [rip + proc_PAT$18_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$18_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$19_α
proc_PAT$19_α:
#=======================================================================================================================
    .global proc_PAT$19_α
    .global proc_PAT$19_β
    .global proc_PAT$19_γ
    .global proc_PAT$19_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$19_attempt:
proc_PAT$19_α_body:
lea rax, [rip + xchain809_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain809_n0_α:
 mov rax, qword ptr [1879054272]
 mov rdx, qword ptr [1879054280]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain809_n1_α
 xchain809_n0_β:
 jmp proc_PAT$19_scanfail
# IR_COERCE_STRING
 xchain809_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain809_n2_α
 xchain809_n1_β:
 jmp proc_PAT$19_scanfail
# IR_VAR
 xchain809_n2_α:
 mov rax, qword ptr [1879054256]
 mov rdx, qword ptr [1879054264]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain809_n3_α
 xchain809_n2_β:
 jmp proc_PAT$19_scanfail
# IR_COERCE_STRING
 xchain809_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain809_n4_α
 xchain809_n3_β:
 jmp proc_PAT$19_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain809_n4_α:
 jmp xchain809_n5_α
xchain809_n4_as:
 jmp proc_PAT$19_γ
 xchain809_n4_β:
 jmp xchain809_n6_β
xchain809_n4_af:
 jmp proc_PAT$19_ω
# IR_MATCH_NOTANY
 xchain809_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain809_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain809_n4_af
 add r14d, 1
 jmp xchain809_n6_α
 xchain809_n5_β:
 sub r14d, 1
 jmp xchain809_n4_af
# IR_MATCH_BREAK
 xchain809_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx820_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx820_240
 add rsp, 16
 jmp xchain809_n5_β
.Lx820_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx820_1
 add dword ptr [rsp + 0], 1
 jmp .Lx820_0
.Lx820_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain809_n4_as
 xchain809_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain809_n5_β
proc_PAT$19_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$19_γ
proc_PAT$19_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$19_attempt
8:
jmp proc_PAT$19_ω
proc_PAT$19_res:
add rsp, 8
pop rbp
proc_PAT$19_β:
jmp qword ptr [rbp + 224]
proc_PAT$19_γ:
push rbp
lea rax, [rip + proc_PAT$19_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$19_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$20_α
proc_PAT$20_α:
#=======================================================================================================================
    .global proc_PAT$20_α
    .global proc_PAT$20_β
    .global proc_PAT$20_γ
    .global proc_PAT$20_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$20_attempt:
proc_PAT$20_α_body:
lea rax, [rip + xchain821_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain821_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain821_n1_α
 xchain821_n0_β:
 add rsp, 16
 jmp proc_PAT$20_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain821_n1_α:
 jmp xchain821_n3_α
xchain821_n1_as:
 jmp xchain821_n2_α
 xchain821_n1_β:
 jmp xchain821_n5_β
xchain821_n1_af:
 jmp xchain821_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain821_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$20_scanhit
 xchain821_n2_β:
 sub r12, 24
 jmp xchain821_n1_β
# IR_MATCH_LIT
 xchain821_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain821_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain821_n1_af
 add r14d, 1
 jmp xchain821_n4_α
 xchain821_n3_β:
 sub r14d, 1
 jmp xchain821_n1_af
# IR_MATCH_BAL
 xchain821_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain821_n4_β:
.Lx831_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx831_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx831_1
 add edx, 1
 jmp .Lx831_2
.Lx831_1:
 cmp esi, 41
 jne .Lx831_2
 sub edx, 1
 cmp edx, 0
 jl .Lx831_3
.Lx831_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx831_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain821_n5_α
.Lx831_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain821_n3_β
# IR_MATCH_LIT
 xchain821_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain821_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain821_n4_β
 add r14d, 1
 jmp xchain821_n1_as
 xchain821_n5_β:
 sub r14d, 1
 jmp xchain821_n4_β
proc_PAT$20_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$20_γ
proc_PAT$20_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$20_attempt
8:
jmp proc_PAT$20_ω
proc_PAT$20_res:
add rsp, 8
pop rbp
proc_PAT$20_β:
jmp qword ptr [rbp + 160]
proc_PAT$20_γ:
push rbp
lea rax, [rip + proc_PAT$20_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$20_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$21_α
proc_PAT$21_α:
#=======================================================================================================================
    .global proc_PAT$21_α
    .global proc_PAT$21_β
    .global proc_PAT$21_γ
    .global proc_PAT$21_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$21_attempt:
proc_PAT$21_α_body:
lea rax, [rip + xchain834_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain834_n0_α:
 mov rax, qword ptr [1879054288]
 mov rdx, qword ptr [1879054296]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain834_n1_α
# IR_COERCE_STRING
 xchain834_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain834_n2_α
# IR_MATCH_SPAN
 xchain834_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx839_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx839_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx839_1
 add dword ptr [rsp + 0], 1
 jmp .Lx839_0
.Lx839_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx839_240
 add rsp, 16
 jmp proc_PAT$21_scanfail
.Lx839_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$21_scanhit
 xchain834_n2_β:
 xchain834_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$21_scanfail
proc_PAT$21_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$21_γ
proc_PAT$21_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$21_attempt
8:
jmp proc_PAT$21_ω
proc_PAT$21_res:
add rsp, 8
pop rbp
proc_PAT$21_β:
jmp qword ptr [rbp + 112]
proc_PAT$21_γ:
push rbp
lea rax, [rip + proc_PAT$21_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$21_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$22_α
proc_PAT$22_α:
#=======================================================================================================================
    .global proc_PAT$22_α
    .global proc_PAT$22_β
    .global proc_PAT$22_γ
    .global proc_PAT$22_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$22_attempt:
proc_PAT$22_α_body:
lea rax, [rip + xchain840_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain840_n0_α:
 mov rax, qword ptr [1879054320]
 mov rdx, qword ptr [1879054328]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain840_n1_α
 xchain840_n0_β:
 jmp proc_PAT$22_scanfail
# IR_COERCE_STRING
 xchain840_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain840_n2_α
 xchain840_n1_β:
 jmp proc_PAT$22_scanfail
# IR_VAR
 xchain840_n2_α:
 mov rax, qword ptr [1879054304]
 mov rdx, qword ptr [1879054312]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain840_n3_α
 xchain840_n2_β:
 jmp proc_PAT$22_scanfail
# IR_COERCE_STRING
 xchain840_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain840_n4_α
 xchain840_n3_β:
 jmp proc_PAT$22_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain840_n4_α:
 jmp xchain840_n5_α
xchain840_n4_as:
 jmp proc_PAT$22_γ
 xchain840_n4_β:
 jmp xchain840_n6_β
xchain840_n4_af:
 jmp proc_PAT$22_ω
# IR_MATCH_NOTANY
 xchain840_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain840_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain840_n4_af
 add r14d, 1
 jmp xchain840_n6_α
 xchain840_n5_β:
 sub r14d, 1
 jmp xchain840_n4_af
# IR_MATCH_BREAK
 xchain840_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx851_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx851_240
 add rsp, 16
 jmp xchain840_n5_β
.Lx851_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx851_1
 add dword ptr [rsp + 0], 1
 jmp .Lx851_0
.Lx851_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain840_n4_as
 xchain840_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain840_n5_β
proc_PAT$22_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$22_γ
proc_PAT$22_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$22_attempt
8:
jmp proc_PAT$22_ω
proc_PAT$22_res:
add rsp, 8
pop rbp
proc_PAT$22_β:
jmp qword ptr [rbp + 224]
proc_PAT$22_γ:
push rbp
lea rax, [rip + proc_PAT$22_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$22_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$23_α
proc_PAT$23_α:
#=======================================================================================================================
    .global proc_PAT$23_α
    .global proc_PAT$23_β
    .global proc_PAT$23_γ
    .global proc_PAT$23_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$23_attempt:
proc_PAT$23_α_body:
lea rax, [rip + xchain852_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain852_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain852_n1_α
 xchain852_n0_β:
 add rsp, 16
 jmp proc_PAT$23_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain852_n1_α:
 jmp xchain852_n3_α
xchain852_n1_as:
 jmp xchain852_n2_α
 xchain852_n1_β:
 jmp xchain852_n5_β
xchain852_n1_af:
 jmp xchain852_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain852_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$23_scanhit
 xchain852_n2_β:
 sub r12, 24
 jmp xchain852_n1_β
# IR_MATCH_LIT
 xchain852_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain852_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain852_n1_af
 add r14d, 1
 jmp xchain852_n4_α
 xchain852_n3_β:
 sub r14d, 1
 jmp xchain852_n1_af
# IR_MATCH_BAL
 xchain852_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain852_n4_β:
.Lx862_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx862_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx862_1
 add edx, 1
 jmp .Lx862_2
.Lx862_1:
 cmp esi, 41
 jne .Lx862_2
 sub edx, 1
 cmp edx, 0
 jl .Lx862_3
.Lx862_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx862_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain852_n5_α
.Lx862_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain852_n3_β
# IR_MATCH_LIT
 xchain852_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain852_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain852_n4_β
 add r14d, 1
 jmp xchain852_n1_as
 xchain852_n5_β:
 sub r14d, 1
 jmp xchain852_n4_β
proc_PAT$23_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$23_γ
proc_PAT$23_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$23_attempt
8:
jmp proc_PAT$23_ω
proc_PAT$23_res:
add rsp, 8
pop rbp
proc_PAT$23_β:
jmp qword ptr [rbp + 160]
proc_PAT$23_γ:
push rbp
lea rax, [rip + proc_PAT$23_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$23_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$24_α
proc_PAT$24_α:
#=======================================================================================================================
    .global proc_PAT$24_α
    .global proc_PAT$24_β
    .global proc_PAT$24_γ
    .global proc_PAT$24_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$24_attempt:
proc_PAT$24_α_body:
lea rax, [rip + xchain865_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain865_n0_α:
 mov rax, qword ptr [1879054336]
 mov rdx, qword ptr [1879054344]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain865_n1_α
# IR_COERCE_STRING
 xchain865_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain865_n2_α
# IR_MATCH_SPAN
 xchain865_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx870_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx870_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx870_1
 add dword ptr [rsp + 0], 1
 jmp .Lx870_0
.Lx870_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx870_240
 add rsp, 16
 jmp proc_PAT$24_scanfail
.Lx870_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$24_scanhit
 xchain865_n2_β:
 xchain865_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$24_scanfail
proc_PAT$24_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$24_γ
proc_PAT$24_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$24_attempt
8:
jmp proc_PAT$24_ω
proc_PAT$24_res:
add rsp, 8
pop rbp
proc_PAT$24_β:
jmp qword ptr [rbp + 112]
proc_PAT$24_γ:
push rbp
lea rax, [rip + proc_PAT$24_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$24_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$25_α
proc_PAT$25_α:
#=======================================================================================================================
    .global proc_PAT$25_α
    .global proc_PAT$25_β
    .global proc_PAT$25_γ
    .global proc_PAT$25_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$25_attempt:
proc_PAT$25_α_body:
lea rax, [rip + xchain871_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain871_n0_α:
 mov rax, qword ptr [1879054368]
 mov rdx, qword ptr [1879054376]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain871_n1_α
 xchain871_n0_β:
 jmp proc_PAT$25_scanfail
# IR_COERCE_STRING
 xchain871_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain871_n2_α
 xchain871_n1_β:
 jmp proc_PAT$25_scanfail
# IR_VAR
 xchain871_n2_α:
 mov rax, qword ptr [1879054352]
 mov rdx, qword ptr [1879054360]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain871_n3_α
 xchain871_n2_β:
 jmp proc_PAT$25_scanfail
# IR_COERCE_STRING
 xchain871_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain871_n4_α
 xchain871_n3_β:
 jmp proc_PAT$25_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain871_n4_α:
 jmp xchain871_n5_α
xchain871_n4_as:
 jmp proc_PAT$25_γ
 xchain871_n4_β:
 jmp xchain871_n6_β
xchain871_n4_af:
 jmp proc_PAT$25_ω
# IR_MATCH_NOTANY
 xchain871_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain871_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain871_n4_af
 add r14d, 1
 jmp xchain871_n6_α
 xchain871_n5_β:
 sub r14d, 1
 jmp xchain871_n4_af
# IR_MATCH_BREAK
 xchain871_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx882_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx882_240
 add rsp, 16
 jmp xchain871_n5_β
.Lx882_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx882_1
 add dword ptr [rsp + 0], 1
 jmp .Lx882_0
.Lx882_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain871_n4_as
 xchain871_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain871_n5_β
proc_PAT$25_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$25_γ
proc_PAT$25_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$25_attempt
8:
jmp proc_PAT$25_ω
proc_PAT$25_res:
add rsp, 8
pop rbp
proc_PAT$25_β:
jmp qword ptr [rbp + 224]
proc_PAT$25_γ:
push rbp
lea rax, [rip + proc_PAT$25_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$25_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$26_α
proc_PAT$26_α:
#=======================================================================================================================
    .global proc_PAT$26_α
    .global proc_PAT$26_β
    .global proc_PAT$26_γ
    .global proc_PAT$26_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$26_attempt:
proc_PAT$26_α_body:
lea rax, [rip + xchain883_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain883_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain883_n1_α
 xchain883_n0_β:
 add rsp, 16
 jmp proc_PAT$26_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain883_n1_α:
 jmp xchain883_n3_α
xchain883_n1_as:
 jmp xchain883_n2_α
 xchain883_n1_β:
 jmp xchain883_n5_β
xchain883_n1_af:
 jmp xchain883_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain883_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$26_scanhit
 xchain883_n2_β:
 sub r12, 24
 jmp xchain883_n1_β
# IR_MATCH_LIT
 xchain883_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain883_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain883_n1_af
 add r14d, 1
 jmp xchain883_n4_α
 xchain883_n3_β:
 sub r14d, 1
 jmp xchain883_n1_af
# IR_MATCH_BAL
 xchain883_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain883_n4_β:
.Lx893_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx893_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx893_1
 add edx, 1
 jmp .Lx893_2
.Lx893_1:
 cmp esi, 41
 jne .Lx893_2
 sub edx, 1
 cmp edx, 0
 jl .Lx893_3
.Lx893_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx893_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain883_n5_α
.Lx893_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain883_n3_β
# IR_MATCH_LIT
 xchain883_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain883_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain883_n4_β
 add r14d, 1
 jmp xchain883_n1_as
 xchain883_n5_β:
 sub r14d, 1
 jmp xchain883_n4_β
proc_PAT$26_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$26_γ
proc_PAT$26_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$26_attempt
8:
jmp proc_PAT$26_ω
proc_PAT$26_res:
add rsp, 8
pop rbp
proc_PAT$26_β:
jmp qword ptr [rbp + 160]
proc_PAT$26_γ:
push rbp
lea rax, [rip + proc_PAT$26_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$26_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$27_α
proc_PAT$27_α:
#=======================================================================================================================
    .global proc_PAT$27_α
    .global proc_PAT$27_β
    .global proc_PAT$27_γ
    .global proc_PAT$27_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$27_attempt:
proc_PAT$27_α_body:
lea rax, [rip + xchain896_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain896_n0_α:
 mov rax, qword ptr [1879054384]
 mov rdx, qword ptr [1879054392]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain896_n1_α
# IR_COERCE_STRING
 xchain896_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain896_n2_α
# IR_MATCH_SPAN
 xchain896_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx901_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx901_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx901_1
 add dword ptr [rsp + 0], 1
 jmp .Lx901_0
.Lx901_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx901_240
 add rsp, 16
 jmp proc_PAT$27_scanfail
.Lx901_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$27_scanhit
 xchain896_n2_β:
 xchain896_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$27_scanfail
proc_PAT$27_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$27_γ
proc_PAT$27_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$27_attempt
8:
jmp proc_PAT$27_ω
proc_PAT$27_res:
add rsp, 8
pop rbp
proc_PAT$27_β:
jmp qword ptr [rbp + 112]
proc_PAT$27_γ:
push rbp
lea rax, [rip + proc_PAT$27_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$27_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$28_α
proc_PAT$28_α:
#=======================================================================================================================
    .global proc_PAT$28_α
    .global proc_PAT$28_β
    .global proc_PAT$28_γ
    .global proc_PAT$28_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$28_attempt:
proc_PAT$28_α_body:
lea rax, [rip + xchain902_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain902_n0_α:
 mov rax, qword ptr [1879054416]
 mov rdx, qword ptr [1879054424]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain902_n1_α
 xchain902_n0_β:
 jmp proc_PAT$28_scanfail
# IR_COERCE_STRING
 xchain902_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain902_n2_α
 xchain902_n1_β:
 jmp proc_PAT$28_scanfail
# IR_VAR
 xchain902_n2_α:
 mov rax, qword ptr [1879054400]
 mov rdx, qword ptr [1879054408]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain902_n3_α
 xchain902_n2_β:
 jmp proc_PAT$28_scanfail
# IR_COERCE_STRING
 xchain902_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain902_n4_α
 xchain902_n3_β:
 jmp proc_PAT$28_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain902_n4_α:
 jmp xchain902_n5_α
xchain902_n4_as:
 jmp proc_PAT$28_γ
 xchain902_n4_β:
 jmp xchain902_n6_β
xchain902_n4_af:
 jmp proc_PAT$28_ω
# IR_MATCH_NOTANY
 xchain902_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain902_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain902_n4_af
 add r14d, 1
 jmp xchain902_n6_α
 xchain902_n5_β:
 sub r14d, 1
 jmp xchain902_n4_af
# IR_MATCH_BREAK
 xchain902_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx913_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx913_240
 add rsp, 16
 jmp xchain902_n5_β
.Lx913_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx913_1
 add dword ptr [rsp + 0], 1
 jmp .Lx913_0
.Lx913_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain902_n4_as
 xchain902_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain902_n5_β
proc_PAT$28_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$28_γ
proc_PAT$28_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$28_attempt
8:
jmp proc_PAT$28_ω
proc_PAT$28_res:
add rsp, 8
pop rbp
proc_PAT$28_β:
jmp qword ptr [rbp + 224]
proc_PAT$28_γ:
push rbp
lea rax, [rip + proc_PAT$28_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$28_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$29_α
proc_PAT$29_α:
#=======================================================================================================================
    .global proc_PAT$29_α
    .global proc_PAT$29_β
    .global proc_PAT$29_γ
    .global proc_PAT$29_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$29_attempt:
proc_PAT$29_α_body:
lea rax, [rip + xchain914_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain914_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain914_n1_α
 xchain914_n0_β:
 add rsp, 16
 jmp proc_PAT$29_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain914_n1_α:
 jmp xchain914_n3_α
xchain914_n1_as:
 jmp xchain914_n2_α
 xchain914_n1_β:
 jmp xchain914_n5_β
xchain914_n1_af:
 jmp xchain914_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain914_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$29_scanhit
 xchain914_n2_β:
 sub r12, 24
 jmp xchain914_n1_β
# IR_MATCH_LIT
 xchain914_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain914_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain914_n1_af
 add r14d, 1
 jmp xchain914_n4_α
 xchain914_n3_β:
 sub r14d, 1
 jmp xchain914_n1_af
# IR_MATCH_BAL
 xchain914_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain914_n4_β:
.Lx924_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx924_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx924_1
 add edx, 1
 jmp .Lx924_2
.Lx924_1:
 cmp esi, 41
 jne .Lx924_2
 sub edx, 1
 cmp edx, 0
 jl .Lx924_3
.Lx924_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx924_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain914_n5_α
.Lx924_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain914_n3_β
# IR_MATCH_LIT
 xchain914_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain914_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain914_n4_β
 add r14d, 1
 jmp xchain914_n1_as
 xchain914_n5_β:
 sub r14d, 1
 jmp xchain914_n4_β
proc_PAT$29_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$29_γ
proc_PAT$29_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$29_attempt
8:
jmp proc_PAT$29_ω
proc_PAT$29_res:
add rsp, 8
pop rbp
proc_PAT$29_β:
jmp qword ptr [rbp + 160]
proc_PAT$29_γ:
push rbp
lea rax, [rip + proc_PAT$29_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$29_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$30_α
proc_PAT$30_α:
#=======================================================================================================================
    .global proc_PAT$30_α
    .global proc_PAT$30_β
    .global proc_PAT$30_γ
    .global proc_PAT$30_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$30_attempt:
proc_PAT$30_α_body:
lea rax, [rip + xchain927_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain927_n0_α:
 mov rax, qword ptr [1879054432]
 mov rdx, qword ptr [1879054440]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain927_n1_α
# IR_COERCE_STRING
 xchain927_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain927_n2_α
# IR_MATCH_SPAN
 xchain927_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx932_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx932_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx932_1
 add dword ptr [rsp + 0], 1
 jmp .Lx932_0
.Lx932_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx932_240
 add rsp, 16
 jmp proc_PAT$30_scanfail
.Lx932_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$30_scanhit
 xchain927_n2_β:
 xchain927_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$30_scanfail
proc_PAT$30_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$30_γ
proc_PAT$30_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$30_attempt
8:
jmp proc_PAT$30_ω
proc_PAT$30_res:
add rsp, 8
pop rbp
proc_PAT$30_β:
jmp qword ptr [rbp + 112]
proc_PAT$30_γ:
push rbp
lea rax, [rip + proc_PAT$30_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$30_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$31_α
proc_PAT$31_α:
#=======================================================================================================================
    .global proc_PAT$31_α
    .global proc_PAT$31_β
    .global proc_PAT$31_γ
    .global proc_PAT$31_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$31_attempt:
proc_PAT$31_α_body:
lea rax, [rip + xchain933_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain933_n0_α:
 mov rax, qword ptr [1879054464]
 mov rdx, qword ptr [1879054472]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain933_n1_α
 xchain933_n0_β:
 jmp proc_PAT$31_scanfail
# IR_COERCE_STRING
 xchain933_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain933_n2_α
 xchain933_n1_β:
 jmp proc_PAT$31_scanfail
# IR_VAR
 xchain933_n2_α:
 mov rax, qword ptr [1879054448]
 mov rdx, qword ptr [1879054456]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain933_n3_α
 xchain933_n2_β:
 jmp proc_PAT$31_scanfail
# IR_COERCE_STRING
 xchain933_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain933_n4_α
 xchain933_n3_β:
 jmp proc_PAT$31_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain933_n4_α:
 jmp xchain933_n5_α
xchain933_n4_as:
 jmp proc_PAT$31_γ
 xchain933_n4_β:
 jmp xchain933_n6_β
xchain933_n4_af:
 jmp proc_PAT$31_ω
# IR_MATCH_NOTANY
 xchain933_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain933_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain933_n4_af
 add r14d, 1
 jmp xchain933_n6_α
 xchain933_n5_β:
 sub r14d, 1
 jmp xchain933_n4_af
# IR_MATCH_BREAK
 xchain933_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx944_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx944_240
 add rsp, 16
 jmp xchain933_n5_β
.Lx944_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx944_1
 add dword ptr [rsp + 0], 1
 jmp .Lx944_0
.Lx944_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain933_n4_as
 xchain933_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain933_n5_β
proc_PAT$31_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$31_γ
proc_PAT$31_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$31_attempt
8:
jmp proc_PAT$31_ω
proc_PAT$31_res:
add rsp, 8
pop rbp
proc_PAT$31_β:
jmp qword ptr [rbp + 224]
proc_PAT$31_γ:
push rbp
lea rax, [rip + proc_PAT$31_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$31_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$32_α
proc_PAT$32_α:
#=======================================================================================================================
    .global proc_PAT$32_α
    .global proc_PAT$32_β
    .global proc_PAT$32_γ
    .global proc_PAT$32_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$32_attempt:
proc_PAT$32_α_body:
lea rax, [rip + xchain945_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain945_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain945_n1_α
 xchain945_n0_β:
 add rsp, 16
 jmp proc_PAT$32_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain945_n1_α:
 jmp xchain945_n3_α
xchain945_n1_as:
 jmp xchain945_n2_α
 xchain945_n1_β:
 jmp xchain945_n5_β
xchain945_n1_af:
 jmp xchain945_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain945_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$32_scanhit
 xchain945_n2_β:
 sub r12, 24
 jmp xchain945_n1_β
# IR_MATCH_LIT
 xchain945_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain945_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain945_n1_af
 add r14d, 1
 jmp xchain945_n4_α
 xchain945_n3_β:
 sub r14d, 1
 jmp xchain945_n1_af
# IR_MATCH_BAL
 xchain945_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain945_n4_β:
.Lx955_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx955_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx955_1
 add edx, 1
 jmp .Lx955_2
.Lx955_1:
 cmp esi, 41
 jne .Lx955_2
 sub edx, 1
 cmp edx, 0
 jl .Lx955_3
.Lx955_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx955_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain945_n5_α
.Lx955_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain945_n3_β
# IR_MATCH_LIT
 xchain945_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain945_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain945_n4_β
 add r14d, 1
 jmp xchain945_n1_as
 xchain945_n5_β:
 sub r14d, 1
 jmp xchain945_n4_β
proc_PAT$32_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$32_γ
proc_PAT$32_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$32_attempt
8:
jmp proc_PAT$32_ω
proc_PAT$32_res:
add rsp, 8
pop rbp
proc_PAT$32_β:
jmp qword ptr [rbp + 160]
proc_PAT$32_γ:
push rbp
lea rax, [rip + proc_PAT$32_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$32_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$33_α
proc_PAT$33_α:
#=======================================================================================================================
    .global proc_PAT$33_α
    .global proc_PAT$33_β
    .global proc_PAT$33_γ
    .global proc_PAT$33_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$33_attempt:
proc_PAT$33_α_body:
lea rax, [rip + xchain958_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain958_n0_α:
 mov rax, qword ptr [1879054480]
 mov rdx, qword ptr [1879054488]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain958_n1_α
# IR_COERCE_STRING
 xchain958_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain958_n2_α
# IR_MATCH_SPAN
 xchain958_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx963_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx963_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx963_1
 add dword ptr [rsp + 0], 1
 jmp .Lx963_0
.Lx963_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx963_240
 add rsp, 16
 jmp proc_PAT$33_scanfail
.Lx963_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$33_scanhit
 xchain958_n2_β:
 xchain958_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$33_scanfail
proc_PAT$33_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$33_γ
proc_PAT$33_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$33_attempt
8:
jmp proc_PAT$33_ω
proc_PAT$33_res:
add rsp, 8
pop rbp
proc_PAT$33_β:
jmp qword ptr [rbp + 112]
proc_PAT$33_γ:
push rbp
lea rax, [rip + proc_PAT$33_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$33_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$34_α
proc_PAT$34_α:
#=======================================================================================================================
    .global proc_PAT$34_α
    .global proc_PAT$34_β
    .global proc_PAT$34_γ
    .global proc_PAT$34_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$34_attempt:
proc_PAT$34_α_body:
lea rax, [rip + xchain964_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain964_n0_α:
 mov rax, qword ptr [1879054512]
 mov rdx, qword ptr [1879054520]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain964_n1_α
 xchain964_n0_β:
 jmp proc_PAT$34_scanfail
# IR_COERCE_STRING
 xchain964_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain964_n2_α
 xchain964_n1_β:
 jmp proc_PAT$34_scanfail
# IR_VAR
 xchain964_n2_α:
 mov rax, qword ptr [1879054496]
 mov rdx, qword ptr [1879054504]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain964_n3_α
 xchain964_n2_β:
 jmp proc_PAT$34_scanfail
# IR_COERCE_STRING
 xchain964_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain964_n4_α
 xchain964_n3_β:
 jmp proc_PAT$34_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain964_n4_α:
 jmp xchain964_n5_α
xchain964_n4_as:
 jmp proc_PAT$34_γ
 xchain964_n4_β:
 jmp xchain964_n6_β
xchain964_n4_af:
 jmp proc_PAT$34_ω
# IR_MATCH_NOTANY
 xchain964_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain964_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain964_n4_af
 add r14d, 1
 jmp xchain964_n6_α
 xchain964_n5_β:
 sub r14d, 1
 jmp xchain964_n4_af
# IR_MATCH_BREAK
 xchain964_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx975_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx975_240
 add rsp, 16
 jmp xchain964_n5_β
.Lx975_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx975_1
 add dword ptr [rsp + 0], 1
 jmp .Lx975_0
.Lx975_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain964_n4_as
 xchain964_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain964_n5_β
proc_PAT$34_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$34_γ
proc_PAT$34_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$34_attempt
8:
jmp proc_PAT$34_ω
proc_PAT$34_res:
add rsp, 8
pop rbp
proc_PAT$34_β:
jmp qword ptr [rbp + 224]
proc_PAT$34_γ:
push rbp
lea rax, [rip + proc_PAT$34_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$34_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$35_α
proc_PAT$35_α:
#=======================================================================================================================
    .global proc_PAT$35_α
    .global proc_PAT$35_β
    .global proc_PAT$35_γ
    .global proc_PAT$35_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$35_attempt:
proc_PAT$35_α_body:
lea rax, [rip + xchain976_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain976_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain976_n1_α
 xchain976_n0_β:
 add rsp, 16
 jmp proc_PAT$35_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain976_n1_α:
 jmp xchain976_n3_α
xchain976_n1_as:
 jmp xchain976_n2_α
 xchain976_n1_β:
 jmp xchain976_n5_β
xchain976_n1_af:
 jmp xchain976_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain976_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$35_scanhit
 xchain976_n2_β:
 sub r12, 24
 jmp xchain976_n1_β
# IR_MATCH_LIT
 xchain976_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain976_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain976_n1_af
 add r14d, 1
 jmp xchain976_n4_α
 xchain976_n3_β:
 sub r14d, 1
 jmp xchain976_n1_af
# IR_MATCH_BAL
 xchain976_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain976_n4_β:
.Lx986_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx986_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx986_1
 add edx, 1
 jmp .Lx986_2
.Lx986_1:
 cmp esi, 41
 jne .Lx986_2
 sub edx, 1
 cmp edx, 0
 jl .Lx986_3
.Lx986_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx986_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain976_n5_α
.Lx986_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain976_n3_β
# IR_MATCH_LIT
 xchain976_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain976_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain976_n4_β
 add r14d, 1
 jmp xchain976_n1_as
 xchain976_n5_β:
 sub r14d, 1
 jmp xchain976_n4_β
proc_PAT$35_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$35_γ
proc_PAT$35_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$35_attempt
8:
jmp proc_PAT$35_ω
proc_PAT$35_res:
add rsp, 8
pop rbp
proc_PAT$35_β:
jmp qword ptr [rbp + 160]
proc_PAT$35_γ:
push rbp
lea rax, [rip + proc_PAT$35_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$35_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$36_α
proc_PAT$36_α:
#=======================================================================================================================
    .global proc_PAT$36_α
    .global proc_PAT$36_β
    .global proc_PAT$36_γ
    .global proc_PAT$36_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$36_attempt:
proc_PAT$36_α_body:
lea rax, [rip + xchain989_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain989_n0_α:
 mov rax, qword ptr [1879054528]
 mov rdx, qword ptr [1879054536]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain989_n1_α
# IR_COERCE_STRING
 xchain989_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain989_n2_α
# IR_MATCH_SPAN
 xchain989_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx994_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx994_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx994_1
 add dword ptr [rsp + 0], 1
 jmp .Lx994_0
.Lx994_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx994_240
 add rsp, 16
 jmp proc_PAT$36_scanfail
.Lx994_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$36_scanhit
 xchain989_n2_β:
 xchain989_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$36_scanfail
proc_PAT$36_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$36_γ
proc_PAT$36_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$36_attempt
8:
jmp proc_PAT$36_ω
proc_PAT$36_res:
add rsp, 8
pop rbp
proc_PAT$36_β:
jmp qword ptr [rbp + 112]
proc_PAT$36_γ:
push rbp
lea rax, [rip + proc_PAT$36_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$36_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$37_α
proc_PAT$37_α:
#=======================================================================================================================
    .global proc_PAT$37_α
    .global proc_PAT$37_β
    .global proc_PAT$37_γ
    .global proc_PAT$37_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$37_attempt:
proc_PAT$37_α_body:
lea rax, [rip + xchain995_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain995_n0_α:
 mov rax, qword ptr [1879054560]
 mov rdx, qword ptr [1879054568]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain995_n1_α
 xchain995_n0_β:
 jmp proc_PAT$37_scanfail
# IR_COERCE_STRING
 xchain995_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain995_n2_α
 xchain995_n1_β:
 jmp proc_PAT$37_scanfail
# IR_VAR
 xchain995_n2_α:
 mov rax, qword ptr [1879054544]
 mov rdx, qword ptr [1879054552]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain995_n3_α
 xchain995_n2_β:
 jmp proc_PAT$37_scanfail
# IR_COERCE_STRING
 xchain995_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain995_n4_α
 xchain995_n3_β:
 jmp proc_PAT$37_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain995_n4_α:
 jmp xchain995_n5_α
xchain995_n4_as:
 jmp proc_PAT$37_γ
 xchain995_n4_β:
 jmp xchain995_n6_β
xchain995_n4_af:
 jmp proc_PAT$37_ω
# IR_MATCH_NOTANY
 xchain995_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain995_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain995_n4_af
 add r14d, 1
 jmp xchain995_n6_α
 xchain995_n5_β:
 sub r14d, 1
 jmp xchain995_n4_af
# IR_MATCH_BREAK
 xchain995_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1006_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1006_240
 add rsp, 16
 jmp xchain995_n5_β
.Lx1006_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1006_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1006_0
.Lx1006_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain995_n4_as
 xchain995_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain995_n5_β
proc_PAT$37_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$37_γ
proc_PAT$37_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$37_attempt
8:
jmp proc_PAT$37_ω
proc_PAT$37_res:
add rsp, 8
pop rbp
proc_PAT$37_β:
jmp qword ptr [rbp + 224]
proc_PAT$37_γ:
push rbp
lea rax, [rip + proc_PAT$37_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$37_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$38_α
proc_PAT$38_α:
#=======================================================================================================================
    .global proc_PAT$38_α
    .global proc_PAT$38_β
    .global proc_PAT$38_γ
    .global proc_PAT$38_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$38_attempt:
proc_PAT$38_α_body:
lea rax, [rip + xchain1007_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1007_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1007_n1_α
 xchain1007_n0_β:
 add rsp, 16
 jmp proc_PAT$38_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1007_n1_α:
 jmp xchain1007_n3_α
xchain1007_n1_as:
 jmp xchain1007_n2_α
 xchain1007_n1_β:
 jmp xchain1007_n5_β
xchain1007_n1_af:
 jmp xchain1007_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1007_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$38_scanhit
 xchain1007_n2_β:
 sub r12, 24
 jmp xchain1007_n1_β
# IR_MATCH_LIT
 xchain1007_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1007_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1007_n1_af
 add r14d, 1
 jmp xchain1007_n4_α
 xchain1007_n3_β:
 sub r14d, 1
 jmp xchain1007_n1_af
# IR_MATCH_BAL
 xchain1007_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1007_n4_β:
.Lx1017_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1017_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1017_1
 add edx, 1
 jmp .Lx1017_2
.Lx1017_1:
 cmp esi, 41
 jne .Lx1017_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1017_3
.Lx1017_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1017_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1007_n5_α
.Lx1017_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1007_n3_β
# IR_MATCH_LIT
 xchain1007_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1007_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1007_n4_β
 add r14d, 1
 jmp xchain1007_n1_as
 xchain1007_n5_β:
 sub r14d, 1
 jmp xchain1007_n4_β
proc_PAT$38_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$38_γ
proc_PAT$38_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$38_attempt
8:
jmp proc_PAT$38_ω
proc_PAT$38_res:
add rsp, 8
pop rbp
proc_PAT$38_β:
jmp qword ptr [rbp + 160]
proc_PAT$38_γ:
push rbp
lea rax, [rip + proc_PAT$38_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$38_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$39_α
proc_PAT$39_α:
#=======================================================================================================================
    .global proc_PAT$39_α
    .global proc_PAT$39_β
    .global proc_PAT$39_γ
    .global proc_PAT$39_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$39_attempt:
proc_PAT$39_α_body:
lea rax, [rip + xchain1020_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1020_n0_α:
 mov rax, qword ptr [1879054576]
 mov rdx, qword ptr [1879054584]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1020_n1_α
# IR_COERCE_STRING
 xchain1020_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1020_n2_α
# IR_MATCH_SPAN
 xchain1020_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1025_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1025_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1025_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1025_0
.Lx1025_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1025_240
 add rsp, 16
 jmp proc_PAT$39_scanfail
.Lx1025_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$39_scanhit
 xchain1020_n2_β:
 xchain1020_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$39_scanfail
proc_PAT$39_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$39_γ
proc_PAT$39_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$39_attempt
8:
jmp proc_PAT$39_ω
proc_PAT$39_res:
add rsp, 8
pop rbp
proc_PAT$39_β:
jmp qword ptr [rbp + 112]
proc_PAT$39_γ:
push rbp
lea rax, [rip + proc_PAT$39_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$39_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$40_α
proc_PAT$40_α:
#=======================================================================================================================
    .global proc_PAT$40_α
    .global proc_PAT$40_β
    .global proc_PAT$40_γ
    .global proc_PAT$40_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$40_attempt:
proc_PAT$40_α_body:
lea rax, [rip + xchain1026_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1026_n0_α:
 mov rax, qword ptr [1879054608]
 mov rdx, qword ptr [1879054616]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1026_n1_α
 xchain1026_n0_β:
 jmp proc_PAT$40_scanfail
# IR_COERCE_STRING
 xchain1026_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1026_n2_α
 xchain1026_n1_β:
 jmp proc_PAT$40_scanfail
# IR_VAR
 xchain1026_n2_α:
 mov rax, qword ptr [1879054592]
 mov rdx, qword ptr [1879054600]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1026_n3_α
 xchain1026_n2_β:
 jmp proc_PAT$40_scanfail
# IR_COERCE_STRING
 xchain1026_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1026_n4_α
 xchain1026_n3_β:
 jmp proc_PAT$40_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1026_n4_α:
 jmp xchain1026_n5_α
xchain1026_n4_as:
 jmp proc_PAT$40_γ
 xchain1026_n4_β:
 jmp xchain1026_n6_β
xchain1026_n4_af:
 jmp proc_PAT$40_ω
# IR_MATCH_NOTANY
 xchain1026_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1026_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1026_n4_af
 add r14d, 1
 jmp xchain1026_n6_α
 xchain1026_n5_β:
 sub r14d, 1
 jmp xchain1026_n4_af
# IR_MATCH_BREAK
 xchain1026_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1037_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1037_240
 add rsp, 16
 jmp xchain1026_n5_β
.Lx1037_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1037_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1037_0
.Lx1037_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1026_n4_as
 xchain1026_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1026_n5_β
proc_PAT$40_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$40_γ
proc_PAT$40_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$40_attempt
8:
jmp proc_PAT$40_ω
proc_PAT$40_res:
add rsp, 8
pop rbp
proc_PAT$40_β:
jmp qword ptr [rbp + 224]
proc_PAT$40_γ:
push rbp
lea rax, [rip + proc_PAT$40_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$40_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$41_α
proc_PAT$41_α:
#=======================================================================================================================
    .global proc_PAT$41_α
    .global proc_PAT$41_β
    .global proc_PAT$41_γ
    .global proc_PAT$41_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$41_attempt:
proc_PAT$41_α_body:
lea rax, [rip + xchain1038_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1038_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1038_n1_α
 xchain1038_n0_β:
 add rsp, 16
 jmp proc_PAT$41_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1038_n1_α:
 jmp xchain1038_n3_α
xchain1038_n1_as:
 jmp xchain1038_n2_α
 xchain1038_n1_β:
 jmp xchain1038_n5_β
xchain1038_n1_af:
 jmp xchain1038_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1038_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$41_scanhit
 xchain1038_n2_β:
 sub r12, 24
 jmp xchain1038_n1_β
# IR_MATCH_LIT
 xchain1038_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1038_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1038_n1_af
 add r14d, 1
 jmp xchain1038_n4_α
 xchain1038_n3_β:
 sub r14d, 1
 jmp xchain1038_n1_af
# IR_MATCH_BAL
 xchain1038_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1038_n4_β:
.Lx1048_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1048_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1048_1
 add edx, 1
 jmp .Lx1048_2
.Lx1048_1:
 cmp esi, 41
 jne .Lx1048_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1048_3
.Lx1048_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1048_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1038_n5_α
.Lx1048_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1038_n3_β
# IR_MATCH_LIT
 xchain1038_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1038_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1038_n4_β
 add r14d, 1
 jmp xchain1038_n1_as
 xchain1038_n5_β:
 sub r14d, 1
 jmp xchain1038_n4_β
proc_PAT$41_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$41_γ
proc_PAT$41_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$41_attempt
8:
jmp proc_PAT$41_ω
proc_PAT$41_res:
add rsp, 8
pop rbp
proc_PAT$41_β:
jmp qword ptr [rbp + 160]
proc_PAT$41_γ:
push rbp
lea rax, [rip + proc_PAT$41_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$41_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$42_α
proc_PAT$42_α:
#=======================================================================================================================
    .global proc_PAT$42_α
    .global proc_PAT$42_β
    .global proc_PAT$42_γ
    .global proc_PAT$42_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$42_attempt:
proc_PAT$42_α_body:
lea rax, [rip + xchain1051_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1051_n0_α:
 mov rax, qword ptr [1879054624]
 mov rdx, qword ptr [1879054632]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1051_n1_α
# IR_COERCE_STRING
 xchain1051_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1051_n2_α
# IR_MATCH_SPAN
 xchain1051_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1056_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1056_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1056_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1056_0
.Lx1056_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1056_240
 add rsp, 16
 jmp proc_PAT$42_scanfail
.Lx1056_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$42_scanhit
 xchain1051_n2_β:
 xchain1051_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$42_scanfail
proc_PAT$42_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$42_γ
proc_PAT$42_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$42_attempt
8:
jmp proc_PAT$42_ω
proc_PAT$42_res:
add rsp, 8
pop rbp
proc_PAT$42_β:
jmp qword ptr [rbp + 112]
proc_PAT$42_γ:
push rbp
lea rax, [rip + proc_PAT$42_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$42_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$43_α
proc_PAT$43_α:
#=======================================================================================================================
    .global proc_PAT$43_α
    .global proc_PAT$43_β
    .global proc_PAT$43_γ
    .global proc_PAT$43_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$43_attempt:
proc_PAT$43_α_body:
lea rax, [rip + xchain1057_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1057_n0_α:
 mov rax, qword ptr [1879054656]
 mov rdx, qword ptr [1879054664]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1057_n1_α
 xchain1057_n0_β:
 jmp proc_PAT$43_scanfail
# IR_COERCE_STRING
 xchain1057_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1057_n2_α
 xchain1057_n1_β:
 jmp proc_PAT$43_scanfail
# IR_VAR
 xchain1057_n2_α:
 mov rax, qword ptr [1879054640]
 mov rdx, qword ptr [1879054648]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1057_n3_α
 xchain1057_n2_β:
 jmp proc_PAT$43_scanfail
# IR_COERCE_STRING
 xchain1057_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1057_n4_α
 xchain1057_n3_β:
 jmp proc_PAT$43_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1057_n4_α:
 jmp xchain1057_n5_α
xchain1057_n4_as:
 jmp proc_PAT$43_γ
 xchain1057_n4_β:
 jmp xchain1057_n6_β
xchain1057_n4_af:
 jmp proc_PAT$43_ω
# IR_MATCH_NOTANY
 xchain1057_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1057_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1057_n4_af
 add r14d, 1
 jmp xchain1057_n6_α
 xchain1057_n5_β:
 sub r14d, 1
 jmp xchain1057_n4_af
# IR_MATCH_BREAK
 xchain1057_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1068_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1068_240
 add rsp, 16
 jmp xchain1057_n5_β
.Lx1068_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1068_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1068_0
.Lx1068_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1057_n4_as
 xchain1057_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1057_n5_β
proc_PAT$43_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$43_γ
proc_PAT$43_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$43_attempt
8:
jmp proc_PAT$43_ω
proc_PAT$43_res:
add rsp, 8
pop rbp
proc_PAT$43_β:
jmp qword ptr [rbp + 224]
proc_PAT$43_γ:
push rbp
lea rax, [rip + proc_PAT$43_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$43_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$44_α
proc_PAT$44_α:
#=======================================================================================================================
    .global proc_PAT$44_α
    .global proc_PAT$44_β
    .global proc_PAT$44_γ
    .global proc_PAT$44_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$44_attempt:
proc_PAT$44_α_body:
lea rax, [rip + xchain1069_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1069_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1069_n1_α
 xchain1069_n0_β:
 add rsp, 16
 jmp proc_PAT$44_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1069_n1_α:
 jmp xchain1069_n3_α
xchain1069_n1_as:
 jmp xchain1069_n2_α
 xchain1069_n1_β:
 jmp xchain1069_n5_β
xchain1069_n1_af:
 jmp xchain1069_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1069_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$44_scanhit
 xchain1069_n2_β:
 sub r12, 24
 jmp xchain1069_n1_β
# IR_MATCH_LIT
 xchain1069_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1069_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1069_n1_af
 add r14d, 1
 jmp xchain1069_n4_α
 xchain1069_n3_β:
 sub r14d, 1
 jmp xchain1069_n1_af
# IR_MATCH_BAL
 xchain1069_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1069_n4_β:
.Lx1079_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1079_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1079_1
 add edx, 1
 jmp .Lx1079_2
.Lx1079_1:
 cmp esi, 41
 jne .Lx1079_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1079_3
.Lx1079_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1079_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1069_n5_α
.Lx1079_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1069_n3_β
# IR_MATCH_LIT
 xchain1069_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1069_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1069_n4_β
 add r14d, 1
 jmp xchain1069_n1_as
 xchain1069_n5_β:
 sub r14d, 1
 jmp xchain1069_n4_β
proc_PAT$44_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$44_γ
proc_PAT$44_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$44_attempt
8:
jmp proc_PAT$44_ω
proc_PAT$44_res:
add rsp, 8
pop rbp
proc_PAT$44_β:
jmp qword ptr [rbp + 160]
proc_PAT$44_γ:
push rbp
lea rax, [rip + proc_PAT$44_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$44_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$45_α
proc_PAT$45_α:
#=======================================================================================================================
    .global proc_PAT$45_α
    .global proc_PAT$45_β
    .global proc_PAT$45_γ
    .global proc_PAT$45_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$45_attempt:
proc_PAT$45_α_body:
lea rax, [rip + xchain1082_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1082_n0_α:
 mov rax, qword ptr [1879054672]
 mov rdx, qword ptr [1879054680]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1082_n1_α
# IR_COERCE_STRING
 xchain1082_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1082_n2_α
# IR_MATCH_SPAN
 xchain1082_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1087_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1087_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1087_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1087_0
.Lx1087_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1087_240
 add rsp, 16
 jmp proc_PAT$45_scanfail
.Lx1087_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$45_scanhit
 xchain1082_n2_β:
 xchain1082_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$45_scanfail
proc_PAT$45_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$45_γ
proc_PAT$45_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$45_attempt
8:
jmp proc_PAT$45_ω
proc_PAT$45_res:
add rsp, 8
pop rbp
proc_PAT$45_β:
jmp qword ptr [rbp + 112]
proc_PAT$45_γ:
push rbp
lea rax, [rip + proc_PAT$45_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$45_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$46_α
proc_PAT$46_α:
#=======================================================================================================================
    .global proc_PAT$46_α
    .global proc_PAT$46_β
    .global proc_PAT$46_γ
    .global proc_PAT$46_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$46_attempt:
proc_PAT$46_α_body:
lea rax, [rip + xchain1088_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1088_n0_α:
 mov rax, qword ptr [1879054704]
 mov rdx, qword ptr [1879054712]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1088_n1_α
 xchain1088_n0_β:
 jmp proc_PAT$46_scanfail
# IR_COERCE_STRING
 xchain1088_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1088_n2_α
 xchain1088_n1_β:
 jmp proc_PAT$46_scanfail
# IR_VAR
 xchain1088_n2_α:
 mov rax, qword ptr [1879054688]
 mov rdx, qword ptr [1879054696]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1088_n3_α
 xchain1088_n2_β:
 jmp proc_PAT$46_scanfail
# IR_COERCE_STRING
 xchain1088_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1088_n4_α
 xchain1088_n3_β:
 jmp proc_PAT$46_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1088_n4_α:
 jmp xchain1088_n5_α
xchain1088_n4_as:
 jmp proc_PAT$46_γ
 xchain1088_n4_β:
 jmp xchain1088_n6_β
xchain1088_n4_af:
 jmp proc_PAT$46_ω
# IR_MATCH_NOTANY
 xchain1088_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1088_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1088_n4_af
 add r14d, 1
 jmp xchain1088_n6_α
 xchain1088_n5_β:
 sub r14d, 1
 jmp xchain1088_n4_af
# IR_MATCH_BREAK
 xchain1088_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1099_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1099_240
 add rsp, 16
 jmp xchain1088_n5_β
.Lx1099_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1099_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1099_0
.Lx1099_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1088_n4_as
 xchain1088_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1088_n5_β
proc_PAT$46_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$46_γ
proc_PAT$46_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$46_attempt
8:
jmp proc_PAT$46_ω
proc_PAT$46_res:
add rsp, 8
pop rbp
proc_PAT$46_β:
jmp qword ptr [rbp + 224]
proc_PAT$46_γ:
push rbp
lea rax, [rip + proc_PAT$46_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$46_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$47_α
proc_PAT$47_α:
#=======================================================================================================================
    .global proc_PAT$47_α
    .global proc_PAT$47_β
    .global proc_PAT$47_γ
    .global proc_PAT$47_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$47_attempt:
proc_PAT$47_α_body:
lea rax, [rip + xchain1100_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1100_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1100_n1_α
 xchain1100_n0_β:
 add rsp, 16
 jmp proc_PAT$47_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1100_n1_α:
 jmp xchain1100_n3_α
xchain1100_n1_as:
 jmp xchain1100_n2_α
 xchain1100_n1_β:
 jmp xchain1100_n5_β
xchain1100_n1_af:
 jmp xchain1100_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1100_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$47_scanhit
 xchain1100_n2_β:
 sub r12, 24
 jmp xchain1100_n1_β
# IR_MATCH_LIT
 xchain1100_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1100_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1100_n1_af
 add r14d, 1
 jmp xchain1100_n4_α
 xchain1100_n3_β:
 sub r14d, 1
 jmp xchain1100_n1_af
# IR_MATCH_BAL
 xchain1100_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1100_n4_β:
.Lx1110_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1110_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1110_1
 add edx, 1
 jmp .Lx1110_2
.Lx1110_1:
 cmp esi, 41
 jne .Lx1110_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1110_3
.Lx1110_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1110_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1100_n5_α
.Lx1110_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1100_n3_β
# IR_MATCH_LIT
 xchain1100_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1100_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1100_n4_β
 add r14d, 1
 jmp xchain1100_n1_as
 xchain1100_n5_β:
 sub r14d, 1
 jmp xchain1100_n4_β
proc_PAT$47_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$47_γ
proc_PAT$47_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$47_attempt
8:
jmp proc_PAT$47_ω
proc_PAT$47_res:
add rsp, 8
pop rbp
proc_PAT$47_β:
jmp qword ptr [rbp + 160]
proc_PAT$47_γ:
push rbp
lea rax, [rip + proc_PAT$47_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$47_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$48_α
proc_PAT$48_α:
#=======================================================================================================================
    .global proc_PAT$48_α
    .global proc_PAT$48_β
    .global proc_PAT$48_γ
    .global proc_PAT$48_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$48_attempt:
proc_PAT$48_α_body:
lea rax, [rip + xchain1113_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1113_n0_α:
 mov rax, qword ptr [1879054720]
 mov rdx, qword ptr [1879054728]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1113_n1_α
# IR_COERCE_STRING
 xchain1113_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1113_n2_α
# IR_MATCH_SPAN
 xchain1113_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1118_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1118_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1118_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1118_0
.Lx1118_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1118_240
 add rsp, 16
 jmp proc_PAT$48_scanfail
.Lx1118_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$48_scanhit
 xchain1113_n2_β:
 xchain1113_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$48_scanfail
proc_PAT$48_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$48_γ
proc_PAT$48_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$48_attempt
8:
jmp proc_PAT$48_ω
proc_PAT$48_res:
add rsp, 8
pop rbp
proc_PAT$48_β:
jmp qword ptr [rbp + 112]
proc_PAT$48_γ:
push rbp
lea rax, [rip + proc_PAT$48_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$48_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$49_α
proc_PAT$49_α:
#=======================================================================================================================
    .global proc_PAT$49_α
    .global proc_PAT$49_β
    .global proc_PAT$49_γ
    .global proc_PAT$49_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$49_attempt:
proc_PAT$49_α_body:
lea rax, [rip + xchain1119_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1119_n0_α:
 mov rax, qword ptr [1879054752]
 mov rdx, qword ptr [1879054760]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1119_n1_α
 xchain1119_n0_β:
 jmp proc_PAT$49_scanfail
# IR_COERCE_STRING
 xchain1119_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1119_n2_α
 xchain1119_n1_β:
 jmp proc_PAT$49_scanfail
# IR_VAR
 xchain1119_n2_α:
 mov rax, qword ptr [1879054736]
 mov rdx, qword ptr [1879054744]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1119_n3_α
 xchain1119_n2_β:
 jmp proc_PAT$49_scanfail
# IR_COERCE_STRING
 xchain1119_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1119_n4_α
 xchain1119_n3_β:
 jmp proc_PAT$49_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1119_n4_α:
 jmp xchain1119_n5_α
xchain1119_n4_as:
 jmp proc_PAT$49_γ
 xchain1119_n4_β:
 jmp xchain1119_n6_β
xchain1119_n4_af:
 jmp proc_PAT$49_ω
# IR_MATCH_NOTANY
 xchain1119_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1119_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1119_n4_af
 add r14d, 1
 jmp xchain1119_n6_α
 xchain1119_n5_β:
 sub r14d, 1
 jmp xchain1119_n4_af
# IR_MATCH_BREAK
 xchain1119_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1130_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1130_240
 add rsp, 16
 jmp xchain1119_n5_β
.Lx1130_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1130_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1130_0
.Lx1130_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1119_n4_as
 xchain1119_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1119_n5_β
proc_PAT$49_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$49_γ
proc_PAT$49_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$49_attempt
8:
jmp proc_PAT$49_ω
proc_PAT$49_res:
add rsp, 8
pop rbp
proc_PAT$49_β:
jmp qword ptr [rbp + 224]
proc_PAT$49_γ:
push rbp
lea rax, [rip + proc_PAT$49_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$49_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$50_α
proc_PAT$50_α:
#=======================================================================================================================
    .global proc_PAT$50_α
    .global proc_PAT$50_β
    .global proc_PAT$50_γ
    .global proc_PAT$50_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$50_attempt:
proc_PAT$50_α_body:
lea rax, [rip + xchain1131_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1131_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1131_n1_α
 xchain1131_n0_β:
 add rsp, 16
 jmp proc_PAT$50_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1131_n1_α:
 jmp xchain1131_n3_α
xchain1131_n1_as:
 jmp xchain1131_n2_α
 xchain1131_n1_β:
 jmp xchain1131_n5_β
xchain1131_n1_af:
 jmp xchain1131_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1131_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$50_scanhit
 xchain1131_n2_β:
 sub r12, 24
 jmp xchain1131_n1_β
# IR_MATCH_LIT
 xchain1131_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1131_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1131_n1_af
 add r14d, 1
 jmp xchain1131_n4_α
 xchain1131_n3_β:
 sub r14d, 1
 jmp xchain1131_n1_af
# IR_MATCH_BAL
 xchain1131_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1131_n4_β:
.Lx1141_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1141_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1141_1
 add edx, 1
 jmp .Lx1141_2
.Lx1141_1:
 cmp esi, 41
 jne .Lx1141_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1141_3
.Lx1141_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1141_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1131_n5_α
.Lx1141_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1131_n3_β
# IR_MATCH_LIT
 xchain1131_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1131_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1131_n4_β
 add r14d, 1
 jmp xchain1131_n1_as
 xchain1131_n5_β:
 sub r14d, 1
 jmp xchain1131_n4_β
proc_PAT$50_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$50_γ
proc_PAT$50_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$50_attempt
8:
jmp proc_PAT$50_ω
proc_PAT$50_res:
add rsp, 8
pop rbp
proc_PAT$50_β:
jmp qword ptr [rbp + 160]
proc_PAT$50_γ:
push rbp
lea rax, [rip + proc_PAT$50_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$50_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$51_α
proc_PAT$51_α:
#=======================================================================================================================
    .global proc_PAT$51_α
    .global proc_PAT$51_β
    .global proc_PAT$51_γ
    .global proc_PAT$51_ω
  sub rsp, 176
  mov [rsp + 152], rcx
  mov [rsp + 160], rdx
  mov [rsp + 168], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 144
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 136], rsp
mov qword ptr [rbp + 144], r8
mov dword ptr [rbp + 136], r14d
proc_PAT$51_attempt:
proc_PAT$51_α_body:
lea rax, [rip + xchain1144_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1144_n0_α:
 mov rax, qword ptr [1879054768]
 mov rdx, qword ptr [1879054776]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1144_n1_α
# IR_COERCE_STRING
 xchain1144_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1144_n2_α
# IR_MATCH_SPAN
 xchain1144_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1149_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1149_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1149_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1149_0
.Lx1149_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1149_240
 add rsp, 16
 jmp proc_PAT$51_scanfail
.Lx1149_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$51_scanhit
 xchain1144_n2_β:
 xchain1144_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$51_scanfail
proc_PAT$51_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$51_γ
proc_PAT$51_scanfail:
cmp qword ptr [rbp + 144], 1
jne 8f
mov eax, dword ptr [rbp + 136]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 136], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$51_attempt
8:
jmp proc_PAT$51_ω
proc_PAT$51_res:
add rsp, 8
pop rbp
proc_PAT$51_β:
jmp qword ptr [rbp + 112]
proc_PAT$51_γ:
push rbp
lea rax, [rip + proc_PAT$51_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$51_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$52_α
proc_PAT$52_α:
#=======================================================================================================================
    .global proc_PAT$52_α
    .global proc_PAT$52_β
    .global proc_PAT$52_γ
    .global proc_PAT$52_ω
  sub rsp, 288
  mov [rsp + 264], rcx
  mov [rsp + 272], rdx
  mov [rsp + 280], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 256
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 248], rsp
mov qword ptr [rbp + 256], r8
mov dword ptr [rbp + 248], r14d
proc_PAT$52_attempt:
proc_PAT$52_α_body:
lea rax, [rip + xchain1150_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1150_n0_α:
 mov rax, qword ptr [1879054800]
 mov rdx, qword ptr [1879054808]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1150_n1_α
 xchain1150_n0_β:
 jmp proc_PAT$52_scanfail
# IR_COERCE_STRING
 xchain1150_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1150_n2_α
 xchain1150_n1_β:
 jmp proc_PAT$52_scanfail
# IR_VAR
 xchain1150_n2_α:
 mov rax, qword ptr [1879054784]
 mov rdx, qword ptr [1879054792]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1150_n3_α
 xchain1150_n2_β:
 jmp proc_PAT$52_scanfail
# IR_COERCE_STRING
 xchain1150_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1150_n4_α
 xchain1150_n3_β:
 jmp proc_PAT$52_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1150_n4_α:
 jmp xchain1150_n5_α
xchain1150_n4_as:
 jmp proc_PAT$52_γ
 xchain1150_n4_β:
 jmp xchain1150_n6_β
xchain1150_n4_af:
 jmp proc_PAT$52_ω
# IR_MATCH_NOTANY
 xchain1150_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1150_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1150_n4_af
 add r14d, 1
 jmp xchain1150_n6_α
 xchain1150_n5_β:
 sub r14d, 1
 jmp xchain1150_n4_af
# IR_MATCH_BREAK
 xchain1150_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1161_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1161_240
 add rsp, 16
 jmp xchain1150_n5_β
.Lx1161_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1161_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1161_0
.Lx1161_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1150_n4_as
 xchain1150_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1150_n5_β
proc_PAT$52_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$52_γ
proc_PAT$52_scanfail:
cmp qword ptr [rbp + 256], 1
jne 8f
mov eax, dword ptr [rbp + 248]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 248], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$52_attempt
8:
jmp proc_PAT$52_ω
proc_PAT$52_res:
add rsp, 8
pop rbp
proc_PAT$52_β:
jmp qword ptr [rbp + 224]
proc_PAT$52_γ:
push rbp
lea rax, [rip + proc_PAT$52_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$52_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$53_α
proc_PAT$53_α:
#=======================================================================================================================
    .global proc_PAT$53_α
    .global proc_PAT$53_β
    .global proc_PAT$53_γ
    .global proc_PAT$53_ω
  sub rsp, 224
  mov [rsp + 200], rcx
  mov [rsp + 208], rdx
  mov [rsp + 216], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 192
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 184], rsp
mov qword ptr [rbp + 192], r8
mov dword ptr [rbp + 184], r14d
proc_PAT$53_attempt:
proc_PAT$53_α_body:
lea rax, [rip + xchain1162_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1162_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1162_n1_α
 xchain1162_n0_β:
 add rsp, 16
 jmp proc_PAT$53_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1162_n1_α:
 jmp xchain1162_n3_α
xchain1162_n1_as:
 jmp xchain1162_n2_α
 xchain1162_n1_β:
 jmp xchain1162_n5_β
xchain1162_n1_af:
 jmp xchain1162_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1162_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$53_scanhit
 xchain1162_n2_β:
 sub r12, 24
 jmp xchain1162_n1_β
# IR_MATCH_LIT
 xchain1162_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1162_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1162_n1_af
 add r14d, 1
 jmp xchain1162_n4_α
 xchain1162_n3_β:
 sub r14d, 1
 jmp xchain1162_n1_af
# IR_MATCH_BAL
 xchain1162_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1162_n4_β:
.Lx1172_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1172_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1172_1
 add edx, 1
 jmp .Lx1172_2
.Lx1172_1:
 cmp esi, 41
 jne .Lx1172_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1172_3
.Lx1172_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1172_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1162_n5_α
.Lx1172_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1162_n3_β
# IR_MATCH_LIT
 xchain1162_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1162_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1162_n4_β
 add r14d, 1
 jmp xchain1162_n1_as
 xchain1162_n5_β:
 sub r14d, 1
 jmp xchain1162_n4_β
proc_PAT$53_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$53_γ
proc_PAT$53_scanfail:
cmp qword ptr [rbp + 192], 1
jne 8f
mov eax, dword ptr [rbp + 184]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 184], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$53_attempt
8:
jmp proc_PAT$53_ω
proc_PAT$53_res:
add rsp, 8
pop rbp
proc_PAT$53_β:
jmp qword ptr [rbp + 160]
proc_PAT$53_γ:
push rbp
lea rax, [rip + proc_PAT$53_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$53_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lclassspec0: .string "list(head,tail)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "stk_push_frame"
  .Lstartup_pp0_0: .string "v"
  .align 8
  .Lstartup_pnames0:
  .quad .Lstartup_pp0_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + .Lstartup_pnames0]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_stk_push_frame_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname1: .string "stk_push_item"
  .Lstartup_pp1_0: .string "v"
  .Lstartup_pp1_1: .string "cur"
  .align 8
  .Lstartup_pnames1:
  .quad .Lstartup_pp1_0
  .quad .Lstartup_pp1_1
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + .Lstartup_pnames1]
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_stk_push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname2: .string "stk_pop_into_parent"
  .Lstartup_pp2_0: .string "child"
  .Lstartup_pp2_1: .string "par"
  .Lstartup_pp2_2: .string "n"
  .align 8
  .Lstartup_pnames2:
  .quad .Lstartup_pp2_0
  .quad .Lstartup_pp2_1
  .quad .Lstartup_pp2_2
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + .Lstartup_pnames2]
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_stk_pop_into_parent_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname3: .string "stk_pop_final"
  .Lstartup_pp3_0: .string "var"
  .Lstartup_pp3_1: .string "child"
  .align 8
  .Lstartup_pnames3:
  .quad .Lstartup_pp3_0
  .quad .Lstartup_pp3_1
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + .Lstartup_pnames3]
  mov edx, 2
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_stk_pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "init_list"
  .Lstartup_pp4_0: .string "v"
  .align 8
  .Lstartup_pnames4:
  .quad .Lstartup_pp4_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + .Lstartup_pnames4]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_init_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname5: .string "Init_list"
  .Lstartup_pp5_0: .string "vs"
  .align 8
  .Lstartup_pnames5:
  .quad .Lstartup_pp5_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + .Lstartup_pnames5]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_Init_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname6: .string "push_list"
  .Lstartup_pp6_0: .string "v"
  .align 8
  .Lstartup_pnames6:
  .quad .Lstartup_pp6_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + .Lstartup_pnames6]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_push_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname7: .string "Push_list"
  .Lstartup_pp7_0: .string "vs"
  .align 8
  .Lstartup_pnames7:
  .quad .Lstartup_pp7_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + .Lstartup_pnames7]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_Push_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname8: .string "push_item"
  .Lstartup_pp8_0: .string "v"
  .align 8
  .Lstartup_pnames8:
  .quad .Lstartup_pp8_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + .Lstartup_pnames8]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname9: .string "Push_item"
  .Lstartup_pp9_0: .string "vs"
  .align 8
  .Lstartup_pnames9:
  .quad .Lstartup_pp9_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + .Lstartup_pnames9]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_Push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname10: .string "pop_list"
  .align 8
  .Lstartup_pnames10:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + .Lstartup_pnames10]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_pop_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname11: .string "Pop_list"
  .align 8
  .Lstartup_pnames11:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + .Lstartup_pnames11]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_Pop_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname12: .string "pop_final"
  .Lstartup_pp12_0: .string "v"
  .align 8
  .Lstartup_pnames12:
  .quad .Lstartup_pp12_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + .Lstartup_pnames12]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + proc_pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname13: .string "Pop_final"
  .Lstartup_pp13_0: .string "vs"
  .align 8
  .Lstartup_pnames13:
  .quad .Lstartup_pp13_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname13]
  lea rsi, [rip + .Lstartup_pnames13]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname13]
  lea rsi, [rip + proc_Pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname14: .string "node_repr"
  .Lstartup_pp14_0: .string "f"
  .Lstartup_pp14_1: .string "r"
  .Lstartup_pp14_2: .string "sep"
  .Lstartup_pp14_3: .string "i"
  .Lstartup_pp14_4: .string "n"
  .Lstartup_pp14_5: .string "tag"
  .align 8
  .Lstartup_pnames14:
  .quad .Lstartup_pp14_0
  .quad .Lstartup_pp14_1
  .quad .Lstartup_pp14_2
  .quad .Lstartup_pp14_3
  .quad .Lstartup_pp14_4
  .quad .Lstartup_pp14_5
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + .Lstartup_pnames14]
  mov edx, 6
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + proc_node_repr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 6
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname15: .string "pp_node"
  .Lstartup_pp15_0: .string "f"
  .Lstartup_pp15_1: .string "indent"
  .Lstartup_pp15_2: .string "suffix"
  .Lstartup_pp15_3: .string "r"
  .Lstartup_pp15_4: .string "pad"
  .Lstartup_pp15_5: .string "tag"
  .Lstartup_pp15_6: .string "n"
  .Lstartup_pp15_7: .string "i"
  .Lstartup_pp15_8: .string "nxt"
  .align 8
  .Lstartup_pnames15:
  .quad .Lstartup_pp15_0
  .quad .Lstartup_pp15_1
  .quad .Lstartup_pp15_2
  .quad .Lstartup_pp15_3
  .quad .Lstartup_pp15_4
  .quad .Lstartup_pp15_5
  .quad .Lstartup_pp15_6
  .quad .Lstartup_pp15_7
  .quad .Lstartup_pp15_8
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + .Lstartup_pnames15]
  mov edx, 9
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + proc_pp_node_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 9
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname16: .string "pp_bank"
  .align 8
  .Lstartup_pnames16:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname16]
  lea rsi, [rip + .Lstartup_pnames16]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname16]
  lea rsi, [rip + proc_pp_bank_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 14288
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname17: .string "EXPR$0"
  .align 8
  .Lstartup_pnames17:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname17]
  lea rsi, [rip + .Lstartup_pnames17]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname17]
  lea rsi, [rip + proc_EXPR$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname18: .string "EXPR$1"
  .align 8
  .Lstartup_pnames18:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname18]
  lea rsi, [rip + .Lstartup_pnames18]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname18]
  lea rsi, [rip + proc_EXPR$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname19: .string "EXPR$2"
  .align 8
  .Lstartup_pnames19:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname19]
  lea rsi, [rip + .Lstartup_pnames19]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname19]
  lea rsi, [rip + proc_EXPR$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname20: .string "EXPR$3"
  .align 8
  .Lstartup_pnames20:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname20]
  lea rsi, [rip + .Lstartup_pnames20]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname20]
  lea rsi, [rip + proc_EXPR$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname21: .string "EXPR$4"
  .align 8
  .Lstartup_pnames21:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname21]
  lea rsi, [rip + .Lstartup_pnames21]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname21]
  lea rsi, [rip + proc_EXPR$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname22: .string "EXPR$5"
  .align 8
  .Lstartup_pnames22:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname22]
  lea rsi, [rip + .Lstartup_pnames22]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname22]
  lea rsi, [rip + proc_EXPR$5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname23: .string "EXPR$6"
  .align 8
  .Lstartup_pnames23:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname23]
  lea rsi, [rip + .Lstartup_pnames23]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname23]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname23]
  lea rsi, [rip + proc_EXPR$6_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname23]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname23]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname23]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname24: .string "EXPR$7"
  .align 8
  .Lstartup_pnames24:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname24]
  lea rsi, [rip + .Lstartup_pnames24]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname24]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname24]
  lea rsi, [rip + proc_EXPR$7_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname24]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname24]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname24]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname25: .string "EXPR$8"
  .align 8
  .Lstartup_pnames25:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname25]
  lea rsi, [rip + .Lstartup_pnames25]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname25]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname25]
  lea rsi, [rip + proc_EXPR$8_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname25]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname25]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname25]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname26: .string "EXPR$9"
  .align 8
  .Lstartup_pnames26:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname26]
  lea rsi, [rip + .Lstartup_pnames26]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname26]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname26]
  lea rsi, [rip + proc_EXPR$9_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname26]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname26]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname26]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname27: .string "EXPR$10"
  .align 8
  .Lstartup_pnames27:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname27]
  lea rsi, [rip + .Lstartup_pnames27]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname27]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname27]
  lea rsi, [rip + proc_EXPR$10_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname27]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname27]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname27]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname28: .string "EXPR$11"
  .align 8
  .Lstartup_pnames28:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname28]
  lea rsi, [rip + .Lstartup_pnames28]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname28]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname28]
  lea rsi, [rip + proc_EXPR$11_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname28]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname28]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname28]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname29: .string "EXPR$12"
  .align 8
  .Lstartup_pnames29:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname29]
  lea rsi, [rip + .Lstartup_pnames29]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname29]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname29]
  lea rsi, [rip + proc_EXPR$12_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname29]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname29]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname29]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname30: .string "EXPR$13"
  .align 8
  .Lstartup_pnames30:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname30]
  lea rsi, [rip + .Lstartup_pnames30]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname30]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname30]
  lea rsi, [rip + proc_EXPR$13_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname30]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname30]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname30]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname31: .string "EXPR$14"
  .align 8
  .Lstartup_pnames31:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname31]
  lea rsi, [rip + .Lstartup_pnames31]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname31]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname31]
  lea rsi, [rip + proc_EXPR$14_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname31]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname31]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname31]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname32: .string "EXPR$15"
  .align 8
  .Lstartup_pnames32:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname32]
  lea rsi, [rip + .Lstartup_pnames32]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname32]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname32]
  lea rsi, [rip + proc_EXPR$15_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname32]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname32]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname32]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname33: .string "EXPR$16"
  .align 8
  .Lstartup_pnames33:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname33]
  lea rsi, [rip + .Lstartup_pnames33]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname33]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname33]
  lea rsi, [rip + proc_EXPR$16_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname33]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname33]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname33]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname34: .string "EXPR$17"
  .align 8
  .Lstartup_pnames34:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname34]
  lea rsi, [rip + .Lstartup_pnames34]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname34]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname34]
  lea rsi, [rip + proc_EXPR$17_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname34]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname34]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname34]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname35: .string "EXPR$18"
  .align 8
  .Lstartup_pnames35:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname35]
  lea rsi, [rip + .Lstartup_pnames35]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname35]
  lea rsi, [rip + proc_EXPR$18_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname36: .string "EXPR$19"
  .align 8
  .Lstartup_pnames36:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname36]
  lea rsi, [rip + .Lstartup_pnames36]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname36]
  lea rsi, [rip + proc_EXPR$19_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname37: .string "EXPR$20"
  .align 8
  .Lstartup_pnames37:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname37]
  lea rsi, [rip + .Lstartup_pnames37]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname37]
  lea rsi, [rip + proc_EXPR$20_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname38: .string "EXPR$21"
  .align 8
  .Lstartup_pnames38:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname38]
  lea rsi, [rip + .Lstartup_pnames38]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname38]
  lea rsi, [rip + proc_EXPR$21_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname39: .string "EXPR$22"
  .align 8
  .Lstartup_pnames39:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname39]
  lea rsi, [rip + .Lstartup_pnames39]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname39]
  lea rsi, [rip + proc_EXPR$22_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname40: .string "EXPR$23"
  .align 8
  .Lstartup_pnames40:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname40]
  lea rsi, [rip + .Lstartup_pnames40]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname40]
  lea rsi, [rip + proc_EXPR$23_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname41: .string "EXPR$24"
  .align 8
  .Lstartup_pnames41:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname41]
  lea rsi, [rip + .Lstartup_pnames41]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname41]
  lea rsi, [rip + proc_EXPR$24_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname42: .string "EXPR$25"
  .align 8
  .Lstartup_pnames42:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname42]
  lea rsi, [rip + .Lstartup_pnames42]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname42]
  lea rsi, [rip + proc_EXPR$25_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname43: .string "EXPR$26"
  .align 8
  .Lstartup_pnames43:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname43]
  lea rsi, [rip + .Lstartup_pnames43]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname43]
  lea rsi, [rip + proc_EXPR$26_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname44: .string "EXPR$27"
  .align 8
  .Lstartup_pnames44:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname44]
  lea rsi, [rip + .Lstartup_pnames44]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname44]
  lea rsi, [rip + proc_EXPR$27_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname45: .string "EXPR$28"
  .align 8
  .Lstartup_pnames45:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname45]
  lea rsi, [rip + .Lstartup_pnames45]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname45]
  lea rsi, [rip + proc_EXPR$28_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname46: .string "EXPR$29"
  .align 8
  .Lstartup_pnames46:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname46]
  lea rsi, [rip + .Lstartup_pnames46]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname46]
  lea rsi, [rip + proc_EXPR$29_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname47: .string "EXPR$30"
  .align 8
  .Lstartup_pnames47:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname47]
  lea rsi, [rip + .Lstartup_pnames47]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname47]
  lea rsi, [rip + proc_EXPR$30_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname48: .string "EXPR$31"
  .align 8
  .Lstartup_pnames48:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname48]
  lea rsi, [rip + .Lstartup_pnames48]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname48]
  lea rsi, [rip + proc_EXPR$31_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname49: .string "EXPR$32"
  .align 8
  .Lstartup_pnames49:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname49]
  lea rsi, [rip + .Lstartup_pnames49]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname49]
  lea rsi, [rip + proc_EXPR$32_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname50: .string "EXPR$33"
  .align 8
  .Lstartup_pnames50:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname50]
  lea rsi, [rip + .Lstartup_pnames50]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname50]
  lea rsi, [rip + proc_EXPR$33_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname51: .string "EXPR$34"
  .align 8
  .Lstartup_pnames51:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname51]
  lea rsi, [rip + .Lstartup_pnames51]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname51]
  lea rsi, [rip + proc_EXPR$34_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname52: .string "EXPR$35"
  .align 8
  .Lstartup_pnames52:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname52]
  lea rsi, [rip + .Lstartup_pnames52]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname52]
  lea rsi, [rip + proc_EXPR$35_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname53: .string "EXPR$36"
  .align 8
  .Lstartup_pnames53:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname53]
  lea rsi, [rip + .Lstartup_pnames53]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname53]
  lea rsi, [rip + proc_EXPR$36_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname54: .string "EXPR$37"
  .align 8
  .Lstartup_pnames54:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname54]
  lea rsi, [rip + .Lstartup_pnames54]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname54]
  lea rsi, [rip + proc_EXPR$37_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname55: .string "EXPR$38"
  .align 8
  .Lstartup_pnames55:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname55]
  lea rsi, [rip + .Lstartup_pnames55]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname55]
  lea rsi, [rip + proc_EXPR$38_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname56: .string "EXPR$39"
  .align 8
  .Lstartup_pnames56:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname56]
  lea rsi, [rip + .Lstartup_pnames56]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname56]
  lea rsi, [rip + proc_EXPR$39_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname57: .string "EXPR$40"
  .align 8
  .Lstartup_pnames57:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname57]
  lea rsi, [rip + .Lstartup_pnames57]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname57]
  lea rsi, [rip + proc_EXPR$40_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname58: .string "EXPR$41"
  .align 8
  .Lstartup_pnames58:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname58]
  lea rsi, [rip + .Lstartup_pnames58]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname58]
  lea rsi, [rip + proc_EXPR$41_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname59: .string "EXPR$42"
  .align 8
  .Lstartup_pnames59:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname59]
  lea rsi, [rip + .Lstartup_pnames59]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname59]
  lea rsi, [rip + proc_EXPR$42_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname60: .string "EXPR$43"
  .align 8
  .Lstartup_pnames60:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname60]
  lea rsi, [rip + .Lstartup_pnames60]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname60]
  lea rsi, [rip + proc_EXPR$43_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname61: .string "EXPR$44"
  .align 8
  .Lstartup_pnames61:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname61]
  lea rsi, [rip + .Lstartup_pnames61]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname61]
  lea rsi, [rip + proc_EXPR$44_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname62: .string "EXPR$45"
  .align 8
  .Lstartup_pnames62:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname62]
  lea rsi, [rip + .Lstartup_pnames62]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname62]
  lea rsi, [rip + proc_EXPR$45_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname63: .string "EXPR$46"
  .align 8
  .Lstartup_pnames63:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname63]
  lea rsi, [rip + .Lstartup_pnames63]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname63]
  lea rsi, [rip + proc_EXPR$46_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname64: .string "EXPR$47"
  .align 8
  .Lstartup_pnames64:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname64]
  lea rsi, [rip + .Lstartup_pnames64]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname64]
  lea rsi, [rip + proc_EXPR$47_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname65: .string "EXPR$48"
  .align 8
  .Lstartup_pnames65:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname65]
  lea rsi, [rip + .Lstartup_pnames65]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname65]
  lea rsi, [rip + proc_EXPR$48_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname66: .string "EXPR$49"
  .align 8
  .Lstartup_pnames66:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname66]
  lea rsi, [rip + .Lstartup_pnames66]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname66]
  lea rsi, [rip + proc_EXPR$49_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname67: .string "EXPR$50"
  .align 8
  .Lstartup_pnames67:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname67]
  lea rsi, [rip + .Lstartup_pnames67]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname67]
  lea rsi, [rip + proc_EXPR$50_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname68: .string "EXPR$51"
  .align 8
  .Lstartup_pnames68:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname68]
  lea rsi, [rip + .Lstartup_pnames68]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname68]
  lea rsi, [rip + proc_EXPR$51_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname69: .string "EXPR$52"
  .align 8
  .Lstartup_pnames69:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname69]
  lea rsi, [rip + .Lstartup_pnames69]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname69]
  lea rsi, [rip + proc_EXPR$52_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname70: .string "EXPR$53"
  .align 8
  .Lstartup_pnames70:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname70]
  lea rsi, [rip + .Lstartup_pnames70]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname70]
  lea rsi, [rip + proc_EXPR$53_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname71: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname71]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname72: .string "PAT$1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname72]
  lea rsi, [rip + proc_PAT$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname73: .string "PAT$2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname73]
  lea rsi, [rip + proc_PAT$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname74: .string "PAT$3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname74]
  lea rsi, [rip + proc_PAT$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname75: .string "PAT$4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname75]
  lea rsi, [rip + proc_PAT$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname76: .string "PAT$5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname76]
  lea rsi, [rip + proc_PAT$5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname77: .string "PAT$6"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname77]
  lea rsi, [rip + proc_PAT$6_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname78: .string "PAT$7"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname78]
  lea rsi, [rip + proc_PAT$7_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname79: .string "PAT$8"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname79]
  lea rsi, [rip + proc_PAT$8_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname80: .string "PAT$9"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname80]
  lea rsi, [rip + proc_PAT$9_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname81: .string "PAT$10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname81]
  lea rsi, [rip + proc_PAT$10_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname82: .string "PAT$11"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname82]
  lea rsi, [rip + proc_PAT$11_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname83: .string "PAT$12"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname83]
  lea rsi, [rip + proc_PAT$12_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname84: .string "PAT$13"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname84]
  lea rsi, [rip + proc_PAT$13_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname85: .string "PAT$14"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname85]
  lea rsi, [rip + proc_PAT$14_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname86: .string "PAT$15"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname86]
  lea rsi, [rip + proc_PAT$15_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname87: .string "PAT$16"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname87]
  lea rsi, [rip + proc_PAT$16_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname88: .string "PAT$17"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname88]
  lea rsi, [rip + proc_PAT$17_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname89: .string "PAT$18"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname89]
  lea rsi, [rip + proc_PAT$18_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname90: .string "PAT$19"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname90]
  lea rsi, [rip + proc_PAT$19_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname91: .string "PAT$20"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname91]
  lea rsi, [rip + proc_PAT$20_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname92: .string "PAT$21"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname92]
  lea rsi, [rip + proc_PAT$21_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname93: .string "PAT$22"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname93]
  lea rsi, [rip + proc_PAT$22_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname94: .string "PAT$23"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname94]
  lea rsi, [rip + proc_PAT$23_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname95: .string "PAT$24"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname95]
  lea rsi, [rip + proc_PAT$24_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname96: .string "PAT$25"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname96]
  lea rsi, [rip + proc_PAT$25_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname97: .string "PAT$26"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname97]
  lea rsi, [rip + proc_PAT$26_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname98: .string "PAT$27"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname98]
  lea rsi, [rip + proc_PAT$27_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname99: .string "PAT$28"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname99]
  lea rsi, [rip + proc_PAT$28_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname100: .string "PAT$29"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname100]
  lea rsi, [rip + proc_PAT$29_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname101: .string "PAT$30"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname101]
  lea rsi, [rip + proc_PAT$30_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname102: .string "PAT$31"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname102]
  lea rsi, [rip + proc_PAT$31_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname103: .string "PAT$32"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname103]
  lea rsi, [rip + proc_PAT$32_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname104: .string "PAT$33"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname104]
  lea rsi, [rip + proc_PAT$33_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname105: .string "PAT$34"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname105]
  lea rsi, [rip + proc_PAT$34_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname106: .string "PAT$35"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname106]
  lea rsi, [rip + proc_PAT$35_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname107: .string "PAT$36"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname107]
  lea rsi, [rip + proc_PAT$36_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname108: .string "PAT$37"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname108]
  lea rsi, [rip + proc_PAT$37_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname109: .string "PAT$38"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname109]
  lea rsi, [rip + proc_PAT$38_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname110: .string "PAT$39"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname110]
  lea rsi, [rip + proc_PAT$39_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname111: .string "PAT$40"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname111]
  lea rsi, [rip + proc_PAT$40_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname112: .string "PAT$41"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname112]
  lea rsi, [rip + proc_PAT$41_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname113: .string "PAT$42"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname113]
  lea rsi, [rip + proc_PAT$42_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname113]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname113]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname113]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname114: .string "PAT$43"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname114]
  lea rsi, [rip + proc_PAT$43_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname114]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname114]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname114]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname115: .string "PAT$44"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname115]
  lea rsi, [rip + proc_PAT$44_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname116: .string "PAT$45"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname116]
  lea rsi, [rip + proc_PAT$45_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname116]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname116]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname116]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname117: .string "PAT$46"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname117]
  lea rsi, [rip + proc_PAT$46_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname117]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname117]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname117]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname118: .string "PAT$47"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname118]
  lea rsi, [rip + proc_PAT$47_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname119: .string "PAT$48"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname119]
  lea rsi, [rip + proc_PAT$48_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname119]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname119]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname119]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname120: .string "PAT$49"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname120]
  lea rsi, [rip + proc_PAT$49_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname120]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname120]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname120]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname121: .string "PAT$50"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname121]
  lea rsi, [rip + proc_PAT$50_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname121]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname121]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname121]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname122: .string "PAT$51"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname122]
  lea rsi, [rip + proc_PAT$51_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname122]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname122]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname122]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname123: .string "PAT$52"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname123]
  lea rsi, [rip + proc_PAT$52_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname123]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname123]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname123]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname124: .string "PAT$53"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname124]
  lea rsi, [rip + proc_PAT$53_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname124]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname124]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname124]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "stk_push_frame"
  .Lgvan1: .string "v"
  .Lgvan2: .string "stk_push_item"
  .Lgvan3: .string "cur"
  .Lgvan4: .string "stk_pop_into_parent"
  .Lgvan5: .string "child"
  .Lgvan6: .string "par"
  .Lgvan7: .string "n"
  .Lgvan8: .string "stk_pop_final"
  .Lgvan9: .string "var"
  .Lgvan10: .string "init_list"
  .Lgvan11: .string "Init_list"
  .Lgvan12: .string "vs"
  .Lgvan13: .string "push_list"
  .Lgvan14: .string "Push_list"
  .Lgvan15: .string "push_item"
  .Lgvan16: .string "Push_item"
  .Lgvan17: .string "pop_list"
  .Lgvan18: .string "Pop_list"
  .Lgvan19: .string "pop_final"
  .Lgvan20: .string "Pop_final"
  .Lgvan21: .string "node_repr"
  .Lgvan22: .string "f"
  .Lgvan23: .string "r"
  .Lgvan24: .string "sep"
  .Lgvan25: .string "i"
  .Lgvan26: .string "tag"
  .Lgvan27: .string "pp_node"
  .Lgvan28: .string "indent"
  .Lgvan29: .string "suffix"
  .Lgvan30: .string "pad"
  .Lgvan31: .string "nxt"
  .Lgvan32: .string "pp_bank"
  .Lgvan33: .string "nl"
  .Lgvan34: .string "frame_id"
  .Lgvan35: .string "stk_tag"
  .Lgvan36: .string "stk_n"
  .Lgvan37: .string "stk_c"
  .Lgvan38: .string "stk"
  .Lgvan39: .string "dummy"
  .Lgvan40: .string "epsilon"
  .Lgvan41: .string "bank"
  .Lgvan42: .string "delim"
  .Lgvan43: .string "word"
  .Lgvan44: .string "group"
  .Lgvan45: .string "wrd"
  .Lgvan46: .string "spat"
  .Lgvan47: .string "item"
  .Lgvan48: .string "line"
  .Lgvan49: .string "src"
  .Lgvan50: .string "EXPR$0"
  .Lgvan51: .string "EXPR$1"
  .Lgvan52: .string "EXPR$2"
  .Lgvan53: .string "EXPR$3"
  .Lgvan54: .string "EXPR$4"
  .Lgvan55: .string "EXPR$5"
  .Lgvan56: .string "EXPR$6"
  .Lgvan57: .string "EXPR$7"
  .Lgvan58: .string "EXPR$8"
  .Lgvan59: .string "EXPR$9"
  .Lgvan60: .string "EXPR$10"
  .Lgvan61: .string "EXPR$11"
  .Lgvan62: .string "EXPR$12"
  .Lgvan63: .string "EXPR$13"
  .Lgvan64: .string "EXPR$14"
  .Lgvan65: .string "EXPR$15"
  .Lgvan66: .string "EXPR$16"
  .Lgvan67: .string "EXPR$17"
  .Lgvan68: .string "EXPR$18"
  .Lgvan69: .string "EXPR$19"
  .Lgvan70: .string "EXPR$20"
  .Lgvan71: .string "EXPR$21"
  .Lgvan72: .string "EXPR$22"
  .Lgvan73: .string "EXPR$23"
  .Lgvan74: .string "EXPR$24"
  .Lgvan75: .string "EXPR$25"
  .Lgvan76: .string "EXPR$26"
  .Lgvan77: .string "EXPR$27"
  .Lgvan78: .string "EXPR$28"
  .Lgvan79: .string "EXPR$29"
  .Lgvan80: .string "EXPR$30"
  .Lgvan81: .string "EXPR$31"
  .Lgvan82: .string "EXPR$32"
  .Lgvan83: .string "EXPR$33"
  .Lgvan84: .string "EXPR$34"
  .Lgvan85: .string "EXPR$35"
  .Lgvan86: .string "EXPR$36"
  .Lgvan87: .string "EXPR$37"
  .Lgvan88: .string "EXPR$38"
  .Lgvan89: .string "EXPR$39"
  .Lgvan90: .string "EXPR$40"
  .Lgvan91: .string "EXPR$41"
  .Lgvan92: .string "EXPR$42"
  .Lgvan93: .string "EXPR$43"
  .Lgvan94: .string "EXPR$44"
  .Lgvan95: .string "EXPR$45"
  .Lgvan96: .string "EXPR$46"
  .Lgvan97: .string "EXPR$47"
  .Lgvan98: .string "EXPR$48"
  .Lgvan99: .string "EXPR$49"
  .Lgvan100: .string "EXPR$50"
  .Lgvan101: .string "EXPR$51"
  .Lgvan102: .string "EXPR$52"
  .Lgvan103: .string "EXPR$53"
  .Lgvan104: .string "PAT$0$A0"
  .Lgvan105: .string "PAT$1$A0"
  .Lgvan106: .string "PAT$1$A1"
  .Lgvan107: .string "PAT$3$A0"
  .Lgvan108: .string "PAT$4$A0"
  .Lgvan109: .string "PAT$4$A1"
  .Lgvan110: .string "PAT$6$A0"
  .Lgvan111: .string "PAT$7$A0"
  .Lgvan112: .string "PAT$7$A1"
  .Lgvan113: .string "PAT$9$A0"
  .Lgvan114: .string "PAT$10$A0"
  .Lgvan115: .string "PAT$10$A1"
  .Lgvan116: .string "PAT$12$A0"
  .Lgvan117: .string "PAT$13$A0"
  .Lgvan118: .string "PAT$13$A1"
  .Lgvan119: .string "PAT$15$A0"
  .Lgvan120: .string "PAT$16$A0"
  .Lgvan121: .string "PAT$16$A1"
  .Lgvan122: .string "PAT$18$A0"
  .Lgvan123: .string "PAT$19$A0"
  .Lgvan124: .string "PAT$19$A1"
  .Lgvan125: .string "PAT$21$A0"
  .Lgvan126: .string "PAT$22$A0"
  .Lgvan127: .string "PAT$22$A1"
  .Lgvan128: .string "PAT$24$A0"
  .Lgvan129: .string "PAT$25$A0"
  .Lgvan130: .string "PAT$25$A1"
  .Lgvan131: .string "PAT$27$A0"
  .Lgvan132: .string "PAT$28$A0"
  .Lgvan133: .string "PAT$28$A1"
  .Lgvan134: .string "PAT$30$A0"
  .Lgvan135: .string "PAT$31$A0"
  .Lgvan136: .string "PAT$31$A1"
  .Lgvan137: .string "PAT$33$A0"
  .Lgvan138: .string "PAT$34$A0"
  .Lgvan139: .string "PAT$34$A1"
  .Lgvan140: .string "PAT$36$A0"
  .Lgvan141: .string "PAT$37$A0"
  .Lgvan142: .string "PAT$37$A1"
  .Lgvan143: .string "PAT$39$A0"
  .Lgvan144: .string "PAT$40$A0"
  .Lgvan145: .string "PAT$40$A1"
  .Lgvan146: .string "PAT$42$A0"
  .Lgvan147: .string "PAT$43$A0"
  .Lgvan148: .string "PAT$43$A1"
  .Lgvan149: .string "PAT$45$A0"
  .Lgvan150: .string "PAT$46$A0"
  .Lgvan151: .string "PAT$46$A1"
  .Lgvan152: .string "PAT$48$A0"
  .Lgvan153: .string "PAT$49$A0"
  .Lgvan154: .string "PAT$49$A1"
  .Lgvan155: .string "PAT$51$A0"
  .Lgvan156: .string "PAT$52$A0"
  .Lgvan157: .string "PAT$52$A1"
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
  .quad .Lgvan8
  .quad .Lgvan9
  .quad .Lgvan10
  .quad .Lgvan11
  .quad .Lgvan12
  .quad .Lgvan13
  .quad .Lgvan14
  .quad .Lgvan15
  .quad .Lgvan16
  .quad .Lgvan17
  .quad .Lgvan18
  .quad .Lgvan19
  .quad .Lgvan20
  .quad .Lgvan21
  .quad .Lgvan22
  .quad .Lgvan23
  .quad .Lgvan24
  .quad .Lgvan25
  .quad .Lgvan26
  .quad .Lgvan27
  .quad .Lgvan28
  .quad .Lgvan29
  .quad .Lgvan30
  .quad .Lgvan31
  .quad .Lgvan32
  .quad .Lgvan33
  .quad .Lgvan34
  .quad .Lgvan35
  .quad .Lgvan36
  .quad .Lgvan37
  .quad .Lgvan38
  .quad .Lgvan39
  .quad .Lgvan40
  .quad .Lgvan41
  .quad .Lgvan42
  .quad .Lgvan43
  .quad .Lgvan44
  .quad .Lgvan45
  .quad .Lgvan46
  .quad .Lgvan47
  .quad .Lgvan48
  .quad .Lgvan49
  .quad .Lgvan50
  .quad .Lgvan51
  .quad .Lgvan52
  .quad .Lgvan53
  .quad .Lgvan54
  .quad .Lgvan55
  .quad .Lgvan56
  .quad .Lgvan57
  .quad .Lgvan58
  .quad .Lgvan59
  .quad .Lgvan60
  .quad .Lgvan61
  .quad .Lgvan62
  .quad .Lgvan63
  .quad .Lgvan64
  .quad .Lgvan65
  .quad .Lgvan66
  .quad .Lgvan67
  .quad .Lgvan68
  .quad .Lgvan69
  .quad .Lgvan70
  .quad .Lgvan71
  .quad .Lgvan72
  .quad .Lgvan73
  .quad .Lgvan74
  .quad .Lgvan75
  .quad .Lgvan76
  .quad .Lgvan77
  .quad .Lgvan78
  .quad .Lgvan79
  .quad .Lgvan80
  .quad .Lgvan81
  .quad .Lgvan82
  .quad .Lgvan83
  .quad .Lgvan84
  .quad .Lgvan85
  .quad .Lgvan86
  .quad .Lgvan87
  .quad .Lgvan88
  .quad .Lgvan89
  .quad .Lgvan90
  .quad .Lgvan91
  .quad .Lgvan92
  .quad .Lgvan93
  .quad .Lgvan94
  .quad .Lgvan95
  .quad .Lgvan96
  .quad .Lgvan97
  .quad .Lgvan98
  .quad .Lgvan99
  .quad .Lgvan100
  .quad .Lgvan101
  .quad .Lgvan102
  .quad .Lgvan103
  .quad .Lgvan104
  .quad .Lgvan105
  .quad .Lgvan106
  .quad .Lgvan107
  .quad .Lgvan108
  .quad .Lgvan109
  .quad .Lgvan110
  .quad .Lgvan111
  .quad .Lgvan112
  .quad .Lgvan113
  .quad .Lgvan114
  .quad .Lgvan115
  .quad .Lgvan116
  .quad .Lgvan117
  .quad .Lgvan118
  .quad .Lgvan119
  .quad .Lgvan120
  .quad .Lgvan121
  .quad .Lgvan122
  .quad .Lgvan123
  .quad .Lgvan124
  .quad .Lgvan125
  .quad .Lgvan126
  .quad .Lgvan127
  .quad .Lgvan128
  .quad .Lgvan129
  .quad .Lgvan130
  .quad .Lgvan131
  .quad .Lgvan132
  .quad .Lgvan133
  .quad .Lgvan134
  .quad .Lgvan135
  .quad .Lgvan136
  .quad .Lgvan137
  .quad .Lgvan138
  .quad .Lgvan139
  .quad .Lgvan140
  .quad .Lgvan141
  .quad .Lgvan142
  .quad .Lgvan143
  .quad .Lgvan144
  .quad .Lgvan145
  .quad .Lgvan146
  .quad .Lgvan147
  .quad .Lgvan148
  .quad .Lgvan149
  .quad .Lgvan150
  .quad .Lgvan151
  .quad .Lgvan152
  .quad .Lgvan153
  .quad .Lgvan154
  .quad .Lgvan155
  .quad .Lgvan156
  .quad .Lgvan157
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 158
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 158
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
  mov qword ptr [rsp + 14280], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_KEYWORD_SNOBOL4_read
 xchain1175_n0_α:
 mov rdi, qword ptr [rip + .Lx1176_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain1175_n1_α
 xchain1175_n0_β:
 jmp xchain1175_n8_α
.Lx1176_0:
 .quad .Lx1176_0_s
.Lx1176_0_s:
 .string "ALPHABET"
# IR_MATCH_HEAD
 xchain1175_n1_α:
 mov qword ptr [rbp + 152], rbp
 mov rdi, qword ptr [rbp + 304]
 mov rsi, qword ptr [rbp + 312]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 144], r12
 mov rax, rsp
 sub rsp, 32
 mov qword ptr [rsp + 16], rax
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rsp + 8], rax
 mov dword ptr [rsp + 0], 0
.Lx1178_0:
 mov r14d, dword ptr [rsp + 0]
 jmp xchain1175_n2_α
 xchain1175_n1_β:
 add dword ptr [rsp + 0], 1
 mov eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jg .Lx1178_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx1178_1
 jmp .Lx1178_0
.Lx1178_1:
 mov rax, qword ptr [rsp + 8]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 16]
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain1175_n8_α
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1175_n2_α:
 jmp xchain1175_n4_α
xchain1175_n2_as:
 jmp xchain1175_n3_α
 xchain1175_n2_β:
 jmp xchain1175_n7_β
xchain1175_n2_af:
 jmp xchain1175_n1_β
# IR_MATCH_RELEASE
 xchain1175_n3_α:
 mov rax, qword ptr [rsp + 24]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 32]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 176]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx1182_1:
 test rax, rax
 je .Lx1182_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1182_3]
 lea rdx, [rip + .Lx1182_4]
 jmp rax
.Lx1182_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1182_1
.Lx1182_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1182_1
.Lx1182_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain1175_n8_α
# IR_LIT_INTEGER
 xchain1175_n4_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx1183_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain1175_n5_α
 xchain1175_n4_β:
 jmp xchain1175_n2_af
.Lx1183_0:
 .quad 10
# IR_MATCH_POS
 xchain1175_n5_α:
 mov rax, 10
 cmp r14d, eax
 jne xchain1175_n2_af
 jmp xchain1175_n6_α
 xchain1175_n5_β:
 jmp xchain1175_n2_af
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1175_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1175_n9_α
 xchain1175_n6_β:
 add rsp, 16
 jmp xchain1175_n2_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1175_n7_α:
 mov eax, dword ptr [rsp + 0]
 lea rcx, [rip + .S1]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1175_n2_as
 xchain1175_n7_β:
 sub r12, 24
 jmp xchain1175_n9_β
# IR_LIT_STRING
 xchain1175_n8_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx1189_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain1175_n10_α
 xchain1175_n8_β:
 jmp xchain1175_n11_α
.Lx1189_0:
 .quad .Lx1189_0_s
.Lx1189_0_s:
 .string "list(head,tail)"
# IR_MATCH_LEN
 xchain1175_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jle .Lx1190_240
 add rsp, 16
 jmp xchain1175_n2_af
.Lx1190_240:
 add r14d, 1
 jmp xchain1175_n7_α
 xchain1175_n9_β:
 sub r14d, 1
 add rsp, 16
 jmp xchain1175_n2_af
 xchain1175_n10_α:
# BOX IR_CALL DATA(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn1192: .string "DATA"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1192]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain1175_n11_α
 jmp xchain1175_n11_α
 xchain1175_n10_β:
 jmp xchain1175_n11_α
# IR_LIT_INTEGER
 xchain1175_n11_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx1193_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain1175_n12_α
 xchain1175_n11_β:
 jmp xchain1175_n13_α
.Lx1193_0:
 .quad 0
# IR_ASSIGN gva
 xchain1175_n12_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain1175_n13_α
 xchain1175_n12_β:
 jmp xchain1175_n13_α
 xchain1175_n13_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1196: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1196]
 lea rsi, [rbp + 480]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain1175_n15_α
 jmp xchain1175_n14_α
 xchain1175_n13_β:
 jmp xchain1175_n15_α
# IR_ASSIGN gva
 xchain1175_n14_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain1175_n15_α
 xchain1175_n14_β:
 jmp xchain1175_n15_α
 xchain1175_n15_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1199: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1199]
 lea rsi, [rbp + 528]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain1175_n17_α
 jmp xchain1175_n16_α
 xchain1175_n15_β:
 jmp xchain1175_n17_α
# IR_ASSIGN gva
 xchain1175_n16_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain1175_n17_α
 xchain1175_n16_β:
 jmp xchain1175_n17_α
 xchain1175_n17_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1202: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1202]
 lea rsi, [rbp + 576]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain1175_n19_α
 jmp xchain1175_n18_α
 xchain1175_n17_β:
 jmp xchain1175_n19_α
# IR_ASSIGN gva
 xchain1175_n18_α:
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain1175_n19_α
 xchain1175_n18_β:
 jmp xchain1175_n19_α
# IR_LIT_STRING
 xchain1175_n19_α:
 mov qword ptr [rbp + 11504], 1
 mov rax, qword ptr [rip + .Lx1204_0]
 mov qword ptr [rbp + 11512], rax
 jmp xchain1175_n20_α
 xchain1175_n19_β:
 jmp xchain1175_n22_α
.Lx1204_0:
 .quad .Lx1204_0_s
.Lx1204_0_s:
 .string " "
# IR_VAR
 xchain1175_n20_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11536], rax
 mov qword ptr [rbp + 11544], rdx
 jmp xchain1175_n21_α
 xchain1175_n20_β:
 jmp xchain1175_n22_α
 xchain1175_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11504]
 mov rsi, qword ptr [rbp + 11512]
 mov rdx, qword ptr [rbp + 11536]
 mov rcx, qword ptr [rbp + 11544]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain1175_n23_α
 xchain1175_n21_β:
 jmp xchain1175_n22_α
# IR_LIT_STRING
 xchain1175_n22_α:
 mov qword ptr [rbp + 11824], 1
 mov rax, qword ptr [rip + .Lx1207_0]
 mov qword ptr [rbp + 11832], rax
 jmp xchain1175_n24_α
 xchain1175_n22_β:
 jmp xchain1175_n27_α
.Lx1207_0:
 .quad .Lx1207_0_s
.Lx1207_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain1175_n23_α:
 mov rax, qword ptr [rbp + 11472]
 mov rdx, qword ptr [rbp + 11480]
 mov qword ptr [1879053952], rax
 mov qword ptr [1879053960], rdx
 mov qword ptr [rbp + 11456], rax
 mov qword ptr [rbp + 11464], rdx
 jmp xchain1175_n25_α
 xchain1175_n23_β:
 jmp xchain1175_n22_α
# IR_VAR
 xchain1175_n24_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11856], rax
 mov qword ptr [rbp + 11864], rdx
 jmp xchain1175_n26_α
 xchain1175_n24_β:
 jmp xchain1175_n27_α
# IR_LIT_STRING
 xchain1175_n25_α:
 mov qword ptr [rbp + 11424], 1
 mov rax, qword ptr [rip + .Lx1210_0]
 mov qword ptr [rbp + 11432], rax
 jmp xchain1175_n28_α
 xchain1175_n25_β:
 jmp xchain1175_n22_α
.Lx1210_0:
 .quad .Lx1210_0_s
.Lx1210_0_s:
 .string "PAT$0"
 xchain1175_n26_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11824]
 mov rsi, qword ptr [rbp + 11832]
 mov rdx, qword ptr [rbp + 11856]
 mov rcx, qword ptr [rbp + 11864]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11792], rax
 mov qword ptr [rbp + 11800], rdx
 jmp xchain1175_n29_α
 xchain1175_n26_β:
 jmp xchain1175_n27_α
# IR_LIT_STRING
 xchain1175_n27_α:
 mov qword ptr [rbp + 12064], 1
 mov rax, qword ptr [rip + .Lx1212_0]
 mov qword ptr [rbp + 12072], rax
 jmp xchain1175_n30_α
 xchain1175_n27_β:
 jmp xchain1175_n38_α
.Lx1212_0:
 .quad .Lx1212_0_s
.Lx1212_0_s:
 .string "("
 xchain1175_n28_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11424] -> [zr+11392]
 mov rax, qword ptr [rbp + 11424]
 mov qword ptr [rbp + 11392], rax
 mov rax, qword ptr [rbp + 11432]
 mov qword ptr [rbp + 11400], rax
  .section .rodata
  .Lrkfn1214: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1214]
 lea rsi, [rbp + 11392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11376], rax
 mov qword ptr [rbp + 11384], rdx
 cmp eax, 99
 je xchain1175_n22_α
 jmp xchain1175_n31_α
 xchain1175_n28_β:
 jmp xchain1175_n22_α
# IR_ASSIGN gva
 xchain1175_n29_α:
 mov rax, qword ptr [rbp + 11792]
 mov rdx, qword ptr [rbp + 11800]
 mov qword ptr [1879053984], rax
 mov qword ptr [1879053992], rdx
 mov qword ptr [rbp + 11776], rax
 mov qword ptr [rbp + 11784], rdx
 jmp xchain1175_n32_α
 xchain1175_n29_β:
 jmp xchain1175_n27_α
# IR_LIT_INTEGER
 xchain1175_n30_α:
 mov qword ptr [rbp + 12176], 6
 mov rax, qword ptr [rip + .Lx1216_0]
 mov qword ptr [rbp + 12184], rax
 jmp xchain1175_n33_α
 xchain1175_n30_β:
 jmp xchain1175_n38_α
.Lx1216_0:
 .quad 42
# IR_ASSIGN gva
 xchain1175_n31_α:
 mov rax, qword ptr [rbp + 11376]
 mov rdx, qword ptr [rbp + 11384]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 jmp xchain1175_n22_α
 xchain1175_n31_β:
 jmp xchain1175_n22_α
# IR_LIT_STRING
 xchain1175_n32_α:
 mov qword ptr [rbp + 11712], 1
 mov rax, qword ptr [rip + .Lx1218_0]
 mov qword ptr [rbp + 11720], rax
 jmp xchain1175_n34_α
 xchain1175_n32_β:
 jmp xchain1175_n27_α
.Lx1218_0:
 .quad .Lx1218_0_s
.Lx1218_0_s:
 .string "( )"
# IR_LIT_STRING
 xchain1175_n33_α:
 mov qword ptr [rbp + 12208], 1
 mov rax, qword ptr [rip + .Lx1219_0]
 mov qword ptr [rbp + 12216], rax
 jmp xchain1175_n35_α
 xchain1175_n33_β:
 jmp xchain1175_n38_α
.Lx1219_0:
 .quad .Lx1219_0_s
.Lx1219_0_s:
 .string "tag"
# IR_VAR
 xchain1175_n34_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11744], rax
 mov qword ptr [rbp + 11752], rdx
 jmp xchain1175_n36_α
 xchain1175_n34_β:
 jmp xchain1175_n27_α
# IR_VAR
 xchain1175_n35_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 mov qword ptr [rbp + 12240], rax
 mov qword ptr [rbp + 12248], rdx
 jmp xchain1175_n37_α
 xchain1175_n35_β:
 jmp xchain1175_n38_α
 xchain1175_n36_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11712]
 mov rsi, qword ptr [rbp + 11720]
 mov rdx, qword ptr [rbp + 11744]
 mov rcx, qword ptr [rbp + 11752]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11680], rax
 mov qword ptr [rbp + 11688], rdx
 jmp xchain1175_n39_α
 xchain1175_n36_β:
 jmp xchain1175_n27_α
 xchain1175_n37_α:
# BOX CALL SNO$PBC(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+12176] -> [zr+12112]
 mov rax, qword ptr [rbp + 12176]
 mov qword ptr [rbp + 12112], rax
 mov rax, qword ptr [rbp + 12184]
 mov qword ptr [rbp + 12120], rax
# marshal arg1 = producer-box slot [zr+12208] -> [zr+12128]
 mov rax, qword ptr [rbp + 12208]
 mov qword ptr [rbp + 12128], rax
 mov rax, qword ptr [rbp + 12216]
 mov qword ptr [rbp + 12136], rax
# marshal arg2 = producer-box slot [zr+12240] -> [zr+12144]
 mov rax, qword ptr [rbp + 12240]
 mov qword ptr [rbp + 12144], rax
 mov rax, qword ptr [rbp + 12248]
 mov qword ptr [rbp + 12152], rax
  .section .rodata
  .Lbynamefn792: .string "SNO$PBC"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn792]
 lea rsi, [rbp + 12112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12096], rax
 mov qword ptr [rbp + 12104], rdx
 cmp eax, 99
 je xchain1175_n38_α
 jmp xchain1175_n40_α
 xchain1175_n37_β:
 jmp xchain1175_n38_α
# IR_LIT_STRING
 xchain1175_n38_α:
 mov qword ptr [rbp + 13072], 1
 mov rax, qword ptr [rip + .Lx1224_0]
 mov qword ptr [rbp + 13080], rax
 jmp xchain1175_n41_α
 xchain1175_n38_β:
 jmp xchain1175_n45_α
.Lx1224_0:
 .quad .Lx1224_0_s
.Lx1224_0_s:
 .string "PAT$2"
# IR_ASSIGN gva
 xchain1175_n39_α:
 mov rax, qword ptr [rbp + 11680]
 mov rdx, qword ptr [rbp + 11688]
 mov qword ptr [1879053968], rax
 mov qword ptr [1879053976], rdx
 mov qword ptr [rbp + 11664], rax
 mov qword ptr [rbp + 11672], rdx
 jmp xchain1175_n42_α
 xchain1175_n39_β:
 jmp xchain1175_n27_α
 xchain1175_n40_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12064]
 mov rsi, qword ptr [rbp + 12072]
 mov rdx, qword ptr [rbp + 12096]
 mov rcx, qword ptr [rbp + 12104]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12032], rax
 mov qword ptr [rbp + 12040], rdx
 jmp xchain1175_n43_α
 xchain1175_n40_β:
 jmp xchain1175_n38_α
 xchain1175_n41_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13072] -> [zr+13040]
 mov rax, qword ptr [rbp + 13072]
 mov qword ptr [rbp + 13040], rax
 mov rax, qword ptr [rbp + 13080]
 mov qword ptr [rbp + 13048], rax
  .section .rodata
  .Lrkfn1228: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1228]
 lea rsi, [rbp + 13040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 13024], rax
 mov qword ptr [rbp + 13032], rdx
 cmp eax, 99
 je xchain1175_n45_α
 jmp xchain1175_n44_α
 xchain1175_n41_β:
 jmp xchain1175_n45_α
# IR_LIT_STRING
 xchain1175_n42_α:
 mov qword ptr [rbp + 11632], 1
 mov rax, qword ptr [rip + .Lx1229_0]
 mov qword ptr [rbp + 11640], rax
 jmp xchain1175_n46_α
 xchain1175_n42_β:
 jmp xchain1175_n27_α
.Lx1229_0:
 .quad .Lx1229_0_s
.Lx1229_0_s:
 .string "PAT$1"
# IR_LIT_STRING
 xchain1175_n43_α:
 mov qword ptr [rbp + 12320], 1
 mov rax, qword ptr [rip + .Lx1230_0]
 mov qword ptr [rbp + 12328], rax
 jmp xchain1175_n47_α
 xchain1175_n43_β:
 jmp xchain1175_n38_α
.Lx1230_0:
 .quad .Lx1230_0_s
.Lx1230_0_s:
 .string "tag"
# IR_ASSIGN gva
 xchain1175_n44_α:
 mov rax, qword ptr [rbp + 13024]
 mov rdx, qword ptr [rbp + 13032]
 mov qword ptr [1879053024], rax
 mov qword ptr [1879053032], rdx
 mov qword ptr [rbp + 13008], rax
 mov qword ptr [rbp + 13016], rdx
 jmp xchain1175_n45_α
 xchain1175_n44_β:
 jmp xchain1175_n45_α
# IR_VAR
 xchain1175_n45_α:
 mov rdi, qword ptr [rip + .Lx1232_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain1175_n49_α
 mov qword ptr [rbp + 13120], rax
 mov qword ptr [rbp + 13128], rdx
 jmp xchain1175_n48_α
 xchain1175_n45_β:
 jmp xchain1175_n49_α
.Lx1232_0:
 .quad .Lx1232_0_s
.Lx1232_0_s:
 .string "INPUT"
 xchain1175_n46_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11632] -> [zr+11600]
 mov rax, qword ptr [rbp + 11632]
 mov qword ptr [rbp + 11600], rax
 mov rax, qword ptr [rbp + 11640]
 mov qword ptr [rbp + 11608], rax
  .section .rodata
  .Lrkfn1234: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1234]
 lea rsi, [rbp + 11600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11584], rax
 mov qword ptr [rbp + 11592], rdx
 cmp eax, 99
 je xchain1175_n27_α
 jmp xchain1175_n50_α
 xchain1175_n46_β:
 jmp xchain1175_n27_α
 xchain1175_n47_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1236_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1236_5
 mov rax, qword ptr [rbp + 12320]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 12328]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1236_6]
 lea rdx, [rip + .Lx1236_7]
 jmp rax
.Lx1236_6:
 mov rdi, qword ptr [1879052512]
 mov rsi, qword ptr [1879052520]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052512], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052520], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052488], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1236_2
.Lx1236_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052512], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052520], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052488], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1236_2
.Lx1236_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12320]
 mov rdx, qword ptr [rbp + 12328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1236_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1236_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1236_3]
 lea rdx, [rip + .Lx1236_4]
 jmp rax
.Lx1236_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1236_2
.Lx1236_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1236_2
.Lx1236_1:
 call rt_faildescr@PLT
.Lx1236_2:
 mov qword ptr [rbp + 12272], rax
 mov qword ptr [rbp + 12280], rdx
 cmp eax, 99
 je xchain1175_n38_α
 jmp xchain1175_n51_α
 xchain1175_n47_β:
 jmp xchain1175_n38_α
.Lx1236_0:
 .quad .Lx1236_0_s
.Lx1236_0_s:
 .string "Push_list"
# IR_ASSIGN gva
 xchain1175_n48_α:
 mov rax, qword ptr [rbp + 13120]
 mov rdx, qword ptr [rbp + 13128]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
 mov qword ptr [rbp + 13104], rax
 mov qword ptr [rbp + 13112], rdx
 jmp xchain1175_n52_α
 xchain1175_n48_β:
 jmp xchain1175_n49_α
# IR_LIT_STRING
 xchain1175_n49_α:
 mov qword ptr [rbp + 13392], 1
 mov rax, qword ptr [rip + .Lx1238_0]
 mov qword ptr [rbp + 13400], rax
 jmp xchain1175_n53_α
 xchain1175_n49_β:
 jmp xchain1175_n57_α
.Lx1238_0:
 .quad .Lx1238_0_s
.Lx1238_0_s:
 .string "bank"
# IR_ASSIGN gva
 xchain1175_n50_α:
 mov rax, qword ptr [rbp + 11584]
 mov rdx, qword ptr [rbp + 11592]
 mov qword ptr [1879052976], rax
 mov qword ptr [1879052984], rdx
 mov qword ptr [rbp + 11568], rax
 mov qword ptr [rbp + 11576], rdx
 jmp xchain1175_n27_α
 xchain1175_n50_β:
 jmp xchain1175_n27_α
 xchain1175_n51_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12032]
 mov rsi, qword ptr [rbp + 12040]
 mov rdx, qword ptr [rbp + 12272]
 mov rcx, qword ptr [rbp + 12280]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12000], rax
 mov qword ptr [rbp + 12008], rdx
 jmp xchain1175_n54_α
 xchain1175_n51_β:
 jmp xchain1175_n38_α
# IR_VAR
 xchain1175_n52_α:
 mov rax, qword ptr [1879053072]
 mov rdx, qword ptr [1879053080]
 mov qword ptr [rbp + 13232], rax
 mov qword ptr [rbp + 13240], rdx
 jmp xchain1175_n55_α
 xchain1175_n52_β:
 jmp xchain1175_n45_α
 xchain1175_n53_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052448]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052456]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1243_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1243_5
 mov rax, qword ptr [rbp + 13392]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 13400]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1243_6]
 lea rdx, [rip + .Lx1243_7]
 jmp rax
.Lx1243_6:
 mov rdi, qword ptr [1879052448]
 mov rsi, qword ptr [1879052456]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052448], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052456], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1243_2
.Lx1243_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052448], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052456], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1243_2
.Lx1243_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 13392]
 mov rdx, qword ptr [rbp + 13400]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1243_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1243_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1243_3]
 lea rdx, [rip + .Lx1243_4]
 jmp rax
.Lx1243_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1243_2
.Lx1243_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1243_2
.Lx1243_1:
 call rt_faildescr@PLT
.Lx1243_2:
 mov qword ptr [rbp + 13344], rax
 mov qword ptr [rbp + 13352], rdx
 cmp eax, 99
 je xchain1175_n57_α
 jmp xchain1175_n56_α
 xchain1175_n53_β:
 jmp xchain1175_n57_α
.Lx1243_0:
 .quad .Lx1243_0_s
.Lx1243_0_s:
 .string "init_list"
# IR_LIT_STRING
 xchain1175_n54_α:
 mov qword ptr [rbp + 12480], 1
 mov rax, qword ptr [rip + .Lx1244_0]
 mov qword ptr [rbp + 12488], rax
 jmp xchain1175_n58_α
 xchain1175_n54_β:
 jmp xchain1175_n38_α
.Lx1244_0:
 .quad .Lx1244_0_s
.Lx1244_0_s:
 .string "EXPR$1"
# IR_VAR
 xchain1175_n55_α:
 mov rax, qword ptr [1879053056]
 mov rdx, qword ptr [1879053064]
 mov qword ptr [rbp + 13264], rax
 mov qword ptr [rbp + 13272], rdx
 jmp xchain1175_n59_α
 xchain1175_n55_β:
 jmp xchain1175_n45_α
# IR_ASSIGN gva
 xchain1175_n56_α:
 mov rax, qword ptr [rbp + 13344]
 mov rdx, qword ptr [rbp + 13352]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13328], rax
 mov qword ptr [rbp + 13336], rdx
 jmp xchain1175_n57_α
 xchain1175_n56_β:
 jmp xchain1175_n57_α
# IR_LIT_STRING
 xchain1175_n57_α:
 mov qword ptr [rbp + 13488], 1
 mov rax, qword ptr [rip + .Lx1247_0]
 mov qword ptr [rbp + 13496], rax
 jmp xchain1175_n60_α
 xchain1175_n57_β:
 jmp xchain1175_n64_α
.Lx1247_0:
 .quad .Lx1247_0_s
.Lx1247_0_s:
 .string "BANK"
 xchain1175_n58_α:
# BOX IR_CALL SNO$MKEXPR(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12480] -> [zr+12448]
 mov rax, qword ptr [rbp + 12480]
 mov qword ptr [rbp + 12448], rax
 mov rax, qword ptr [rbp + 12488]
 mov qword ptr [rbp + 12456], rax
  .section .rodata
  .Lrkfn1249: .string "SNO$MKEXPR"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1249]
 lea rsi, [rbp + 12448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12432], rax
 mov qword ptr [rbp + 12440], rdx
 cmp eax, 99
 je xchain1175_n38_α
 jmp xchain1175_n61_α
 xchain1175_n58_β:
 jmp xchain1175_n38_α
 xchain1175_n59_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 13232]
 mov rsi, qword ptr [rbp + 13240]
 mov rdx, qword ptr [rbp + 13264]
 mov rcx, qword ptr [rbp + 13272]
 call str_concat_d@PLT
 mov qword ptr [rbp + 13200], rax
 mov qword ptr [rbp + 13208], rdx
 jmp xchain1175_n62_α
 xchain1175_n59_β:
 jmp xchain1175_n45_α
 xchain1175_n60_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1252_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1252_5
 mov rax, qword ptr [rbp + 13488]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 13496]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1252_6]
 lea rdx, [rip + .Lx1252_7]
 jmp rax
.Lx1252_6:
 mov rdi, qword ptr [1879052288]
 mov rsi, qword ptr [1879052296]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1252_2
.Lx1252_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1252_2
.Lx1252_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 13488]
 mov rdx, qword ptr [rbp + 13496]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1252_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1252_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1252_3]
 lea rdx, [rip + .Lx1252_4]
 jmp rax
.Lx1252_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1252_2
.Lx1252_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1252_2
.Lx1252_1:
 call rt_faildescr@PLT
.Lx1252_2:
 mov qword ptr [rbp + 13440], rax
 mov qword ptr [rbp + 13448], rdx
 cmp eax, 99
 je xchain1175_n64_α
 jmp xchain1175_n63_α
 xchain1175_n60_β:
 jmp xchain1175_n64_α
.Lx1252_0:
 .quad .Lx1252_0_s
.Lx1252_0_s:
 .string "stk_push_frame"
# IR_LIT_STRING
 xchain1175_n61_α:
 mov qword ptr [rbp + 12624], 1
 mov rax, qword ptr [rip + .Lx1253_0]
 mov qword ptr [rbp + 12632], rax
 jmp xchain1175_n65_α
 xchain1175_n61_β:
 jmp xchain1175_n38_α
.Lx1253_0:
 .quad .Lx1253_0_s
.Lx1253_0_s:
 .string "EXPR$2"
# IR_VAR
 xchain1175_n62_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 13296], rax
 mov qword ptr [rbp + 13304], rdx
 jmp xchain1175_n66_α
 xchain1175_n62_β:
 jmp xchain1175_n45_α
# IR_ASSIGN gva
 xchain1175_n63_α:
 mov rax, qword ptr [rbp + 13440]
 mov rdx, qword ptr [rbp + 13448]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13424], rax
 mov qword ptr [rbp + 13432], rdx
 jmp xchain1175_n64_α
 xchain1175_n63_β:
 jmp xchain1175_n64_α
# IR_VAR
 xchain1175_n64_α:
 mov rax, qword ptr [1879053072]
 mov rdx, qword ptr [1879053080]
 mov qword ptr [rbp + 13664], rax
 mov qword ptr [rbp + 13672], rdx
 jmp xchain1175_n67_α
 xchain1175_n64_β:
 jmp xchain1175_n68_α
 xchain1175_n65_α:
# BOX IR_CALL SNO$MKEXPR(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12624] -> [zr+12592]
 mov rax, qword ptr [rbp + 12624]
 mov qword ptr [rbp + 12592], rax
 mov rax, qword ptr [rbp + 12632]
 mov qword ptr [rbp + 12600], rax
  .section .rodata
  .Lrkfn1258: .string "SNO$MKEXPR"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1258]
 lea rsi, [rbp + 12592]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12576], rax
 mov qword ptr [rbp + 12584], rdx
 cmp eax, 99
 je xchain1175_n38_α
 jmp xchain1175_n69_α
 xchain1175_n65_β:
 jmp xchain1175_n38_α
 xchain1175_n66_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 13200]
 mov rsi, qword ptr [rbp + 13208]
 mov rdx, qword ptr [rbp + 13296]
 mov rcx, qword ptr [rbp + 13304]
 call str_concat_d@PLT
 mov qword ptr [rbp + 13168], rax
 mov qword ptr [rbp + 13176], rdx
 jmp xchain1175_n70_α
 xchain1175_n66_β:
 jmp xchain1175_n45_α
# IR_MATCH_HEAD
 xchain1175_n67_α:
 mov qword ptr [rbp + 13576], rbp
 mov rdi, qword ptr [rbp + 13664]
 mov rsi, qword ptr [rbp + 13672]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 13568], r12
 mov qword ptr [rbp + 13552], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 13544], rax
 mov dword ptr [rbp + 13536], 0
.Lx1261_0:
 mov r14d, dword ptr [rbp + 13536]
 jmp xchain1175_n71_α
 xchain1175_n67_β:
 add dword ptr [rbp + 13536], 1
 mov eax, dword ptr [rbp + 13536]
 cmp eax, r15d
 jg .Lx1261_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx1261_1
 jmp .Lx1261_0
.Lx1261_1:
 mov rax, qword ptr [rbp + 13544]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 13552]
 mov r12, qword ptr [rbp + 13568]
 mov rbp, qword ptr [rbp + 13576]
 jmp xchain1175_n68_α
# IR_LIT_STRING
 xchain1175_n68_α:
 mov qword ptr [rbp + 14192], 1
 mov rax, qword ptr [rip + .Lx1262_0]
 mov qword ptr [rbp + 14200], rax
 jmp xchain1175_n72_α
 xchain1175_n68_β:
 jmp xchain1175_n76_α
.Lx1262_0:
 .quad .Lx1262_0_s
.Lx1262_0_s:
 .string "bank"
# IR_LIT_INTEGER
 xchain1175_n69_α:
 mov qword ptr [rbp + 12768], 6
 mov rax, qword ptr [rip + .Lx1263_0]
 mov qword ptr [rbp + 12776], rax
 jmp xchain1175_n73_α
 xchain1175_n69_β:
 jmp xchain1175_n38_α
.Lx1263_0:
 .quad 42
# IR_ASSIGN gva
 xchain1175_n70_α:
 mov rax, qword ptr [rbp + 13168]
 mov rdx, qword ptr [rbp + 13176]
 mov qword ptr [1879053072], rax
 mov qword ptr [1879053080], rdx
 mov qword ptr [rbp + 13152], rax
 mov qword ptr [rbp + 13160], rdx
 jmp xchain1175_n45_α
 xchain1175_n70_β:
 jmp xchain1175_n45_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1175_n71_α:
 mov rax, qword ptr [1879053024]
 mov rdx, qword ptr [1879053032]
 cmp eax, 3
 jne .Lx1265_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1265_10
.Lx1265_9:
 xor eax, eax
.Lx1265_10:
 test rax, rax
 jz .Lx1265_0
 mov r8d, 0
 lea rcx, [rip + .Lx1265_4]
 lea rdx, [rip + .Lx1265_5]
 jmp rax
.Lx1265_4:
 jmp xchain1175_n74_α
.Lx1265_5:
 jmp xchain1175_n67_β
.Lx1265_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S2]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1265_2:
 test rax, rax
 je .Lx1265_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1265_7]
 lea rdx, [rip + .Lx1265_8]
 jmp rax
.Lx1265_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1265_2
.Lx1265_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1265_2
.Lx1265_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1175_n67_β
 mov r14d, eax
 lea rax, [rip + .Lx1265_6]
 sub rsp, 8
 push rax
 jmp xchain1175_n74_α
.Lx1265_6:
 add rsp, 16
 jmp xchain1175_n67_β
 xchain1175_n71_β:
 jmp qword ptr [rsp]
 xchain1175_n72_α:
 sub rsp, 48
 mov rax, qword ptr [1879052432]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052440]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052368]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052376]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052416]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052424]
 mov qword ptr [rsp + 40], rax
 mov rdi, qword ptr [rip + .Lx1267_0]
 mov esi, 2
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1267_5
 mov rax, qword ptr [rbp + 14192]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rbp + 14200]
 mov qword ptr [1879052440], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1267_6]
 lea rdx, [rip + .Lx1267_7]
 jmp rax
.Lx1267_6:
 mov rdi, qword ptr [1879052416]
 mov rsi, qword ptr [1879052424]
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052416], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052424], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052376], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052440], rax
 add rsp, 48
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1267_2
.Lx1267_7:
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052416], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052424], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052376], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052440], rax
 add rsp, 48
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1267_2
.Lx1267_5:
 add rsp, 48
 mov edi, 0
 mov rsi, qword ptr [rbp + 14192]
 mov rdx, qword ptr [rbp + 14200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1267_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1267_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1267_3]
 lea rdx, [rip + .Lx1267_4]
 jmp rax
.Lx1267_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1267_2
.Lx1267_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1267_2
.Lx1267_1:
 call rt_faildescr@PLT
.Lx1267_2:
 mov qword ptr [rbp + 14144], rax
 mov qword ptr [rbp + 14152], rdx
 cmp eax, 99
 je xchain1175_n76_α
 jmp xchain1175_n75_α
 xchain1175_n72_β:
 jmp xchain1175_n76_α
.Lx1267_0:
 .quad .Lx1267_0_s
.Lx1267_0_s:
 .string "stk_pop_final"
# IR_LIT_STRING
 xchain1175_n73_α:
 mov qword ptr [rbp + 12800], 1
 mov rax, qword ptr [rip + .Lx1268_0]
 mov qword ptr [rbp + 12808], rax
 jmp xchain1175_n77_α
 xchain1175_n73_β:
 jmp xchain1175_n38_α
.Lx1268_0:
 .quad .Lx1268_0_s
.Lx1268_0_s:
 .string "wrd"
# IR_MATCH_RELEASE
 xchain1175_n74_α:
 mov rax, qword ptr [rbp + 13544]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov qword ptr [rbp + 13560], r14
 mov rsp, qword ptr [rbp + 13552]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 13600]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx1270_1:
 test rax, rax
 je .Lx1270_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1270_3]
 lea rdx, [rip + .Lx1270_4]
 jmp rax
.Lx1270_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1270_1
.Lx1270_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1270_1
.Lx1270_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 13568]
 jmp xchain1175_n78_α
# IR_ASSIGN gva
 xchain1175_n75_α:
 mov rax, qword ptr [rbp + 14144]
 mov rdx, qword ptr [rbp + 14152]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 14128], rax
 mov qword ptr [rbp + 14136], rdx
 jmp xchain1175_n76_α
 xchain1175_n75_β:
 jmp xchain1175_n76_α
 xchain1175_n76_α:
 sub rsp, 16
 mov rax, qword ptr [1879052800]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052808]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1273_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1273_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1273_6]
 lea rdx, [rip + .Lx1273_7]
 jmp rax
.Lx1273_6:
 mov rdi, qword ptr [1879052800]
 mov rsi, qword ptr [1879052808]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1273_2
.Lx1273_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1273_2
.Lx1273_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1273_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1273_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1273_3]
 lea rdx, [rip + .Lx1273_4]
 jmp rax
.Lx1273_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1273_2
.Lx1273_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1273_2
.Lx1273_1:
 call rt_faildescr@PLT
.Lx1273_2:
 mov qword ptr [rbp + 14240], rax
 mov qword ptr [rbp + 14248], rdx
 cmp eax, 99
 je main_γ
 jmp xchain1175_n79_α
 xchain1175_n76_β:
 jmp main_γ
.Lx1273_0:
 .quad .Lx1273_0_s
.Lx1273_0_s:
 .string "pp_bank"
# IR_VAR
 xchain1175_n77_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 mov qword ptr [rbp + 12832], rax
 mov qword ptr [rbp + 12840], rdx
 jmp xchain1175_n80_α
 xchain1175_n77_β:
 jmp xchain1175_n38_α
# IR_LIT_STRING
 xchain1175_n78_α:
 mov qword ptr [rbp + 13600], 1
 mov rax, qword ptr [rip + .Lx1275_0]
 mov qword ptr [rbp + 13608], rax
 jmp xchain1175_n81_α
 xchain1175_n78_β:
 jmp xchain1175_n68_α
.Lx1275_0:
 .quad .Lx1275_0_s
.Lx1275_0_s:
 .string ""
# IR_ASSIGN gva
 xchain1175_n79_α:
 mov rax, qword ptr [rbp + 14240]
 mov rdx, qword ptr [rbp + 14248]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 14224], rax
 mov qword ptr [rbp + 14232], rdx
 jmp main_γ
 xchain1175_n79_β:
 jmp main_γ
 xchain1175_n80_α:
# BOX CALL SNO$PBC(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+12768] -> [zr+12704]
 mov rax, qword ptr [rbp + 12768]
 mov qword ptr [rbp + 12704], rax
 mov rax, qword ptr [rbp + 12776]
 mov qword ptr [rbp + 12712], rax
# marshal arg1 = producer-box slot [zr+12800] -> [zr+12720]
 mov rax, qword ptr [rbp + 12800]
 mov qword ptr [rbp + 12720], rax
 mov rax, qword ptr [rbp + 12808]
 mov qword ptr [rbp + 12728], rax
# marshal arg2 = producer-box slot [zr+12832] -> [zr+12736]
 mov rax, qword ptr [rbp + 12832]
 mov qword ptr [rbp + 12736], rax
 mov rax, qword ptr [rbp + 12840]
 mov qword ptr [rbp + 12744], rax
  .section .rodata
  .Lbynamefn835: .string "SNO$PBC"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn835]
 lea rsi, [rbp + 12704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12688], rax
 mov qword ptr [rbp + 12696], rdx
 cmp eax, 99
 je xchain1175_n38_α
 jmp xchain1175_n82_α
 xchain1175_n80_β:
 jmp xchain1175_n38_α
# IR_MATCH_REPLACE
 xchain1175_n81_α:
 mov rdi, qword ptr [rip + .Lx1279_0]
 mov rsi, qword ptr [rbp + 13664]
 mov rdx, qword ptr [rbp + 13672]
 mov ecx, dword ptr [rbp + 13536]
 mov r8, qword ptr [rbp + 13560]
 lea r9, [rbp + 13600]
 call rt_match_replace@PLT
 jmp .Lx1279_1
.Lx1279_0:
 .quad .Lx1279_0_s
.Lx1279_0_s:
 .string "src"
.Lx1279_1:
 mov rbp, qword ptr [rbp + 13576]
 jmp xchain1175_n83_α
# IR_LIT_STRING
 xchain1175_n82_α:
 mov qword ptr [rbp + 12912], 1
 mov rax, qword ptr [rip + .Lx1280_0]
 mov qword ptr [rbp + 12920], rax
 jmp xchain1175_n84_α
 xchain1175_n82_β:
 jmp xchain1175_n38_α
.Lx1280_0:
 .quad .Lx1280_0_s
.Lx1280_0_s:
 .string "wrd"
# IR_LIT_STRING
 xchain1175_n83_α:
 mov qword ptr [rbp + 13760], 1
 mov rax, qword ptr [rip + .Lx1281_0]
 mov qword ptr [rbp + 13768], rax
 jmp xchain1175_n85_α
 xchain1175_n83_β:
 jmp xchain1175_n88_α
.Lx1281_0:
 .quad .Lx1281_0_s
.Lx1281_0_s:
 .string "ROOT"
 xchain1175_n84_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1283_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1283_5
 mov rax, qword ptr [rbp + 12912]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 12920]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1283_6]
 lea rdx, [rip + .Lx1283_7]
 jmp rax
.Lx1283_6:
 mov rdi, qword ptr [1879052544]
 mov rsi, qword ptr [1879052552]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052544], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052552], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052488], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1283_2
.Lx1283_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052544], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052552], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052488], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1283_2
.Lx1283_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12912]
 mov rdx, qword ptr [rbp + 12920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1283_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1283_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1283_3]
 lea rdx, [rip + .Lx1283_4]
 jmp rax
.Lx1283_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1283_2
.Lx1283_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1283_2
.Lx1283_1:
 call rt_faildescr@PLT
.Lx1283_2:
 mov qword ptr [rbp + 12864], rax
 mov qword ptr [rbp + 12872], rdx
 cmp eax, 99
 je xchain1175_n38_α
 jmp xchain1175_n86_α
 xchain1175_n84_β:
 jmp xchain1175_n38_α
.Lx1283_0:
 .quad .Lx1283_0_s
.Lx1283_0_s:
 .string "Push_item"
 xchain1175_n85_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1285_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1285_5
 mov rax, qword ptr [rbp + 13760]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 13768]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1285_6]
 lea rdx, [rip + .Lx1285_7]
 jmp rax
.Lx1285_6:
 mov rdi, qword ptr [1879052288]
 mov rsi, qword ptr [1879052296]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1285_2
.Lx1285_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1285_2
.Lx1285_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 13760]
 mov rdx, qword ptr [rbp + 13768]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1285_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1285_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1285_3]
 lea rdx, [rip + .Lx1285_4]
 jmp rax
.Lx1285_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1285_2
.Lx1285_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1285_2
.Lx1285_1:
 call rt_faildescr@PLT
.Lx1285_2:
 mov qword ptr [rbp + 13712], rax
 mov qword ptr [rbp + 13720], rdx
 cmp eax, 99
 je xchain1175_n88_α
 jmp xchain1175_n87_α
 xchain1175_n85_β:
 jmp xchain1175_n88_α
.Lx1285_0:
 .quad .Lx1285_0_s
.Lx1285_0_s:
 .string "stk_push_frame"
 xchain1175_n86_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12688]
 mov rsi, qword ptr [rbp + 12696]
 mov rdx, qword ptr [rbp + 12864]
 mov rcx, qword ptr [rbp + 12872]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12656], rax
 mov qword ptr [rbp + 12664], rdx
 jmp xchain1175_n89_α
 xchain1175_n86_β:
 jmp xchain1175_n38_α
# IR_ASSIGN gva
 xchain1175_n87_α:
 mov rax, qword ptr [rbp + 13712]
 mov rdx, qword ptr [rbp + 13720]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13696], rax
 mov qword ptr [rbp + 13704], rdx
 jmp xchain1175_n88_α
 xchain1175_n87_β:
 jmp xchain1175_n88_α
# IR_VAR
 xchain1175_n88_α:
 mov rax, qword ptr [1879053040]
 mov rdx, qword ptr [1879053048]
 mov qword ptr [rbp + 13888], rax
 mov qword ptr [rbp + 13896], rdx
 jmp xchain1175_n90_α
 xchain1175_n88_β:
 jmp xchain1175_n91_α
 xchain1175_n89_α:
# BOX CALL SNO$PBALT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+12576] -> [zr+12528]
 mov rax, qword ptr [rbp + 12576]
 mov qword ptr [rbp + 12528], rax
 mov rax, qword ptr [rbp + 12584]
 mov qword ptr [rbp + 12536], rax
# marshal arg1 = producer-box slot [zr+12656] -> [zr+12544]
 mov rax, qword ptr [rbp + 12656]
 mov qword ptr [rbp + 12544], rax
 mov rax, qword ptr [rbp + 12664]
 mov qword ptr [rbp + 12552], rax
  .section .rodata
  .Lbynamefn844: .string "SNO$PBALT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn844]
 lea rsi, [rbp + 12528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12512], rax
 mov qword ptr [rbp + 12520], rdx
 cmp eax, 99
 je xchain1175_n38_α
 jmp xchain1175_n92_α
 xchain1175_n89_β:
 jmp xchain1175_n38_α
# IR_MATCH_HEAD
 xchain1175_n90_α:
 mov qword ptr [rbp + 13848], rbp
 mov rdi, qword ptr [rbp + 13888]
 mov rsi, qword ptr [rbp + 13896]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 13840], r12
 mov qword ptr [rbp + 13824], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 13816], rax
 mov dword ptr [rbp + 13808], 0
.Lx1291_0:
 mov r14d, dword ptr [rbp + 13808]
 jmp xchain1175_n93_α
 xchain1175_n90_β:
 add dword ptr [rbp + 13808], 1
 mov eax, dword ptr [rbp + 13808]
 cmp eax, r15d
 jg .Lx1291_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx1291_1
 jmp .Lx1291_0
.Lx1291_1:
 mov rax, qword ptr [rbp + 13816]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 13824]
 mov r12, qword ptr [rbp + 13840]
 mov rbp, qword ptr [rbp + 13848]
 jmp xchain1175_n91_α
# IR_LIT_STRING
 xchain1175_n91_α:
 mov qword ptr [rbp + 14016], 1
 mov rax, qword ptr [rip + .Lx1292_0]
 mov qword ptr [rbp + 14024], rax
 jmp xchain1175_n94_α
 xchain1175_n91_β:
 jmp xchain1175_n98_α
.Lx1292_0:
 .quad .Lx1292_0_s
.Lx1292_0_s:
 .string "Parse failed on: "
 xchain1175_n92_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12432]
 mov rsi, qword ptr [rbp + 12440]
 mov rdx, qword ptr [rbp + 12512]
 mov rcx, qword ptr [rbp + 12520]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12400], rax
 mov qword ptr [rbp + 12408], rdx
 jmp xchain1175_n95_α
 xchain1175_n92_β:
 jmp xchain1175_n38_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1175_n93_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1294_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1294_10
.Lx1294_9:
 xor eax, eax
.Lx1294_10:
 test rax, rax
 jz .Lx1294_0
 mov r8d, 0
 lea rcx, [rip + .Lx1294_4]
 lea rdx, [rip + .Lx1294_5]
 jmp rax
.Lx1294_4:
 jmp xchain1175_n96_α
.Lx1294_5:
 jmp xchain1175_n90_β
.Lx1294_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1294_2:
 test rax, rax
 je .Lx1294_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1294_7]
 lea rdx, [rip + .Lx1294_8]
 jmp rax
.Lx1294_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1294_2
.Lx1294_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1294_2
.Lx1294_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1175_n90_β
 mov r14d, eax
 lea rax, [rip + .Lx1294_6]
 sub rsp, 8
 push rax
 jmp xchain1175_n96_α
.Lx1294_6:
 add rsp, 16
 jmp xchain1175_n90_β
 xchain1175_n93_β:
 jmp qword ptr [rsp]
# IR_VAR
 xchain1175_n94_α:
 mov rax, qword ptr [1879053040]
 mov rdx, qword ptr [1879053048]
 mov qword ptr [rbp + 14048], rax
 mov qword ptr [rbp + 14056], rdx
 jmp xchain1175_n97_α
 xchain1175_n94_β:
 jmp xchain1175_n98_α
 xchain1175_n95_α:
# BOX CALL SNO$PARB(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+12400] -> [zr+12368]
 mov rax, qword ptr [rbp + 12400]
 mov qword ptr [rbp + 12368], rax
 mov rax, qword ptr [rbp + 12408]
 mov qword ptr [rbp + 12376], rax
  .section .rodata
  .Lbynamefn850: .string "SNO$PARB"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn850]
 lea rsi, [rbp + 12368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12352], rax
 mov qword ptr [rbp + 12360], rdx
 cmp eax, 99
 je xchain1175_n38_α
 jmp xchain1175_n99_α
 xchain1175_n95_β:
 jmp xchain1175_n38_α
# IR_MATCH_RELEASE
 xchain1175_n96_α:
 mov rax, qword ptr [rbp + 13816]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 13824]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 13872]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx1298_1:
 test rax, rax
 je .Lx1298_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1298_3]
 lea rdx, [rip + .Lx1298_4]
 jmp rax
.Lx1298_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1298_1
.Lx1298_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1298_1
.Lx1298_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 13840]
 mov rbp, qword ptr [rbp + 13848]
 jmp xchain1175_n100_α
 xchain1175_n97_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 14016]
 mov rsi, qword ptr [rbp + 14024]
 mov rdx, qword ptr [rbp + 14048]
 mov rcx, qword ptr [rbp + 14056]
 call str_concat_d@PLT
 mov qword ptr [rbp + 13984], rax
 mov qword ptr [rbp + 13992], rdx
 jmp xchain1175_n101_α
 xchain1175_n97_β:
 jmp xchain1175_n98_α
 xchain1175_n98_α:
 sub rsp, 64
 mov rax, qword ptr [1879052368]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052376]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052384]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052392]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052400]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052408]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052352]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052360]
 mov qword ptr [rsp + 56], rax
 mov rdi, qword ptr [rip + .Lx1301_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1301_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1301_6]
 lea rdx, [rip + .Lx1301_7]
 jmp rax
.Lx1301_6:
 mov rdi, qword ptr [1879052352]
 mov rsi, qword ptr [1879052360]
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052352], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052360], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052384], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052392], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1301_2
.Lx1301_7:
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052352], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052360], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052384], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052392], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1301_2
.Lx1301_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx1301_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1301_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1301_3]
 lea rdx, [rip + .Lx1301_4]
 jmp rax
.Lx1301_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1301_2
.Lx1301_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1301_2
.Lx1301_1:
 call rt_faildescr@PLT
.Lx1301_2:
 mov qword ptr [rbp + 14096], rax
 mov qword ptr [rbp + 14104], rdx
 cmp eax, 99
 je xchain1175_n64_α
 jmp xchain1175_n102_α
 xchain1175_n98_β:
 jmp xchain1175_n64_α
.Lx1301_0:
 .quad .Lx1301_0_s
.Lx1301_0_s:
 .string "stk_pop_into_parent"
 xchain1175_n99_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12000]
 mov rsi, qword ptr [rbp + 12008]
 mov rdx, qword ptr [rbp + 12352]
 mov rcx, qword ptr [rbp + 12360]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11968], rax
 mov qword ptr [rbp + 11976], rdx
 jmp xchain1175_n103_α
 xchain1175_n99_β:
 jmp xchain1175_n38_α
 xchain1175_n100_α:
 sub rsp, 64
 mov rax, qword ptr [1879052368]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052376]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052384]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052392]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052400]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052408]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052352]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052360]
 mov qword ptr [rsp + 56], rax
 mov rdi, qword ptr [rip + .Lx1304_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1304_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1304_6]
 lea rdx, [rip + .Lx1304_7]
 jmp rax
.Lx1304_6:
 mov rdi, qword ptr [1879052352]
 mov rsi, qword ptr [1879052360]
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052352], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052360], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052384], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052392], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1304_2
.Lx1304_7:
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052352], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052360], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052384], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052392], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1304_2
.Lx1304_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx1304_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1304_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1304_3]
 lea rdx, [rip + .Lx1304_4]
 jmp rax
.Lx1304_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1304_2
.Lx1304_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1304_2
.Lx1304_1:
 call rt_faildescr@PLT
.Lx1304_2:
 mov qword ptr [rbp + 13936], rax
 mov qword ptr [rbp + 13944], rdx
 cmp eax, 99
 je xchain1175_n64_α
 jmp xchain1175_n104_α
 xchain1175_n100_β:
 jmp xchain1175_n64_α
.Lx1304_0:
 .quad .Lx1304_0_s
.Lx1304_0_s:
 .string "stk_pop_into_parent"
# IR_ASSIGN global
 xchain1175_n101_α:
 mov rsi, qword ptr [rbp + 13984]
 mov rdx, qword ptr [rbp + 13992]
 mov rdi, qword ptr [rip + .Lx1305_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 13968], rax
 mov qword ptr [rbp + 13976], rdx
 jmp xchain1175_n98_α
 xchain1175_n101_β:
 jmp xchain1175_n98_α
.Lx1305_0:
 .quad .Lx1305_0_s
.Lx1305_0_s:
 .string "OUTPUT"
# IR_ASSIGN gva
 xchain1175_n102_α:
 mov rax, qword ptr [rbp + 14096]
 mov rdx, qword ptr [rbp + 14104]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 14080], rax
 mov qword ptr [rbp + 14088], rdx
 jmp xchain1175_n64_α
 xchain1175_n102_β:
 jmp xchain1175_n64_α
 xchain1175_n103_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1308_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1308_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1308_6]
 lea rdx, [rip + .Lx1308_7]
 jmp rax
.Lx1308_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1308_2
.Lx1308_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1308_2
.Lx1308_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1308_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1308_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1308_3]
 lea rdx, [rip + .Lx1308_4]
 jmp rax
.Lx1308_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1308_2
.Lx1308_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1308_2
.Lx1308_1:
 call rt_faildescr@PLT
.Lx1308_2:
 mov qword ptr [rbp + 12944], rax
 mov qword ptr [rbp + 12952], rdx
 cmp eax, 99
 je xchain1175_n38_α
 jmp xchain1175_n105_α
 xchain1175_n103_β:
 jmp xchain1175_n38_α
.Lx1308_0:
 .quad .Lx1308_0_s
.Lx1308_0_s:
 .string "Pop_list"
# IR_ASSIGN gva
 xchain1175_n104_α:
 mov rax, qword ptr [rbp + 13936]
 mov rdx, qword ptr [rbp + 13944]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13920], rax
 mov qword ptr [rbp + 13928], rdx
 jmp xchain1175_n64_α
 xchain1175_n104_β:
 jmp xchain1175_n64_α
 xchain1175_n105_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11968]
 mov rsi, qword ptr [rbp + 11976]
 mov rdx, qword ptr [rbp + 12944]
 mov rcx, qword ptr [rbp + 12952]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11936], rax
 mov qword ptr [rbp + 11944], rdx
 jmp xchain1175_n106_α
 xchain1175_n105_β:
 jmp xchain1175_n38_α
# IR_LIT_STRING
 xchain1175_n106_α:
 mov qword ptr [rbp + 12976], 1
 mov rax, qword ptr [rip + .Lx1311_0]
 mov qword ptr [rbp + 12984], rax
 jmp xchain1175_n107_α
 xchain1175_n106_β:
 jmp xchain1175_n38_α
.Lx1311_0:
 .quad .Lx1311_0_s
.Lx1311_0_s:
 .string ")"
 xchain1175_n107_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11936]
 mov rsi, qword ptr [rbp + 11944]
 mov rdx, qword ptr [rbp + 12976]
 mov rcx, qword ptr [rbp + 12984]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11904], rax
 mov qword ptr [rbp + 11912], rdx
 jmp xchain1175_n108_α
 xchain1175_n107_β:
 jmp xchain1175_n38_α
# IR_ASSIGN gva
 xchain1175_n108_α:
 mov rax, qword ptr [rbp + 11904]
 mov rdx, qword ptr [rbp + 11912]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 11888], rax
 mov qword ptr [rbp + 11896], rdx
 jmp xchain1175_n38_α
 xchain1175_n108_β:
 jmp xchain1175_n38_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 14280]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 14280]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "item"
.S1: .string "nl"
.S2: .string "spat"
.S3: .string "group"
.text
