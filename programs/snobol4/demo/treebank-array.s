  .intel_syntax noprefix
  .text
  .globl proc_stk_push_frame_α
proc_stk_push_frame_α:
#=======================================================================================================================
    .global proc_stk_push_frame_α
    .global proc_stk_push_frame_β
    .global proc_stk_push_frame_γ
    .global proc_stk_push_frame_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_stk_push_frame_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_stk_push_item_α
proc_stk_push_item_α:
#=======================================================================================================================
    .global proc_stk_push_item_α
    .global proc_stk_push_item_β
    .global proc_stk_push_item_γ
    .global proc_stk_push_item_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_stk_push_item_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
#=======================================================================================================================
    .global proc_stk_pop_into_parent_α
    .global proc_stk_pop_into_parent_β
    .global proc_stk_pop_into_parent_γ
    .global proc_stk_pop_into_parent_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_stk_pop_into_parent_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_stk_pop_final_α
proc_stk_pop_final_α:
#=======================================================================================================================
    .global proc_stk_pop_final_α
    .global proc_stk_pop_final_β
    .global proc_stk_pop_final_γ
    .global proc_stk_pop_final_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_stk_pop_final_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_init_list_α
proc_init_list_α:
#=======================================================================================================================
    .global proc_init_list_α
    .global proc_init_list_β
    .global proc_init_list_γ
    .global proc_init_list_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_init_list_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_Init_list_α
proc_Init_list_α:
#=======================================================================================================================
    .global proc_Init_list_α
    .global proc_Init_list_β
    .global proc_Init_list_γ
    .global proc_Init_list_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_Init_list_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_push_list_α
proc_push_list_α:
#=======================================================================================================================
    .global proc_push_list_α
    .global proc_push_list_β
    .global proc_push_list_γ
    .global proc_push_list_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_push_list_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_Push_list_α
proc_Push_list_α:
#=======================================================================================================================
    .global proc_Push_list_α
    .global proc_Push_list_β
    .global proc_Push_list_γ
    .global proc_Push_list_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_Push_list_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_push_item_α
proc_push_item_α:
#=======================================================================================================================
    .global proc_push_item_α
    .global proc_push_item_β
    .global proc_push_item_γ
    .global proc_push_item_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_push_item_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_Push_item_α
proc_Push_item_α:
#=======================================================================================================================
    .global proc_Push_item_α
    .global proc_Push_item_β
    .global proc_Push_item_γ
    .global proc_Push_item_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_Push_item_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_pop_list_α
proc_pop_list_α:
#=======================================================================================================================
    .global proc_pop_list_α
    .global proc_pop_list_β
    .global proc_pop_list_γ
    .global proc_pop_list_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_pop_list_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_Pop_list_α
proc_Pop_list_α:
#=======================================================================================================================
    .global proc_Pop_list_α
    .global proc_Pop_list_β
    .global proc_Pop_list_γ
    .global proc_Pop_list_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
 .string "*EXPR$12"
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_Pop_list_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_pop_final_α
proc_pop_final_α:
#=======================================================================================================================
    .global proc_pop_final_α
    .global proc_pop_final_β
    .global proc_pop_final_γ
    .global proc_pop_final_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_pop_final_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_Pop_final_α
proc_Pop_final_α:
#=======================================================================================================================
    .global proc_Pop_final_α
    .global proc_Pop_final_β
    .global proc_Pop_final_γ
    .global proc_Pop_final_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_Pop_final_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_node_repr_α
proc_node_repr_α:
#=======================================================================================================================
    .global proc_node_repr_α
    .global proc_node_repr_β
    .global proc_node_repr_γ
    .global proc_node_repr_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_node_repr_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_pp_node_α
proc_pp_node_α:
#=======================================================================================================================
    .global proc_pp_node_α
    .global proc_pp_node_β
    .global proc_pp_node_γ
    .global proc_pp_node_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_pp_node_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
  .globl proc_pp_bank_α
proc_pp_bank_α:
#=======================================================================================================================
    .global proc_pp_bank_α
    .global proc_pp_bank_β
    .global proc_pp_bank_γ
    .global proc_pp_bank_ω
  sub rsp, 13296
  mov [rsp + 13272], rcx
  mov [rsp + 13280], rdx
  mov [rsp + 13288], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13264
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13256], rsp
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
mov rax, [rbp + 13272]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
jmp rax
proc_pp_bank_ω:
mov rax, [rbp + 13280]
lea rsp, [rbp + 13296]
mov rbp, [rbp + 13288]
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
 mov qword ptr [1879053952], rax
 mov qword ptr [1879053960], rdx
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
 xchain441_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx443_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx443_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx443_6]
 lea rdx, [rip + .Lx443_7]
 jmp rax
.Lx443_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx443_2
.Lx443_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx443_2
.Lx443_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx443_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx443_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx443_3]
 lea rdx, [rip + .Lx443_4]
 jmp rax
.Lx443_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx443_2
.Lx443_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx443_2
.Lx443_1:
 call rt_faildescr@PLT
.Lx443_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$1_ω
 jmp xchain441_n1_α
 xchain441_n0_β:
 jmp proc_EXPR$1_ω
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain441_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053968], rax
 mov qword ptr [1879053976], rdx
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
 xchain445_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx447_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx447_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx447_6]
 lea rdx, [rip + .Lx447_7]
 jmp rax
.Lx447_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx447_2
.Lx447_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx447_2
.Lx447_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx447_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx447_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx447_3]
 lea rdx, [rip + .Lx447_4]
 jmp rax
.Lx447_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx447_2
.Lx447_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx447_2
.Lx447_1:
 call rt_faildescr@PLT
.Lx447_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$2_ω
 jmp xchain445_n1_α
 xchain445_n0_β:
 jmp proc_EXPR$2_ω
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain445_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053984], rax
 mov qword ptr [1879053992], rdx
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
 xchain449_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx451_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx451_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx451_6]
 lea rdx, [rip + .Lx451_7]
 jmp rax
.Lx451_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx451_2
.Lx451_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx451_2
.Lx451_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx451_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx451_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx451_3]
 lea rdx, [rip + .Lx451_4]
 jmp rax
.Lx451_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx451_2
.Lx451_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx451_2
.Lx451_1:
 call rt_faildescr@PLT
.Lx451_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$3_ω
 jmp xchain449_n1_α
 xchain449_n0_β:
 jmp proc_EXPR$3_ω
.Lx451_0:
 .quad .Lx451_0_s
.Lx451_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain449_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054000], rax
 mov qword ptr [1879054008], rdx
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
 xchain453_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx455_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx455_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx455_6]
 lea rdx, [rip + .Lx455_7]
 jmp rax
.Lx455_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx455_2
.Lx455_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx455_2
.Lx455_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx455_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx455_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx455_3]
 lea rdx, [rip + .Lx455_4]
 jmp rax
.Lx455_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx455_2
.Lx455_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx455_2
.Lx455_1:
 call rt_faildescr@PLT
.Lx455_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$4_ω
 jmp xchain453_n1_α
 xchain453_n0_β:
 jmp proc_EXPR$4_ω
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain453_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054016], rax
 mov qword ptr [1879054024], rdx
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
 je proc_EXPR$5_ω
 jmp xchain457_n1_α
 xchain457_n0_β:
 jmp proc_EXPR$5_ω
.Lx459_0:
 .quad .Lx459_0_s
.Lx459_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain457_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054032], rax
 mov qword ptr [1879054040], rdx
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
 xchain461_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx463_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx463_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx463_6]
 lea rdx, [rip + .Lx463_7]
 jmp rax
.Lx463_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx463_2
.Lx463_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx463_2
.Lx463_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx463_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx463_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx463_3]
 lea rdx, [rip + .Lx463_4]
 jmp rax
.Lx463_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx463_2
.Lx463_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx463_2
.Lx463_1:
 call rt_faildescr@PLT
.Lx463_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$6_ω
 jmp xchain461_n1_α
 xchain461_n0_β:
 jmp proc_EXPR$6_ω
.Lx463_0:
 .quad .Lx463_0_s
.Lx463_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain461_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054048], rax
 mov qword ptr [1879054056], rdx
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
 xchain465_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx467_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx467_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx467_6]
 lea rdx, [rip + .Lx467_7]
 jmp rax
.Lx467_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx467_2
.Lx467_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx467_2
.Lx467_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx467_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx467_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx467_3]
 lea rdx, [rip + .Lx467_4]
 jmp rax
.Lx467_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx467_2
.Lx467_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx467_2
.Lx467_1:
 call rt_faildescr@PLT
.Lx467_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$7_ω
 jmp xchain465_n1_α
 xchain465_n0_β:
 jmp proc_EXPR$7_ω
.Lx467_0:
 .quad .Lx467_0_s
.Lx467_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain465_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054064], rax
 mov qword ptr [1879054072], rdx
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
 xchain469_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx471_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx471_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx471_6]
 lea rdx, [rip + .Lx471_7]
 jmp rax
.Lx471_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx471_2
.Lx471_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx471_2
.Lx471_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx471_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx471_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx471_3]
 lea rdx, [rip + .Lx471_4]
 jmp rax
.Lx471_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx471_2
.Lx471_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx471_2
.Lx471_1:
 call rt_faildescr@PLT
.Lx471_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$8_ω
 jmp xchain469_n1_α
 xchain469_n0_β:
 jmp proc_EXPR$8_ω
.Lx471_0:
 .quad .Lx471_0_s
.Lx471_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain469_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054080], rax
 mov qword ptr [1879054088], rdx
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
 xchain473_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx475_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx475_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx475_6]
 lea rdx, [rip + .Lx475_7]
 jmp rax
.Lx475_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx475_2
.Lx475_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx475_2
.Lx475_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx475_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx475_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx475_3]
 lea rdx, [rip + .Lx475_4]
 jmp rax
.Lx475_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx475_2
.Lx475_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx475_2
.Lx475_1:
 call rt_faildescr@PLT
.Lx475_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$9_ω
 jmp xchain473_n1_α
 xchain473_n0_β:
 jmp proc_EXPR$9_ω
.Lx475_0:
 .quad .Lx475_0_s
.Lx475_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain473_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054096], rax
 mov qword ptr [1879054104], rdx
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
 je proc_EXPR$10_ω
 jmp xchain477_n1_α
 xchain477_n0_β:
 jmp proc_EXPR$10_ω
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain477_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054112], rax
 mov qword ptr [1879054120], rdx
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
 xchain481_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx483_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx483_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx483_6]
 lea rdx, [rip + .Lx483_7]
 jmp rax
.Lx483_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx483_2
.Lx483_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx483_2
.Lx483_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx483_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx483_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx483_3]
 lea rdx, [rip + .Lx483_4]
 jmp rax
.Lx483_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx483_2
.Lx483_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx483_2
.Lx483_1:
 call rt_faildescr@PLT
.Lx483_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$11_ω
 jmp xchain481_n1_α
 xchain481_n0_β:
 jmp proc_EXPR$11_ω
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain481_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054128], rax
 mov qword ptr [1879054136], rdx
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
 xchain485_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx487_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx487_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx487_6]
 lea rdx, [rip + .Lx487_7]
 jmp rax
.Lx487_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx487_2
.Lx487_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx487_2
.Lx487_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx487_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx487_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx487_3]
 lea rdx, [rip + .Lx487_4]
 jmp rax
.Lx487_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx487_2
.Lx487_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx487_2
.Lx487_1:
 call rt_faildescr@PLT
.Lx487_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$12_ω
 jmp xchain485_n1_α
 xchain485_n0_β:
 jmp proc_EXPR$12_ω
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain485_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054144], rax
 mov qword ptr [1879054152], rdx
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
 xchain489_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx491_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx491_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx491_6]
 lea rdx, [rip + .Lx491_7]
 jmp rax
.Lx491_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx491_2
.Lx491_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx491_2
.Lx491_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx491_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx491_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx491_3]
 lea rdx, [rip + .Lx491_4]
 jmp rax
.Lx491_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx491_2
.Lx491_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx491_2
.Lx491_1:
 call rt_faildescr@PLT
.Lx491_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$13_ω
 jmp xchain489_n1_α
 xchain489_n0_β:
 jmp proc_EXPR$13_ω
.Lx491_0:
 .quad .Lx491_0_s
.Lx491_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain489_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054160], rax
 mov qword ptr [1879054168], rdx
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
 xchain493_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx495_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx495_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx495_6]
 lea rdx, [rip + .Lx495_7]
 jmp rax
.Lx495_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx495_2
.Lx495_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx495_2
.Lx495_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx495_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx495_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx495_3]
 lea rdx, [rip + .Lx495_4]
 jmp rax
.Lx495_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx495_2
.Lx495_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx495_2
.Lx495_1:
 call rt_faildescr@PLT
.Lx495_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$14_ω
 jmp xchain493_n1_α
 xchain493_n0_β:
 jmp proc_EXPR$14_ω
.Lx495_0:
 .quad .Lx495_0_s
.Lx495_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain493_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054176], rax
 mov qword ptr [1879054184], rdx
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
 je proc_EXPR$15_ω
 jmp xchain497_n1_α
 xchain497_n0_β:
 jmp proc_EXPR$15_ω
.Lx499_0:
 .quad .Lx499_0_s
.Lx499_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain497_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054192], rax
 mov qword ptr [1879054200], rdx
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
 xchain501_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx503_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx503_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx503_6]
 lea rdx, [rip + .Lx503_7]
 jmp rax
.Lx503_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx503_2
.Lx503_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx503_2
.Lx503_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx503_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx503_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx503_3]
 lea rdx, [rip + .Lx503_4]
 jmp rax
.Lx503_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx503_2
.Lx503_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx503_2
.Lx503_1:
 call rt_faildescr@PLT
.Lx503_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$16_ω
 jmp xchain501_n1_α
 xchain501_n0_β:
 jmp proc_EXPR$16_ω
.Lx503_0:
 .quad .Lx503_0_s
.Lx503_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain501_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054208], rax
 mov qword ptr [1879054216], rdx
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
 xchain505_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx507_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx507_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx507_6]
 lea rdx, [rip + .Lx507_7]
 jmp rax
.Lx507_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx507_2
.Lx507_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx507_2
.Lx507_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx507_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx507_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx507_3]
 lea rdx, [rip + .Lx507_4]
 jmp rax
.Lx507_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx507_2
.Lx507_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx507_2
.Lx507_1:
 call rt_faildescr@PLT
.Lx507_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$17_ω
 jmp xchain505_n1_α
 xchain505_n0_β:
 jmp proc_EXPR$17_ω
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain505_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054224], rax
 mov qword ptr [1879054232], rdx
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
lea rax, [rip + xchain509_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain509_n0_α:
 mov rax, qword ptr [1879054240]
 mov rdx, qword ptr [1879054248]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain509_n1_α
# IR_COERCE_STRING
 xchain509_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain509_n2_α
# IR_MATCH_SPAN
 xchain509_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx514_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx514_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx514_1
 add dword ptr [rsp + 0], 1
 jmp .Lx514_0
.Lx514_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx514_240
 add rsp, 16
 jmp proc_PAT$0_scanfail
.Lx514_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$0_scanhit
 xchain509_n2_β:
 xchain509_n2_β:
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
lea rax, [rip + xchain515_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain515_n0_α:
 mov rax, qword ptr [1879054272]
 mov rdx, qword ptr [1879054280]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain515_n1_α
 xchain515_n0_β:
 jmp proc_PAT$1_scanfail
# IR_COERCE_STRING
 xchain515_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain515_n2_α
 xchain515_n1_β:
 jmp proc_PAT$1_scanfail
# IR_VAR
 xchain515_n2_α:
 mov rax, qword ptr [1879054256]
 mov rdx, qword ptr [1879054264]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain515_n3_α
 xchain515_n2_β:
 jmp proc_PAT$1_scanfail
# IR_COERCE_STRING
 xchain515_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain515_n4_α
 xchain515_n3_β:
 jmp proc_PAT$1_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain515_n4_α:
 jmp xchain515_n5_α
xchain515_n4_as:
 jmp proc_PAT$1_γ
 xchain515_n4_β:
 jmp xchain515_n6_β
xchain515_n4_af:
 jmp proc_PAT$1_ω
# IR_MATCH_NOTANY
 xchain515_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain515_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain515_n4_af
 add r14d, 1
 jmp xchain515_n6_α
 xchain515_n5_β:
 sub r14d, 1
 jmp xchain515_n4_af
# IR_MATCH_BREAK
 xchain515_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx526_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx526_240
 add rsp, 16
 jmp xchain515_n5_β
.Lx526_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx526_1
 add dword ptr [rsp + 0], 1
 jmp .Lx526_0
.Lx526_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain515_n4_as
 xchain515_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain515_n5_β
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
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$2_attempt:
proc_PAT$2_α_body:
lea rax, [rip + xchain527_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain527_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain527_n1_α
xchain527_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain527_n2_α
 cmp eax, 2
 je xchain527_n4_α
 cmp eax, 3
 je xchain527_n6_α
 cmp eax, 4
 je xchain527_n7_α
 cmp eax, 5
 je xchain527_n9_α
 jmp proc_PAT$2_γ
 xchain527_n0_β:
 mov dword ptr [rbp + 36], 6
xchain527_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain527_n1_β
 cmp eax, 1
 je xchain527_n3_β
 cmp eax, 2
 je xchain527_n5_β
 cmp eax, 3
 je xchain527_n6_β
 cmp eax, 4
 je xchain527_n8_β
 cmp eax, 5
 je xchain527_n9_β
 jmp proc_PAT$2_ω
# IR_MATCH_LIT
 xchain527_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain527_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain527_n0_af
 add r14d, 1
 jmp xchain527_n0_as
 xchain527_n1_β:
 sub r14d, 1
 jmp xchain527_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain527_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain527_n10_α
 xchain527_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain527_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain527_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain527_n0_as
 xchain527_n3_β:
 sub r12, 24
 jmp xchain527_n10_β
# IR_LIT_STRING
 xchain527_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx536_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain527_n11_α
 xchain527_n4_β:
 jmp xchain527_n0_af
.Lx536_0:
 .quad .Lx536_0_s
.Lx536_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain527_n5_α:
 mov rax, qword ptr [1879054288]
 mov rdx, qword ptr [1879054296]
 cmp eax, 3
 jne .Lx537_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx537_10
.Lx537_9:
 xor eax, eax
.Lx537_10:
 test rax, rax
 jz .Lx537_0
 mov r8d, 0
 lea rcx, [rip + .Lx537_4]
 lea rdx, [rip + .Lx537_5]
 jmp rax
.Lx537_4:
 jmp xchain527_n0_as
.Lx537_5:
 jmp xchain527_n0_af
.Lx537_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S1]
 xor esi, esi
 call rt_defer_open@PLT
.Lx537_2:
 test rax, rax
 je .Lx537_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx537_7]
 lea rdx, [rip + .Lx537_8]
 jmp rax
.Lx537_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx537_2
.Lx537_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx537_2
.Lx537_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain527_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx537_6]
 sub rsp, 8
 push rax
 jmp xchain527_n0_as
.Lx537_6:
 add rsp, 16
 jmp xchain527_n0_af
 xchain527_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain527_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain527_n0_as
 xchain527_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain527_n12_α
xchain527_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain527_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain527_n0_as
xchain527_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx539_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain527_n12_β
.Lx539_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain527_n0_af
 xchain527_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx541_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx541_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx541_6]
 lea rdx, [rip + .Lx541_7]
 jmp rax
.Lx541_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx541_2
.Lx541_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx541_2
.Lx541_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx541_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx541_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx541_3]
 lea rdx, [rip + .Lx541_4]
 jmp rax
.Lx541_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx541_2
.Lx541_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx541_2
.Lx541_1:
 call rt_faildescr@PLT
.Lx541_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain527_n0_af
 jmp xchain527_n14_α
 xchain527_n7_β:
 jmp xchain527_n0_af
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain527_n8_α:
 mov rax, qword ptr [1879054320]
 mov rdx, qword ptr [1879054328]
 cmp eax, 3
 jne .Lx542_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx542_10
.Lx542_9:
 xor eax, eax
.Lx542_10:
 test rax, rax
 jz .Lx542_0
 mov r8d, 0
 lea rcx, [rip + .Lx542_4]
 lea rdx, [rip + .Lx542_5]
 jmp rax
.Lx542_4:
 jmp xchain527_n0_as
.Lx542_5:
 jmp xchain527_n0_af
.Lx542_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S2]
 xor esi, esi
 call rt_defer_open@PLT
.Lx542_2:
 test rax, rax
 je .Lx542_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx542_7]
 lea rdx, [rip + .Lx542_8]
 jmp rax
.Lx542_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx542_2
.Lx542_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx542_2
.Lx542_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain527_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx542_6]
 sub rsp, 8
 push rax
 jmp xchain527_n0_as
.Lx542_6:
 add rsp, 16
 jmp xchain527_n0_af
 xchain527_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain527_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain527_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain527_n0_af
 add r14d, 1
 jmp xchain527_n0_as
 xchain527_n9_β:
 sub r14d, 1
 jmp xchain527_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain527_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx545_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx545_10
.Lx545_9:
 xor eax, eax
.Lx545_10:
 test rax, rax
 jz .Lx545_0
 mov r8d, 0
 lea rcx, [rip + .Lx545_4]
 lea rdx, [rip + .Lx545_5]
 jmp rax
.Lx545_4:
 jmp xchain527_n3_α
.Lx545_5:
 jmp xchain527_n2_β
.Lx545_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx545_2:
 test rax, rax
 je .Lx545_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx545_7]
 lea rdx, [rip + .Lx545_8]
 jmp rax
.Lx545_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx545_2
.Lx545_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx545_2
.Lx545_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain527_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx545_6]
 sub rsp, 8
 push rax
 jmp xchain527_n3_α
.Lx545_6:
 add rsp, 16
 jmp xchain527_n2_β
 xchain527_n10_β:
 jmp qword ptr [rsp]
 xchain527_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx547_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx547_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx547_6]
 lea rdx, [rip + .Lx547_7]
 jmp rax
.Lx547_6:
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
 jmp .Lx547_2
.Lx547_7:
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
 jmp .Lx547_2
.Lx547_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx547_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx547_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx547_3]
 lea rdx, [rip + .Lx547_4]
 jmp rax
.Lx547_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx547_2
.Lx547_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx547_2
.Lx547_1:
 call rt_faildescr@PLT
.Lx547_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain527_n0_af
 jmp xchain527_n15_α
 xchain527_n11_β:
 jmp xchain527_n0_af
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain527_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain527_n16_α
xchain527_n12_as:
 jmp xchain527_n6_as
 xchain527_n12_β:
 jmp xchain527_n17_β
xchain527_n12_af:
 jmp xchain527_n6_af
# IR_LIT_STRING
 xchain527_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx550_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain527_n18_α
 xchain527_n13_β:
 jmp xchain527_n20_af
.Lx550_0:
 .quad .Lx550_0_s
.Lx550_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain527_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054320], rax
 mov qword ptr [1879054328], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain527_n8_α
# IR_ASSIGN gva
 xchain527_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054288], rax
 mov qword ptr [1879054296], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain527_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain527_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx553_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx553_10
.Lx553_9:
 xor eax, eax
.Lx553_10:
 test rax, rax
 jz .Lx553_0
 mov r8d, 0
 lea rcx, [rip + .Lx553_4]
 lea rdx, [rip + .Lx553_5]
 jmp rax
.Lx553_4:
 jmp xchain527_n17_α
.Lx553_5:
 jmp xchain527_n12_af
.Lx553_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx553_2:
 test rax, rax
 je .Lx553_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx553_7]
 lea rdx, [rip + .Lx553_8]
 jmp rax
.Lx553_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx553_2
.Lx553_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx553_2
.Lx553_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain527_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx553_6]
 sub rsp, 8
 push rax
 jmp xchain527_n17_α
.Lx553_6:
 add rsp, 16
 jmp xchain527_n12_af
 xchain527_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain527_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain527_n19_α
xchain527_n17_as:
 jmp xchain527_n12_as
 xchain527_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain527_n19_β
 jmp xchain527_n20_β
xchain527_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain527_n20_α
 jmp xchain527_n16_β
 xchain527_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx557_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx557_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx557_6]
 lea rdx, [rip + .Lx557_7]
 jmp rax
.Lx557_6:
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
 jmp .Lx557_2
.Lx557_7:
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
 jmp .Lx557_2
.Lx557_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx557_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx557_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx557_3]
 lea rdx, [rip + .Lx557_4]
 jmp rax
.Lx557_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx557_2
.Lx557_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx557_2
.Lx557_1:
 call rt_faildescr@PLT
.Lx557_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain527_n20_af
 jmp xchain527_n21_α
 xchain527_n18_β:
 jmp xchain527_n20_af
.Lx557_0:
 .quad .Lx557_0_s
.Lx557_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain527_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx558_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx558_10
.Lx558_9:
 xor eax, eax
.Lx558_10:
 test rax, rax
 jz .Lx558_0
 mov r8d, 0
 lea rcx, [rip + .Lx558_4]
 lea rdx, [rip + .Lx558_5]
 jmp rax
.Lx558_4:
 jmp xchain527_n17_as
.Lx558_5:
 jmp xchain527_n17_af
.Lx558_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx558_2:
 test rax, rax
 je .Lx558_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx558_7]
 lea rdx, [rip + .Lx558_8]
 jmp rax
.Lx558_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx558_2
.Lx558_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx558_2
.Lx558_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain527_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx558_6]
 sub rsp, 8
 push rax
 jmp xchain527_n17_as
.Lx558_6:
 add rsp, 16
 jmp xchain527_n17_af
 xchain527_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain527_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain527_n22_α
xchain527_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain527_n13_α
 jmp xchain527_n17_as
 xchain527_n20_β:
 mov dword ptr [rbp + 468], 2
xchain527_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain527_n23_β
 cmp eax, 1
 je xchain527_n24_β
 jmp xchain527_n17_af
# IR_ASSIGN gva
 xchain527_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054304], rax
 mov qword ptr [1879054312], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain527_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain527_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain527_n25_α
 xchain527_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain527_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain527_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain527_n20_as
 xchain527_n23_β:
 sub r12, 24
 jmp xchain527_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain527_n24_α:
 mov rax, qword ptr [1879054304]
 mov rdx, qword ptr [1879054312]
 cmp eax, 3
 jne .Lx566_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx566_10
.Lx566_9:
 xor eax, eax
.Lx566_10:
 test rax, rax
 jz .Lx566_0
 mov r8d, 0
 lea rcx, [rip + .Lx566_4]
 lea rdx, [rip + .Lx566_5]
 jmp rax
.Lx566_4:
 jmp xchain527_n20_as
.Lx566_5:
 jmp xchain527_n20_af
.Lx566_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx566_2:
 test rax, rax
 je .Lx566_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx566_7]
 lea rdx, [rip + .Lx566_8]
 jmp rax
.Lx566_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx566_2
.Lx566_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx566_2
.Lx566_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain527_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx566_6]
 sub rsp, 8
 push rax
 jmp xchain527_n20_as
.Lx566_6:
 add rsp, 16
 jmp xchain527_n20_af
 xchain527_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain527_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx567_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx567_10
.Lx567_9:
 xor eax, eax
.Lx567_10:
 test rax, rax
 jz .Lx567_0
 mov r8d, 0
 lea rcx, [rip + .Lx567_4]
 lea rdx, [rip + .Lx567_5]
 jmp rax
.Lx567_4:
 jmp xchain527_n23_α
.Lx567_5:
 jmp xchain527_n22_β
.Lx567_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx567_2:
 test rax, rax
 je .Lx567_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx567_7]
 lea rdx, [rip + .Lx567_8]
 jmp rax
.Lx567_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx567_2
.Lx567_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx567_2
.Lx567_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain527_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx567_6]
 sub rsp, 8
 push rax
 jmp xchain527_n23_α
.Lx567_6:
 add rsp, 16
 jmp xchain527_n22_β
 xchain527_n25_β:
 jmp qword ptr [rsp]
proc_PAT$2_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$2_γ
proc_PAT$2_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$2_attempt
8:
jmp proc_PAT$2_ω
proc_PAT$2_res:
add rsp, 8
pop rbp
proc_PAT$2_β:
jmp qword ptr [rbp + 784]
proc_PAT$2_γ:
push rbp
lea rax, [rip + proc_PAT$2_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$2_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$3_α
proc_PAT$3_α:
#=======================================================================================================================
    .global proc_PAT$3_α
    .global proc_PAT$3_β
    .global proc_PAT$3_γ
    .global proc_PAT$3_ω
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
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + xchain568_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain568_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain568_n1_α
 xchain568_n0_β:
 add rsp, 16
 jmp proc_PAT$3_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain568_n1_α:
 jmp xchain568_n3_α
xchain568_n1_as:
 jmp xchain568_n2_α
 xchain568_n1_β:
 jmp xchain568_n5_β
xchain568_n1_af:
 jmp xchain568_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain568_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$3_scanhit
 xchain568_n2_β:
 sub r12, 24
 jmp xchain568_n1_β
# IR_MATCH_LIT
 xchain568_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain568_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain568_n1_af
 add r14d, 1
 jmp xchain568_n4_α
 xchain568_n3_β:
 sub r14d, 1
 jmp xchain568_n1_af
# IR_MATCH_BAL
 xchain568_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain568_n4_β:
.Lx578_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx578_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx578_1
 add edx, 1
 jmp .Lx578_2
.Lx578_1:
 cmp esi, 41
 jne .Lx578_2
 sub edx, 1
 cmp edx, 0
 jl .Lx578_3
.Lx578_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx578_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain568_n5_α
.Lx578_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain568_n3_β
# IR_MATCH_LIT
 xchain568_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain568_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain568_n4_β
 add r14d, 1
 jmp xchain568_n1_as
 xchain568_n5_β:
 sub r14d, 1
 jmp xchain568_n4_β
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
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
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 160]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$4_α
proc_PAT$4_α:
#=======================================================================================================================
    .global proc_PAT$4_α
    .global proc_PAT$4_β
    .global proc_PAT$4_γ
    .global proc_PAT$4_ω
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
proc_PAT$4_attempt:
proc_PAT$4_α_body:
lea rax, [rip + xchain581_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain581_n0_α:
 mov rax, qword ptr [1879054336]
 mov rdx, qword ptr [1879054344]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain581_n1_α
# IR_COERCE_STRING
 xchain581_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain581_n2_α
# IR_MATCH_SPAN
 xchain581_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx586_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx586_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx586_1
 add dword ptr [rsp + 0], 1
 jmp .Lx586_0
.Lx586_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx586_240
 add rsp, 16
 jmp proc_PAT$4_scanfail
.Lx586_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$4_scanhit
 xchain581_n2_β:
 xchain581_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$4_scanfail
proc_PAT$4_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$4_γ
proc_PAT$4_scanfail:
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
jmp proc_PAT$4_attempt
8:
jmp proc_PAT$4_ω
proc_PAT$4_res:
add rsp, 8
pop rbp
proc_PAT$4_β:
jmp qword ptr [rbp + 112]
proc_PAT$4_γ:
push rbp
lea rax, [rip + proc_PAT$4_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$4_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$5_α
proc_PAT$5_α:
#=======================================================================================================================
    .global proc_PAT$5_α
    .global proc_PAT$5_β
    .global proc_PAT$5_γ
    .global proc_PAT$5_ω
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
proc_PAT$5_attempt:
proc_PAT$5_α_body:
lea rax, [rip + xchain587_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain587_n0_α:
 mov rax, qword ptr [1879054368]
 mov rdx, qword ptr [1879054376]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain587_n1_α
 xchain587_n0_β:
 jmp proc_PAT$5_scanfail
# IR_COERCE_STRING
 xchain587_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain587_n2_α
 xchain587_n1_β:
 jmp proc_PAT$5_scanfail
# IR_VAR
 xchain587_n2_α:
 mov rax, qword ptr [1879054352]
 mov rdx, qword ptr [1879054360]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain587_n3_α
 xchain587_n2_β:
 jmp proc_PAT$5_scanfail
# IR_COERCE_STRING
 xchain587_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain587_n4_α
 xchain587_n3_β:
 jmp proc_PAT$5_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain587_n4_α:
 jmp xchain587_n5_α
xchain587_n4_as:
 jmp proc_PAT$5_γ
 xchain587_n4_β:
 jmp xchain587_n6_β
xchain587_n4_af:
 jmp proc_PAT$5_ω
# IR_MATCH_NOTANY
 xchain587_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain587_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain587_n4_af
 add r14d, 1
 jmp xchain587_n6_α
 xchain587_n5_β:
 sub r14d, 1
 jmp xchain587_n4_af
# IR_MATCH_BREAK
 xchain587_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx598_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx598_240
 add rsp, 16
 jmp xchain587_n5_β
.Lx598_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx598_1
 add dword ptr [rsp + 0], 1
 jmp .Lx598_0
.Lx598_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain587_n4_as
 xchain587_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain587_n5_β
proc_PAT$5_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$5_γ
proc_PAT$5_scanfail:
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
jmp proc_PAT$5_attempt
8:
jmp proc_PAT$5_ω
proc_PAT$5_res:
add rsp, 8
pop rbp
proc_PAT$5_β:
jmp qword ptr [rbp + 224]
proc_PAT$5_γ:
push rbp
lea rax, [rip + proc_PAT$5_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$5_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$6_α
proc_PAT$6_α:
#=======================================================================================================================
    .global proc_PAT$6_α
    .global proc_PAT$6_β
    .global proc_PAT$6_γ
    .global proc_PAT$6_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$6_attempt:
proc_PAT$6_α_body:
lea rax, [rip + xchain599_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain599_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain599_n1_α
xchain599_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain599_n2_α
 cmp eax, 2
 je xchain599_n4_α
 cmp eax, 3
 je xchain599_n6_α
 cmp eax, 4
 je xchain599_n7_α
 cmp eax, 5
 je xchain599_n9_α
 jmp proc_PAT$6_γ
 xchain599_n0_β:
 mov dword ptr [rbp + 36], 6
xchain599_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain599_n1_β
 cmp eax, 1
 je xchain599_n3_β
 cmp eax, 2
 je xchain599_n5_β
 cmp eax, 3
 je xchain599_n6_β
 cmp eax, 4
 je xchain599_n8_β
 cmp eax, 5
 je xchain599_n9_β
 jmp proc_PAT$6_ω
# IR_MATCH_LIT
 xchain599_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain599_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain599_n0_af
 add r14d, 1
 jmp xchain599_n0_as
 xchain599_n1_β:
 sub r14d, 1
 jmp xchain599_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain599_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain599_n10_α
 xchain599_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain599_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain599_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain599_n0_as
 xchain599_n3_β:
 sub r12, 24
 jmp xchain599_n10_β
# IR_LIT_STRING
 xchain599_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx608_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain599_n11_α
 xchain599_n4_β:
 jmp xchain599_n0_af
.Lx608_0:
 .quad .Lx608_0_s
.Lx608_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain599_n5_α:
 mov rax, qword ptr [1879054384]
 mov rdx, qword ptr [1879054392]
 cmp eax, 3
 jne .Lx609_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx609_10
.Lx609_9:
 xor eax, eax
.Lx609_10:
 test rax, rax
 jz .Lx609_0
 mov r8d, 0
 lea rcx, [rip + .Lx609_4]
 lea rdx, [rip + .Lx609_5]
 jmp rax
.Lx609_4:
 jmp xchain599_n0_as
.Lx609_5:
 jmp xchain599_n0_af
.Lx609_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S9]
 xor esi, esi
 call rt_defer_open@PLT
.Lx609_2:
 test rax, rax
 je .Lx609_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx609_7]
 lea rdx, [rip + .Lx609_8]
 jmp rax
.Lx609_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx609_2
.Lx609_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx609_2
.Lx609_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain599_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx609_6]
 sub rsp, 8
 push rax
 jmp xchain599_n0_as
.Lx609_6:
 add rsp, 16
 jmp xchain599_n0_af
 xchain599_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain599_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain599_n0_as
 xchain599_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain599_n12_α
xchain599_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain599_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain599_n0_as
xchain599_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx611_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain599_n12_β
.Lx611_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain599_n0_af
 xchain599_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx613_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx613_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx613_6]
 lea rdx, [rip + .Lx613_7]
 jmp rax
.Lx613_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx613_2
.Lx613_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx613_2
.Lx613_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx613_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx613_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx613_3]
 lea rdx, [rip + .Lx613_4]
 jmp rax
.Lx613_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx613_2
.Lx613_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx613_2
.Lx613_1:
 call rt_faildescr@PLT
.Lx613_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain599_n0_af
 jmp xchain599_n14_α
 xchain599_n7_β:
 jmp xchain599_n0_af
.Lx613_0:
 .quad .Lx613_0_s
.Lx613_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain599_n8_α:
 mov rax, qword ptr [1879054416]
 mov rdx, qword ptr [1879054424]
 cmp eax, 3
 jne .Lx614_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx614_10
.Lx614_9:
 xor eax, eax
.Lx614_10:
 test rax, rax
 jz .Lx614_0
 mov r8d, 0
 lea rcx, [rip + .Lx614_4]
 lea rdx, [rip + .Lx614_5]
 jmp rax
.Lx614_4:
 jmp xchain599_n0_as
.Lx614_5:
 jmp xchain599_n0_af
.Lx614_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S10]
 xor esi, esi
 call rt_defer_open@PLT
.Lx614_2:
 test rax, rax
 je .Lx614_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx614_7]
 lea rdx, [rip + .Lx614_8]
 jmp rax
.Lx614_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx614_2
.Lx614_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx614_2
.Lx614_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain599_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx614_6]
 sub rsp, 8
 push rax
 jmp xchain599_n0_as
.Lx614_6:
 add rsp, 16
 jmp xchain599_n0_af
 xchain599_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain599_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain599_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain599_n0_af
 add r14d, 1
 jmp xchain599_n0_as
 xchain599_n9_β:
 sub r14d, 1
 jmp xchain599_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain599_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx617_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx617_10
.Lx617_9:
 xor eax, eax
.Lx617_10:
 test rax, rax
 jz .Lx617_0
 mov r8d, 0
 lea rcx, [rip + .Lx617_4]
 lea rdx, [rip + .Lx617_5]
 jmp rax
.Lx617_4:
 jmp xchain599_n3_α
.Lx617_5:
 jmp xchain599_n2_β
.Lx617_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx617_2:
 test rax, rax
 je .Lx617_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx617_7]
 lea rdx, [rip + .Lx617_8]
 jmp rax
.Lx617_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx617_2
.Lx617_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx617_2
.Lx617_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain599_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx617_6]
 sub rsp, 8
 push rax
 jmp xchain599_n3_α
.Lx617_6:
 add rsp, 16
 jmp xchain599_n2_β
 xchain599_n10_β:
 jmp qword ptr [rsp]
 xchain599_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx619_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx619_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx619_6]
 lea rdx, [rip + .Lx619_7]
 jmp rax
.Lx619_6:
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
 jmp .Lx619_2
.Lx619_7:
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
 jmp .Lx619_2
.Lx619_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx619_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx619_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx619_3]
 lea rdx, [rip + .Lx619_4]
 jmp rax
.Lx619_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx619_2
.Lx619_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx619_2
.Lx619_1:
 call rt_faildescr@PLT
.Lx619_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain599_n0_af
 jmp xchain599_n15_α
 xchain599_n11_β:
 jmp xchain599_n0_af
.Lx619_0:
 .quad .Lx619_0_s
.Lx619_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain599_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain599_n16_α
xchain599_n12_as:
 jmp xchain599_n6_as
 xchain599_n12_β:
 jmp xchain599_n17_β
xchain599_n12_af:
 jmp xchain599_n6_af
# IR_LIT_STRING
 xchain599_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx622_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain599_n18_α
 xchain599_n13_β:
 jmp xchain599_n20_af
.Lx622_0:
 .quad .Lx622_0_s
.Lx622_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain599_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054416], rax
 mov qword ptr [1879054424], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain599_n8_α
# IR_ASSIGN gva
 xchain599_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054384], rax
 mov qword ptr [1879054392], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain599_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain599_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx625_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx625_10
.Lx625_9:
 xor eax, eax
.Lx625_10:
 test rax, rax
 jz .Lx625_0
 mov r8d, 0
 lea rcx, [rip + .Lx625_4]
 lea rdx, [rip + .Lx625_5]
 jmp rax
.Lx625_4:
 jmp xchain599_n17_α
.Lx625_5:
 jmp xchain599_n12_af
.Lx625_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx625_2:
 test rax, rax
 je .Lx625_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx625_7]
 lea rdx, [rip + .Lx625_8]
 jmp rax
.Lx625_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx625_2
.Lx625_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx625_2
.Lx625_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain599_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx625_6]
 sub rsp, 8
 push rax
 jmp xchain599_n17_α
.Lx625_6:
 add rsp, 16
 jmp xchain599_n12_af
 xchain599_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain599_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain599_n19_α
xchain599_n17_as:
 jmp xchain599_n12_as
 xchain599_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain599_n19_β
 jmp xchain599_n20_β
xchain599_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain599_n20_α
 jmp xchain599_n16_β
 xchain599_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx629_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx629_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx629_6]
 lea rdx, [rip + .Lx629_7]
 jmp rax
.Lx629_6:
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
 jmp .Lx629_2
.Lx629_7:
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
 jmp .Lx629_2
.Lx629_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx629_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx629_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx629_3]
 lea rdx, [rip + .Lx629_4]
 jmp rax
.Lx629_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx629_2
.Lx629_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx629_2
.Lx629_1:
 call rt_faildescr@PLT
.Lx629_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain599_n20_af
 jmp xchain599_n21_α
 xchain599_n18_β:
 jmp xchain599_n20_af
.Lx629_0:
 .quad .Lx629_0_s
.Lx629_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain599_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx630_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx630_10
.Lx630_9:
 xor eax, eax
.Lx630_10:
 test rax, rax
 jz .Lx630_0
 mov r8d, 0
 lea rcx, [rip + .Lx630_4]
 lea rdx, [rip + .Lx630_5]
 jmp rax
.Lx630_4:
 jmp xchain599_n17_as
.Lx630_5:
 jmp xchain599_n17_af
.Lx630_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx630_2:
 test rax, rax
 je .Lx630_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx630_7]
 lea rdx, [rip + .Lx630_8]
 jmp rax
.Lx630_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx630_2
.Lx630_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx630_2
.Lx630_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain599_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx630_6]
 sub rsp, 8
 push rax
 jmp xchain599_n17_as
.Lx630_6:
 add rsp, 16
 jmp xchain599_n17_af
 xchain599_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain599_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain599_n22_α
xchain599_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain599_n13_α
 jmp xchain599_n17_as
 xchain599_n20_β:
 mov dword ptr [rbp + 468], 2
xchain599_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain599_n23_β
 cmp eax, 1
 je xchain599_n24_β
 jmp xchain599_n17_af
# IR_ASSIGN gva
 xchain599_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054400], rax
 mov qword ptr [1879054408], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain599_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain599_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain599_n25_α
 xchain599_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain599_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain599_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain599_n20_as
 xchain599_n23_β:
 sub r12, 24
 jmp xchain599_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain599_n24_α:
 mov rax, qword ptr [1879054400]
 mov rdx, qword ptr [1879054408]
 cmp eax, 3
 jne .Lx638_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx638_10
.Lx638_9:
 xor eax, eax
.Lx638_10:
 test rax, rax
 jz .Lx638_0
 mov r8d, 0
 lea rcx, [rip + .Lx638_4]
 lea rdx, [rip + .Lx638_5]
 jmp rax
.Lx638_4:
 jmp xchain599_n20_as
.Lx638_5:
 jmp xchain599_n20_af
.Lx638_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S11]
 xor esi, esi
 call rt_defer_open@PLT
.Lx638_2:
 test rax, rax
 je .Lx638_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx638_7]
 lea rdx, [rip + .Lx638_8]
 jmp rax
.Lx638_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx638_2
.Lx638_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx638_2
.Lx638_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain599_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx638_6]
 sub rsp, 8
 push rax
 jmp xchain599_n20_as
.Lx638_6:
 add rsp, 16
 jmp xchain599_n20_af
 xchain599_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain599_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx639_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx639_10
.Lx639_9:
 xor eax, eax
.Lx639_10:
 test rax, rax
 jz .Lx639_0
 mov r8d, 0
 lea rcx, [rip + .Lx639_4]
 lea rdx, [rip + .Lx639_5]
 jmp rax
.Lx639_4:
 jmp xchain599_n23_α
.Lx639_5:
 jmp xchain599_n22_β
.Lx639_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx639_2:
 test rax, rax
 je .Lx639_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx639_7]
 lea rdx, [rip + .Lx639_8]
 jmp rax
.Lx639_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx639_2
.Lx639_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx639_2
.Lx639_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain599_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx639_6]
 sub rsp, 8
 push rax
 jmp xchain599_n23_α
.Lx639_6:
 add rsp, 16
 jmp xchain599_n22_β
 xchain599_n25_β:
 jmp qword ptr [rsp]
proc_PAT$6_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$6_γ
proc_PAT$6_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$6_attempt
8:
jmp proc_PAT$6_ω
proc_PAT$6_res:
add rsp, 8
pop rbp
proc_PAT$6_β:
jmp qword ptr [rbp + 784]
proc_PAT$6_γ:
push rbp
lea rax, [rip + proc_PAT$6_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$6_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$7_α
proc_PAT$7_α:
#=======================================================================================================================
    .global proc_PAT$7_α
    .global proc_PAT$7_β
    .global proc_PAT$7_γ
    .global proc_PAT$7_ω
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
proc_PAT$7_attempt:
proc_PAT$7_α_body:
lea rax, [rip + xchain640_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain640_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain640_n1_α
 xchain640_n0_β:
 add rsp, 16
 jmp proc_PAT$7_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain640_n1_α:
 jmp xchain640_n3_α
xchain640_n1_as:
 jmp xchain640_n2_α
 xchain640_n1_β:
 jmp xchain640_n5_β
xchain640_n1_af:
 jmp xchain640_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain640_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$7_scanhit
 xchain640_n2_β:
 sub r12, 24
 jmp xchain640_n1_β
# IR_MATCH_LIT
 xchain640_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain640_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain640_n1_af
 add r14d, 1
 jmp xchain640_n4_α
 xchain640_n3_β:
 sub r14d, 1
 jmp xchain640_n1_af
# IR_MATCH_BAL
 xchain640_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain640_n4_β:
.Lx650_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx650_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx650_1
 add edx, 1
 jmp .Lx650_2
.Lx650_1:
 cmp esi, 41
 jne .Lx650_2
 sub edx, 1
 cmp edx, 0
 jl .Lx650_3
.Lx650_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx650_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain640_n5_α
.Lx650_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain640_n3_β
# IR_MATCH_LIT
 xchain640_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain640_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain640_n4_β
 add r14d, 1
 jmp xchain640_n1_as
 xchain640_n5_β:
 sub r14d, 1
 jmp xchain640_n4_β
proc_PAT$7_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$7_γ
proc_PAT$7_scanfail:
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
jmp proc_PAT$7_attempt
8:
jmp proc_PAT$7_ω
proc_PAT$7_res:
add rsp, 8
pop rbp
proc_PAT$7_β:
jmp qword ptr [rbp + 160]
proc_PAT$7_γ:
push rbp
lea rax, [rip + proc_PAT$7_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$7_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$8_α
proc_PAT$8_α:
#=======================================================================================================================
    .global proc_PAT$8_α
    .global proc_PAT$8_β
    .global proc_PAT$8_γ
    .global proc_PAT$8_ω
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
proc_PAT$8_attempt:
proc_PAT$8_α_body:
lea rax, [rip + xchain653_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain653_n0_α:
 mov rax, qword ptr [1879054432]
 mov rdx, qword ptr [1879054440]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain653_n1_α
# IR_COERCE_STRING
 xchain653_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain653_n2_α
# IR_MATCH_SPAN
 xchain653_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx658_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx658_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx658_1
 add dword ptr [rsp + 0], 1
 jmp .Lx658_0
.Lx658_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx658_240
 add rsp, 16
 jmp proc_PAT$8_scanfail
.Lx658_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$8_scanhit
 xchain653_n2_β:
 xchain653_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$8_scanfail
proc_PAT$8_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$8_γ
proc_PAT$8_scanfail:
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
jmp proc_PAT$8_attempt
8:
jmp proc_PAT$8_ω
proc_PAT$8_res:
add rsp, 8
pop rbp
proc_PAT$8_β:
jmp qword ptr [rbp + 112]
proc_PAT$8_γ:
push rbp
lea rax, [rip + proc_PAT$8_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$8_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$9_α
proc_PAT$9_α:
#=======================================================================================================================
    .global proc_PAT$9_α
    .global proc_PAT$9_β
    .global proc_PAT$9_γ
    .global proc_PAT$9_ω
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
proc_PAT$9_attempt:
proc_PAT$9_α_body:
lea rax, [rip + xchain659_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain659_n0_α:
 mov rax, qword ptr [1879054464]
 mov rdx, qword ptr [1879054472]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain659_n1_α
 xchain659_n0_β:
 jmp proc_PAT$9_scanfail
# IR_COERCE_STRING
 xchain659_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain659_n2_α
 xchain659_n1_β:
 jmp proc_PAT$9_scanfail
# IR_VAR
 xchain659_n2_α:
 mov rax, qword ptr [1879054448]
 mov rdx, qword ptr [1879054456]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain659_n3_α
 xchain659_n2_β:
 jmp proc_PAT$9_scanfail
# IR_COERCE_STRING
 xchain659_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain659_n4_α
 xchain659_n3_β:
 jmp proc_PAT$9_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain659_n4_α:
 jmp xchain659_n5_α
xchain659_n4_as:
 jmp proc_PAT$9_γ
 xchain659_n4_β:
 jmp xchain659_n6_β
xchain659_n4_af:
 jmp proc_PAT$9_ω
# IR_MATCH_NOTANY
 xchain659_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain659_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain659_n4_af
 add r14d, 1
 jmp xchain659_n6_α
 xchain659_n5_β:
 sub r14d, 1
 jmp xchain659_n4_af
# IR_MATCH_BREAK
 xchain659_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx670_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx670_240
 add rsp, 16
 jmp xchain659_n5_β
.Lx670_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx670_1
 add dword ptr [rsp + 0], 1
 jmp .Lx670_0
.Lx670_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain659_n4_as
 xchain659_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain659_n5_β
proc_PAT$9_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$9_γ
proc_PAT$9_scanfail:
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
jmp proc_PAT$9_attempt
8:
jmp proc_PAT$9_ω
proc_PAT$9_res:
add rsp, 8
pop rbp
proc_PAT$9_β:
jmp qword ptr [rbp + 224]
proc_PAT$9_γ:
push rbp
lea rax, [rip + proc_PAT$9_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$9_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$10_α
proc_PAT$10_α:
#=======================================================================================================================
    .global proc_PAT$10_α
    .global proc_PAT$10_β
    .global proc_PAT$10_γ
    .global proc_PAT$10_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$10_attempt:
proc_PAT$10_α_body:
lea rax, [rip + xchain671_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain671_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain671_n1_α
xchain671_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain671_n2_α
 cmp eax, 2
 je xchain671_n4_α
 cmp eax, 3
 je xchain671_n6_α
 cmp eax, 4
 je xchain671_n7_α
 cmp eax, 5
 je xchain671_n9_α
 jmp proc_PAT$10_γ
 xchain671_n0_β:
 mov dword ptr [rbp + 36], 6
xchain671_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain671_n1_β
 cmp eax, 1
 je xchain671_n3_β
 cmp eax, 2
 je xchain671_n5_β
 cmp eax, 3
 je xchain671_n6_β
 cmp eax, 4
 je xchain671_n8_β
 cmp eax, 5
 je xchain671_n9_β
 jmp proc_PAT$10_ω
# IR_MATCH_LIT
 xchain671_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain671_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain671_n0_af
 add r14d, 1
 jmp xchain671_n0_as
 xchain671_n1_β:
 sub r14d, 1
 jmp xchain671_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain671_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain671_n10_α
 xchain671_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain671_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain671_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain671_n0_as
 xchain671_n3_β:
 sub r12, 24
 jmp xchain671_n10_β
# IR_LIT_STRING
 xchain671_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx680_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain671_n11_α
 xchain671_n4_β:
 jmp xchain671_n0_af
.Lx680_0:
 .quad .Lx680_0_s
.Lx680_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain671_n5_α:
 mov rax, qword ptr [1879054480]
 mov rdx, qword ptr [1879054488]
 cmp eax, 3
 jne .Lx681_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx681_10
.Lx681_9:
 xor eax, eax
.Lx681_10:
 test rax, rax
 jz .Lx681_0
 mov r8d, 0
 lea rcx, [rip + .Lx681_4]
 lea rdx, [rip + .Lx681_5]
 jmp rax
.Lx681_4:
 jmp xchain671_n0_as
.Lx681_5:
 jmp xchain671_n0_af
.Lx681_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S12]
 xor esi, esi
 call rt_defer_open@PLT
.Lx681_2:
 test rax, rax
 je .Lx681_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx681_7]
 lea rdx, [rip + .Lx681_8]
 jmp rax
.Lx681_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx681_2
.Lx681_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx681_2
.Lx681_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain671_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx681_6]
 sub rsp, 8
 push rax
 jmp xchain671_n0_as
.Lx681_6:
 add rsp, 16
 jmp xchain671_n0_af
 xchain671_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain671_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain671_n0_as
 xchain671_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain671_n12_α
xchain671_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain671_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain671_n0_as
xchain671_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx683_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain671_n12_β
.Lx683_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain671_n0_af
 xchain671_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx685_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx685_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx685_6]
 lea rdx, [rip + .Lx685_7]
 jmp rax
.Lx685_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx685_2
.Lx685_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx685_2
.Lx685_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx685_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx685_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx685_3]
 lea rdx, [rip + .Lx685_4]
 jmp rax
.Lx685_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx685_2
.Lx685_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx685_2
.Lx685_1:
 call rt_faildescr@PLT
.Lx685_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain671_n0_af
 jmp xchain671_n14_α
 xchain671_n7_β:
 jmp xchain671_n0_af
.Lx685_0:
 .quad .Lx685_0_s
.Lx685_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain671_n8_α:
 mov rax, qword ptr [1879054512]
 mov rdx, qword ptr [1879054520]
 cmp eax, 3
 jne .Lx686_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx686_10
.Lx686_9:
 xor eax, eax
.Lx686_10:
 test rax, rax
 jz .Lx686_0
 mov r8d, 0
 lea rcx, [rip + .Lx686_4]
 lea rdx, [rip + .Lx686_5]
 jmp rax
.Lx686_4:
 jmp xchain671_n0_as
.Lx686_5:
 jmp xchain671_n0_af
.Lx686_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S13]
 xor esi, esi
 call rt_defer_open@PLT
.Lx686_2:
 test rax, rax
 je .Lx686_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx686_7]
 lea rdx, [rip + .Lx686_8]
 jmp rax
.Lx686_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx686_2
.Lx686_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx686_2
.Lx686_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain671_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx686_6]
 sub rsp, 8
 push rax
 jmp xchain671_n0_as
.Lx686_6:
 add rsp, 16
 jmp xchain671_n0_af
 xchain671_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain671_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain671_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain671_n0_af
 add r14d, 1
 jmp xchain671_n0_as
 xchain671_n9_β:
 sub r14d, 1
 jmp xchain671_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain671_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx689_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx689_10
.Lx689_9:
 xor eax, eax
.Lx689_10:
 test rax, rax
 jz .Lx689_0
 mov r8d, 0
 lea rcx, [rip + .Lx689_4]
 lea rdx, [rip + .Lx689_5]
 jmp rax
.Lx689_4:
 jmp xchain671_n3_α
.Lx689_5:
 jmp xchain671_n2_β
.Lx689_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx689_2:
 test rax, rax
 je .Lx689_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx689_7]
 lea rdx, [rip + .Lx689_8]
 jmp rax
.Lx689_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx689_2
.Lx689_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx689_2
.Lx689_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain671_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx689_6]
 sub rsp, 8
 push rax
 jmp xchain671_n3_α
.Lx689_6:
 add rsp, 16
 jmp xchain671_n2_β
 xchain671_n10_β:
 jmp qword ptr [rsp]
 xchain671_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx691_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx691_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx691_6]
 lea rdx, [rip + .Lx691_7]
 jmp rax
.Lx691_6:
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
 jmp .Lx691_2
.Lx691_7:
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
 jmp .Lx691_2
.Lx691_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx691_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx691_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx691_3]
 lea rdx, [rip + .Lx691_4]
 jmp rax
.Lx691_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx691_2
.Lx691_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx691_2
.Lx691_1:
 call rt_faildescr@PLT
.Lx691_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain671_n0_af
 jmp xchain671_n15_α
 xchain671_n11_β:
 jmp xchain671_n0_af
.Lx691_0:
 .quad .Lx691_0_s
.Lx691_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain671_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain671_n16_α
xchain671_n12_as:
 jmp xchain671_n6_as
 xchain671_n12_β:
 jmp xchain671_n17_β
xchain671_n12_af:
 jmp xchain671_n6_af
# IR_LIT_STRING
 xchain671_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx694_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain671_n18_α
 xchain671_n13_β:
 jmp xchain671_n20_af
.Lx694_0:
 .quad .Lx694_0_s
.Lx694_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain671_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054512], rax
 mov qword ptr [1879054520], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain671_n8_α
# IR_ASSIGN gva
 xchain671_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054480], rax
 mov qword ptr [1879054488], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain671_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain671_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx697_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx697_10
.Lx697_9:
 xor eax, eax
.Lx697_10:
 test rax, rax
 jz .Lx697_0
 mov r8d, 0
 lea rcx, [rip + .Lx697_4]
 lea rdx, [rip + .Lx697_5]
 jmp rax
.Lx697_4:
 jmp xchain671_n17_α
.Lx697_5:
 jmp xchain671_n12_af
.Lx697_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx697_2:
 test rax, rax
 je .Lx697_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx697_7]
 lea rdx, [rip + .Lx697_8]
 jmp rax
.Lx697_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx697_2
.Lx697_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx697_2
.Lx697_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain671_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx697_6]
 sub rsp, 8
 push rax
 jmp xchain671_n17_α
.Lx697_6:
 add rsp, 16
 jmp xchain671_n12_af
 xchain671_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain671_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain671_n19_α
xchain671_n17_as:
 jmp xchain671_n12_as
 xchain671_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain671_n19_β
 jmp xchain671_n20_β
xchain671_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain671_n20_α
 jmp xchain671_n16_β
 xchain671_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx701_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx701_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx701_6]
 lea rdx, [rip + .Lx701_7]
 jmp rax
.Lx701_6:
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
 jmp .Lx701_2
.Lx701_7:
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
 jmp .Lx701_2
.Lx701_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx701_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx701_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx701_3]
 lea rdx, [rip + .Lx701_4]
 jmp rax
.Lx701_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx701_2
.Lx701_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx701_2
.Lx701_1:
 call rt_faildescr@PLT
.Lx701_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain671_n20_af
 jmp xchain671_n21_α
 xchain671_n18_β:
 jmp xchain671_n20_af
.Lx701_0:
 .quad .Lx701_0_s
.Lx701_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain671_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx702_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx702_10
.Lx702_9:
 xor eax, eax
.Lx702_10:
 test rax, rax
 jz .Lx702_0
 mov r8d, 0
 lea rcx, [rip + .Lx702_4]
 lea rdx, [rip + .Lx702_5]
 jmp rax
.Lx702_4:
 jmp xchain671_n17_as
.Lx702_5:
 jmp xchain671_n17_af
.Lx702_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx702_2:
 test rax, rax
 je .Lx702_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx702_7]
 lea rdx, [rip + .Lx702_8]
 jmp rax
.Lx702_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx702_2
.Lx702_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx702_2
.Lx702_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain671_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx702_6]
 sub rsp, 8
 push rax
 jmp xchain671_n17_as
.Lx702_6:
 add rsp, 16
 jmp xchain671_n17_af
 xchain671_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain671_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain671_n22_α
xchain671_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain671_n13_α
 jmp xchain671_n17_as
 xchain671_n20_β:
 mov dword ptr [rbp + 468], 2
xchain671_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain671_n23_β
 cmp eax, 1
 je xchain671_n24_β
 jmp xchain671_n17_af
# IR_ASSIGN gva
 xchain671_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054496], rax
 mov qword ptr [1879054504], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain671_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain671_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain671_n25_α
 xchain671_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain671_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain671_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain671_n20_as
 xchain671_n23_β:
 sub r12, 24
 jmp xchain671_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain671_n24_α:
 mov rax, qword ptr [1879054496]
 mov rdx, qword ptr [1879054504]
 cmp eax, 3
 jne .Lx710_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx710_10
.Lx710_9:
 xor eax, eax
.Lx710_10:
 test rax, rax
 jz .Lx710_0
 mov r8d, 0
 lea rcx, [rip + .Lx710_4]
 lea rdx, [rip + .Lx710_5]
 jmp rax
.Lx710_4:
 jmp xchain671_n20_as
.Lx710_5:
 jmp xchain671_n20_af
.Lx710_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S14]
 xor esi, esi
 call rt_defer_open@PLT
.Lx710_2:
 test rax, rax
 je .Lx710_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx710_7]
 lea rdx, [rip + .Lx710_8]
 jmp rax
.Lx710_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx710_2
.Lx710_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx710_2
.Lx710_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain671_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx710_6]
 sub rsp, 8
 push rax
 jmp xchain671_n20_as
.Lx710_6:
 add rsp, 16
 jmp xchain671_n20_af
 xchain671_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain671_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx711_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx711_10
.Lx711_9:
 xor eax, eax
.Lx711_10:
 test rax, rax
 jz .Lx711_0
 mov r8d, 0
 lea rcx, [rip + .Lx711_4]
 lea rdx, [rip + .Lx711_5]
 jmp rax
.Lx711_4:
 jmp xchain671_n23_α
.Lx711_5:
 jmp xchain671_n22_β
.Lx711_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx711_2:
 test rax, rax
 je .Lx711_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx711_7]
 lea rdx, [rip + .Lx711_8]
 jmp rax
.Lx711_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx711_2
.Lx711_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx711_2
.Lx711_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain671_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx711_6]
 sub rsp, 8
 push rax
 jmp xchain671_n23_α
.Lx711_6:
 add rsp, 16
 jmp xchain671_n22_β
 xchain671_n25_β:
 jmp qword ptr [rsp]
proc_PAT$10_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$10_γ
proc_PAT$10_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$10_attempt
8:
jmp proc_PAT$10_ω
proc_PAT$10_res:
add rsp, 8
pop rbp
proc_PAT$10_β:
jmp qword ptr [rbp + 784]
proc_PAT$10_γ:
push rbp
lea rax, [rip + proc_PAT$10_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$10_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
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
lea rax, [rip + xchain712_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain712_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain712_n1_α
 xchain712_n0_β:
 add rsp, 16
 jmp proc_PAT$11_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain712_n1_α:
 jmp xchain712_n3_α
xchain712_n1_as:
 jmp xchain712_n2_α
 xchain712_n1_β:
 jmp xchain712_n5_β
xchain712_n1_af:
 jmp xchain712_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain712_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$11_scanhit
 xchain712_n2_β:
 sub r12, 24
 jmp xchain712_n1_β
# IR_MATCH_LIT
 xchain712_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain712_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain712_n1_af
 add r14d, 1
 jmp xchain712_n4_α
 xchain712_n3_β:
 sub r14d, 1
 jmp xchain712_n1_af
# IR_MATCH_BAL
 xchain712_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain712_n4_β:
.Lx722_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx722_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx722_1
 add edx, 1
 jmp .Lx722_2
.Lx722_1:
 cmp esi, 41
 jne .Lx722_2
 sub edx, 1
 cmp edx, 0
 jl .Lx722_3
.Lx722_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx722_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain712_n5_α
.Lx722_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain712_n3_β
# IR_MATCH_LIT
 xchain712_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain712_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain712_n4_β
 add r14d, 1
 jmp xchain712_n1_as
 xchain712_n5_β:
 sub r14d, 1
 jmp xchain712_n4_β
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
lea rax, [rip + xchain725_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain725_n0_α:
 mov rax, qword ptr [1879054528]
 mov rdx, qword ptr [1879054536]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain725_n1_α
# IR_COERCE_STRING
 xchain725_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain725_n2_α
# IR_MATCH_SPAN
 xchain725_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx730_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx730_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx730_1
 add dword ptr [rsp + 0], 1
 jmp .Lx730_0
.Lx730_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx730_240
 add rsp, 16
 jmp proc_PAT$12_scanfail
.Lx730_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$12_scanhit
 xchain725_n2_β:
 xchain725_n2_β:
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
lea rax, [rip + xchain731_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain731_n0_α:
 mov rax, qword ptr [1879054560]
 mov rdx, qword ptr [1879054568]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain731_n1_α
 xchain731_n0_β:
 jmp proc_PAT$13_scanfail
# IR_COERCE_STRING
 xchain731_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain731_n2_α
 xchain731_n1_β:
 jmp proc_PAT$13_scanfail
# IR_VAR
 xchain731_n2_α:
 mov rax, qword ptr [1879054544]
 mov rdx, qword ptr [1879054552]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain731_n3_α
 xchain731_n2_β:
 jmp proc_PAT$13_scanfail
# IR_COERCE_STRING
 xchain731_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain731_n4_α
 xchain731_n3_β:
 jmp proc_PAT$13_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain731_n4_α:
 jmp xchain731_n5_α
xchain731_n4_as:
 jmp proc_PAT$13_γ
 xchain731_n4_β:
 jmp xchain731_n6_β
xchain731_n4_af:
 jmp proc_PAT$13_ω
# IR_MATCH_NOTANY
 xchain731_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain731_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain731_n4_af
 add r14d, 1
 jmp xchain731_n6_α
 xchain731_n5_β:
 sub r14d, 1
 jmp xchain731_n4_af
# IR_MATCH_BREAK
 xchain731_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx742_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx742_240
 add rsp, 16
 jmp xchain731_n5_β
.Lx742_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx742_1
 add dword ptr [rsp + 0], 1
 jmp .Lx742_0
.Lx742_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain731_n4_as
 xchain731_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain731_n5_β
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
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$14_attempt:
proc_PAT$14_α_body:
lea rax, [rip + xchain743_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain743_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain743_n1_α
xchain743_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain743_n2_α
 cmp eax, 2
 je xchain743_n4_α
 cmp eax, 3
 je xchain743_n6_α
 cmp eax, 4
 je xchain743_n7_α
 cmp eax, 5
 je xchain743_n9_α
 jmp proc_PAT$14_γ
 xchain743_n0_β:
 mov dword ptr [rbp + 36], 6
xchain743_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain743_n1_β
 cmp eax, 1
 je xchain743_n3_β
 cmp eax, 2
 je xchain743_n5_β
 cmp eax, 3
 je xchain743_n6_β
 cmp eax, 4
 je xchain743_n8_β
 cmp eax, 5
 je xchain743_n9_β
 jmp proc_PAT$14_ω
# IR_MATCH_LIT
 xchain743_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain743_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain743_n0_af
 add r14d, 1
 jmp xchain743_n0_as
 xchain743_n1_β:
 sub r14d, 1
 jmp xchain743_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain743_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain743_n10_α
 xchain743_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain743_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain743_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain743_n0_as
 xchain743_n3_β:
 sub r12, 24
 jmp xchain743_n10_β
# IR_LIT_STRING
 xchain743_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx752_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain743_n11_α
 xchain743_n4_β:
 jmp xchain743_n0_af
.Lx752_0:
 .quad .Lx752_0_s
.Lx752_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain743_n5_α:
 mov rax, qword ptr [1879054576]
 mov rdx, qword ptr [1879054584]
 cmp eax, 3
 jne .Lx753_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx753_10
.Lx753_9:
 xor eax, eax
.Lx753_10:
 test rax, rax
 jz .Lx753_0
 mov r8d, 0
 lea rcx, [rip + .Lx753_4]
 lea rdx, [rip + .Lx753_5]
 jmp rax
.Lx753_4:
 jmp xchain743_n0_as
.Lx753_5:
 jmp xchain743_n0_af
.Lx753_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S15]
 xor esi, esi
 call rt_defer_open@PLT
.Lx753_2:
 test rax, rax
 je .Lx753_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx753_7]
 lea rdx, [rip + .Lx753_8]
 jmp rax
.Lx753_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx753_2
.Lx753_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx753_2
.Lx753_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain743_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx753_6]
 sub rsp, 8
 push rax
 jmp xchain743_n0_as
.Lx753_6:
 add rsp, 16
 jmp xchain743_n0_af
 xchain743_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain743_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain743_n0_as
 xchain743_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain743_n12_α
xchain743_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain743_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain743_n0_as
xchain743_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx755_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain743_n12_β
.Lx755_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain743_n0_af
 xchain743_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx757_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx757_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx757_6]
 lea rdx, [rip + .Lx757_7]
 jmp rax
.Lx757_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx757_2
.Lx757_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx757_2
.Lx757_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx757_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx757_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx757_3]
 lea rdx, [rip + .Lx757_4]
 jmp rax
.Lx757_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx757_2
.Lx757_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx757_2
.Lx757_1:
 call rt_faildescr@PLT
.Lx757_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain743_n0_af
 jmp xchain743_n14_α
 xchain743_n7_β:
 jmp xchain743_n0_af
.Lx757_0:
 .quad .Lx757_0_s
.Lx757_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain743_n8_α:
 mov rax, qword ptr [1879054608]
 mov rdx, qword ptr [1879054616]
 cmp eax, 3
 jne .Lx758_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx758_10
.Lx758_9:
 xor eax, eax
.Lx758_10:
 test rax, rax
 jz .Lx758_0
 mov r8d, 0
 lea rcx, [rip + .Lx758_4]
 lea rdx, [rip + .Lx758_5]
 jmp rax
.Lx758_4:
 jmp xchain743_n0_as
.Lx758_5:
 jmp xchain743_n0_af
.Lx758_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S16]
 xor esi, esi
 call rt_defer_open@PLT
.Lx758_2:
 test rax, rax
 je .Lx758_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx758_7]
 lea rdx, [rip + .Lx758_8]
 jmp rax
.Lx758_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx758_2
.Lx758_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx758_2
.Lx758_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain743_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx758_6]
 sub rsp, 8
 push rax
 jmp xchain743_n0_as
.Lx758_6:
 add rsp, 16
 jmp xchain743_n0_af
 xchain743_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain743_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain743_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain743_n0_af
 add r14d, 1
 jmp xchain743_n0_as
 xchain743_n9_β:
 sub r14d, 1
 jmp xchain743_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain743_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx761_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx761_10
.Lx761_9:
 xor eax, eax
.Lx761_10:
 test rax, rax
 jz .Lx761_0
 mov r8d, 0
 lea rcx, [rip + .Lx761_4]
 lea rdx, [rip + .Lx761_5]
 jmp rax
.Lx761_4:
 jmp xchain743_n3_α
.Lx761_5:
 jmp xchain743_n2_β
.Lx761_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx761_2:
 test rax, rax
 je .Lx761_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx761_7]
 lea rdx, [rip + .Lx761_8]
 jmp rax
.Lx761_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx761_2
.Lx761_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx761_2
.Lx761_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain743_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx761_6]
 sub rsp, 8
 push rax
 jmp xchain743_n3_α
.Lx761_6:
 add rsp, 16
 jmp xchain743_n2_β
 xchain743_n10_β:
 jmp qword ptr [rsp]
 xchain743_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx763_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx763_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx763_6]
 lea rdx, [rip + .Lx763_7]
 jmp rax
.Lx763_6:
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
 jmp .Lx763_2
.Lx763_7:
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
 jmp .Lx763_2
.Lx763_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx763_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx763_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx763_3]
 lea rdx, [rip + .Lx763_4]
 jmp rax
.Lx763_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx763_2
.Lx763_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx763_2
.Lx763_1:
 call rt_faildescr@PLT
.Lx763_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain743_n0_af
 jmp xchain743_n15_α
 xchain743_n11_β:
 jmp xchain743_n0_af
.Lx763_0:
 .quad .Lx763_0_s
.Lx763_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain743_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain743_n16_α
xchain743_n12_as:
 jmp xchain743_n6_as
 xchain743_n12_β:
 jmp xchain743_n17_β
xchain743_n12_af:
 jmp xchain743_n6_af
# IR_LIT_STRING
 xchain743_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx766_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain743_n18_α
 xchain743_n13_β:
 jmp xchain743_n20_af
.Lx766_0:
 .quad .Lx766_0_s
.Lx766_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain743_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054608], rax
 mov qword ptr [1879054616], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain743_n8_α
# IR_ASSIGN gva
 xchain743_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054576], rax
 mov qword ptr [1879054584], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain743_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain743_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx769_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx769_10
.Lx769_9:
 xor eax, eax
.Lx769_10:
 test rax, rax
 jz .Lx769_0
 mov r8d, 0
 lea rcx, [rip + .Lx769_4]
 lea rdx, [rip + .Lx769_5]
 jmp rax
.Lx769_4:
 jmp xchain743_n17_α
.Lx769_5:
 jmp xchain743_n12_af
.Lx769_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx769_2:
 test rax, rax
 je .Lx769_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx769_7]
 lea rdx, [rip + .Lx769_8]
 jmp rax
.Lx769_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx769_2
.Lx769_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx769_2
.Lx769_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain743_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx769_6]
 sub rsp, 8
 push rax
 jmp xchain743_n17_α
.Lx769_6:
 add rsp, 16
 jmp xchain743_n12_af
 xchain743_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain743_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain743_n19_α
xchain743_n17_as:
 jmp xchain743_n12_as
 xchain743_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain743_n19_β
 jmp xchain743_n20_β
xchain743_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain743_n20_α
 jmp xchain743_n16_β
 xchain743_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx773_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx773_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx773_6]
 lea rdx, [rip + .Lx773_7]
 jmp rax
.Lx773_6:
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
 jmp .Lx773_2
.Lx773_7:
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
 jmp .Lx773_2
.Lx773_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx773_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx773_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx773_3]
 lea rdx, [rip + .Lx773_4]
 jmp rax
.Lx773_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx773_2
.Lx773_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx773_2
.Lx773_1:
 call rt_faildescr@PLT
.Lx773_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain743_n20_af
 jmp xchain743_n21_α
 xchain743_n18_β:
 jmp xchain743_n20_af
.Lx773_0:
 .quad .Lx773_0_s
.Lx773_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain743_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx774_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx774_10
.Lx774_9:
 xor eax, eax
.Lx774_10:
 test rax, rax
 jz .Lx774_0
 mov r8d, 0
 lea rcx, [rip + .Lx774_4]
 lea rdx, [rip + .Lx774_5]
 jmp rax
.Lx774_4:
 jmp xchain743_n17_as
.Lx774_5:
 jmp xchain743_n17_af
.Lx774_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx774_2:
 test rax, rax
 je .Lx774_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx774_7]
 lea rdx, [rip + .Lx774_8]
 jmp rax
.Lx774_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx774_2
.Lx774_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx774_2
.Lx774_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain743_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx774_6]
 sub rsp, 8
 push rax
 jmp xchain743_n17_as
.Lx774_6:
 add rsp, 16
 jmp xchain743_n17_af
 xchain743_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain743_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain743_n22_α
xchain743_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain743_n13_α
 jmp xchain743_n17_as
 xchain743_n20_β:
 mov dword ptr [rbp + 468], 2
xchain743_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain743_n23_β
 cmp eax, 1
 je xchain743_n24_β
 jmp xchain743_n17_af
# IR_ASSIGN gva
 xchain743_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054592], rax
 mov qword ptr [1879054600], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain743_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain743_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain743_n25_α
 xchain743_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain743_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain743_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain743_n20_as
 xchain743_n23_β:
 sub r12, 24
 jmp xchain743_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain743_n24_α:
 mov rax, qword ptr [1879054592]
 mov rdx, qword ptr [1879054600]
 cmp eax, 3
 jne .Lx782_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx782_10
.Lx782_9:
 xor eax, eax
.Lx782_10:
 test rax, rax
 jz .Lx782_0
 mov r8d, 0
 lea rcx, [rip + .Lx782_4]
 lea rdx, [rip + .Lx782_5]
 jmp rax
.Lx782_4:
 jmp xchain743_n20_as
.Lx782_5:
 jmp xchain743_n20_af
.Lx782_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S17]
 xor esi, esi
 call rt_defer_open@PLT
.Lx782_2:
 test rax, rax
 je .Lx782_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx782_7]
 lea rdx, [rip + .Lx782_8]
 jmp rax
.Lx782_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx782_2
.Lx782_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx782_2
.Lx782_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain743_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx782_6]
 sub rsp, 8
 push rax
 jmp xchain743_n20_as
.Lx782_6:
 add rsp, 16
 jmp xchain743_n20_af
 xchain743_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain743_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx783_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx783_10
.Lx783_9:
 xor eax, eax
.Lx783_10:
 test rax, rax
 jz .Lx783_0
 mov r8d, 0
 lea rcx, [rip + .Lx783_4]
 lea rdx, [rip + .Lx783_5]
 jmp rax
.Lx783_4:
 jmp xchain743_n23_α
.Lx783_5:
 jmp xchain743_n22_β
.Lx783_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx783_2:
 test rax, rax
 je .Lx783_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx783_7]
 lea rdx, [rip + .Lx783_8]
 jmp rax
.Lx783_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx783_2
.Lx783_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx783_2
.Lx783_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain743_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx783_6]
 sub rsp, 8
 push rax
 jmp xchain743_n23_α
.Lx783_6:
 add rsp, 16
 jmp xchain743_n22_β
 xchain743_n25_β:
 jmp qword ptr [rsp]
proc_PAT$14_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$14_γ
proc_PAT$14_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$14_attempt
8:
jmp proc_PAT$14_ω
proc_PAT$14_res:
add rsp, 8
pop rbp
proc_PAT$14_β:
jmp qword ptr [rbp + 784]
proc_PAT$14_γ:
push rbp
lea rax, [rip + proc_PAT$14_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$14_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$15_α
proc_PAT$15_α:
#=======================================================================================================================
    .global proc_PAT$15_α
    .global proc_PAT$15_β
    .global proc_PAT$15_γ
    .global proc_PAT$15_ω
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
proc_PAT$15_attempt:
proc_PAT$15_α_body:
lea rax, [rip + xchain784_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain784_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain784_n1_α
 xchain784_n0_β:
 add rsp, 16
 jmp proc_PAT$15_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain784_n1_α:
 jmp xchain784_n3_α
xchain784_n1_as:
 jmp xchain784_n2_α
 xchain784_n1_β:
 jmp xchain784_n5_β
xchain784_n1_af:
 jmp xchain784_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain784_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$15_scanhit
 xchain784_n2_β:
 sub r12, 24
 jmp xchain784_n1_β
# IR_MATCH_LIT
 xchain784_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain784_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain784_n1_af
 add r14d, 1
 jmp xchain784_n4_α
 xchain784_n3_β:
 sub r14d, 1
 jmp xchain784_n1_af
# IR_MATCH_BAL
 xchain784_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain784_n4_β:
.Lx794_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx794_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx794_1
 add edx, 1
 jmp .Lx794_2
.Lx794_1:
 cmp esi, 41
 jne .Lx794_2
 sub edx, 1
 cmp edx, 0
 jl .Lx794_3
.Lx794_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx794_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain784_n5_α
.Lx794_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain784_n3_β
# IR_MATCH_LIT
 xchain784_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain784_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain784_n4_β
 add r14d, 1
 jmp xchain784_n1_as
 xchain784_n5_β:
 sub r14d, 1
 jmp xchain784_n4_β
proc_PAT$15_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$15_γ
proc_PAT$15_scanfail:
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
jmp proc_PAT$15_attempt
8:
jmp proc_PAT$15_ω
proc_PAT$15_res:
add rsp, 8
pop rbp
proc_PAT$15_β:
jmp qword ptr [rbp + 160]
proc_PAT$15_γ:
push rbp
lea rax, [rip + proc_PAT$15_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$15_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$16_α
proc_PAT$16_α:
#=======================================================================================================================
    .global proc_PAT$16_α
    .global proc_PAT$16_β
    .global proc_PAT$16_γ
    .global proc_PAT$16_ω
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
proc_PAT$16_attempt:
proc_PAT$16_α_body:
lea rax, [rip + xchain797_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain797_n0_α:
 mov rax, qword ptr [1879054624]
 mov rdx, qword ptr [1879054632]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain797_n1_α
# IR_COERCE_STRING
 xchain797_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain797_n2_α
# IR_MATCH_SPAN
 xchain797_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx802_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx802_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx802_1
 add dword ptr [rsp + 0], 1
 jmp .Lx802_0
.Lx802_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx802_240
 add rsp, 16
 jmp proc_PAT$16_scanfail
.Lx802_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$16_scanhit
 xchain797_n2_β:
 xchain797_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$16_scanfail
proc_PAT$16_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$16_γ
proc_PAT$16_scanfail:
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
jmp proc_PAT$16_attempt
8:
jmp proc_PAT$16_ω
proc_PAT$16_res:
add rsp, 8
pop rbp
proc_PAT$16_β:
jmp qword ptr [rbp + 112]
proc_PAT$16_γ:
push rbp
lea rax, [rip + proc_PAT$16_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$16_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$17_α
proc_PAT$17_α:
#=======================================================================================================================
    .global proc_PAT$17_α
    .global proc_PAT$17_β
    .global proc_PAT$17_γ
    .global proc_PAT$17_ω
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
proc_PAT$17_attempt:
proc_PAT$17_α_body:
lea rax, [rip + xchain803_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain803_n0_α:
 mov rax, qword ptr [1879054656]
 mov rdx, qword ptr [1879054664]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain803_n1_α
 xchain803_n0_β:
 jmp proc_PAT$17_scanfail
# IR_COERCE_STRING
 xchain803_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain803_n2_α
 xchain803_n1_β:
 jmp proc_PAT$17_scanfail
# IR_VAR
 xchain803_n2_α:
 mov rax, qword ptr [1879054640]
 mov rdx, qword ptr [1879054648]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain803_n3_α
 xchain803_n2_β:
 jmp proc_PAT$17_scanfail
# IR_COERCE_STRING
 xchain803_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain803_n4_α
 xchain803_n3_β:
 jmp proc_PAT$17_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain803_n4_α:
 jmp xchain803_n5_α
xchain803_n4_as:
 jmp proc_PAT$17_γ
 xchain803_n4_β:
 jmp xchain803_n6_β
xchain803_n4_af:
 jmp proc_PAT$17_ω
# IR_MATCH_NOTANY
 xchain803_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain803_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain803_n4_af
 add r14d, 1
 jmp xchain803_n6_α
 xchain803_n5_β:
 sub r14d, 1
 jmp xchain803_n4_af
# IR_MATCH_BREAK
 xchain803_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx814_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx814_240
 add rsp, 16
 jmp xchain803_n5_β
.Lx814_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx814_1
 add dword ptr [rsp + 0], 1
 jmp .Lx814_0
.Lx814_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain803_n4_as
 xchain803_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain803_n5_β
proc_PAT$17_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$17_γ
proc_PAT$17_scanfail:
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
jmp proc_PAT$17_attempt
8:
jmp proc_PAT$17_ω
proc_PAT$17_res:
add rsp, 8
pop rbp
proc_PAT$17_β:
jmp qword ptr [rbp + 224]
proc_PAT$17_γ:
push rbp
lea rax, [rip + proc_PAT$17_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$17_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$18_α
proc_PAT$18_α:
#=======================================================================================================================
    .global proc_PAT$18_α
    .global proc_PAT$18_β
    .global proc_PAT$18_γ
    .global proc_PAT$18_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$18_attempt:
proc_PAT$18_α_body:
lea rax, [rip + xchain815_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain815_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain815_n1_α
xchain815_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain815_n2_α
 cmp eax, 2
 je xchain815_n4_α
 cmp eax, 3
 je xchain815_n6_α
 cmp eax, 4
 je xchain815_n7_α
 cmp eax, 5
 je xchain815_n9_α
 jmp proc_PAT$18_γ
 xchain815_n0_β:
 mov dword ptr [rbp + 36], 6
xchain815_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain815_n1_β
 cmp eax, 1
 je xchain815_n3_β
 cmp eax, 2
 je xchain815_n5_β
 cmp eax, 3
 je xchain815_n6_β
 cmp eax, 4
 je xchain815_n8_β
 cmp eax, 5
 je xchain815_n9_β
 jmp proc_PAT$18_ω
# IR_MATCH_LIT
 xchain815_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain815_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain815_n0_af
 add r14d, 1
 jmp xchain815_n0_as
 xchain815_n1_β:
 sub r14d, 1
 jmp xchain815_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain815_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain815_n10_α
 xchain815_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain815_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain815_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain815_n0_as
 xchain815_n3_β:
 sub r12, 24
 jmp xchain815_n10_β
# IR_LIT_STRING
 xchain815_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx824_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain815_n11_α
 xchain815_n4_β:
 jmp xchain815_n0_af
.Lx824_0:
 .quad .Lx824_0_s
.Lx824_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain815_n5_α:
 mov rax, qword ptr [1879054672]
 mov rdx, qword ptr [1879054680]
 cmp eax, 3
 jne .Lx825_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx825_10
.Lx825_9:
 xor eax, eax
.Lx825_10:
 test rax, rax
 jz .Lx825_0
 mov r8d, 0
 lea rcx, [rip + .Lx825_4]
 lea rdx, [rip + .Lx825_5]
 jmp rax
.Lx825_4:
 jmp xchain815_n0_as
.Lx825_5:
 jmp xchain815_n0_af
.Lx825_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S18]
 xor esi, esi
 call rt_defer_open@PLT
.Lx825_2:
 test rax, rax
 je .Lx825_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx825_7]
 lea rdx, [rip + .Lx825_8]
 jmp rax
.Lx825_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx825_2
.Lx825_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx825_2
.Lx825_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain815_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx825_6]
 sub rsp, 8
 push rax
 jmp xchain815_n0_as
.Lx825_6:
 add rsp, 16
 jmp xchain815_n0_af
 xchain815_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain815_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain815_n0_as
 xchain815_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain815_n12_α
xchain815_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain815_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain815_n0_as
xchain815_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx827_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain815_n12_β
.Lx827_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain815_n0_af
 xchain815_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx829_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx829_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx829_6]
 lea rdx, [rip + .Lx829_7]
 jmp rax
.Lx829_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx829_2
.Lx829_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx829_2
.Lx829_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx829_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx829_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx829_3]
 lea rdx, [rip + .Lx829_4]
 jmp rax
.Lx829_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx829_2
.Lx829_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx829_2
.Lx829_1:
 call rt_faildescr@PLT
.Lx829_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain815_n0_af
 jmp xchain815_n14_α
 xchain815_n7_β:
 jmp xchain815_n0_af
.Lx829_0:
 .quad .Lx829_0_s
.Lx829_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain815_n8_α:
 mov rax, qword ptr [1879054704]
 mov rdx, qword ptr [1879054712]
 cmp eax, 3
 jne .Lx830_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx830_10
.Lx830_9:
 xor eax, eax
.Lx830_10:
 test rax, rax
 jz .Lx830_0
 mov r8d, 0
 lea rcx, [rip + .Lx830_4]
 lea rdx, [rip + .Lx830_5]
 jmp rax
.Lx830_4:
 jmp xchain815_n0_as
.Lx830_5:
 jmp xchain815_n0_af
.Lx830_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S19]
 xor esi, esi
 call rt_defer_open@PLT
.Lx830_2:
 test rax, rax
 je .Lx830_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx830_7]
 lea rdx, [rip + .Lx830_8]
 jmp rax
.Lx830_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx830_2
.Lx830_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx830_2
.Lx830_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain815_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx830_6]
 sub rsp, 8
 push rax
 jmp xchain815_n0_as
.Lx830_6:
 add rsp, 16
 jmp xchain815_n0_af
 xchain815_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain815_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain815_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain815_n0_af
 add r14d, 1
 jmp xchain815_n0_as
 xchain815_n9_β:
 sub r14d, 1
 jmp xchain815_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain815_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx833_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx833_10
.Lx833_9:
 xor eax, eax
.Lx833_10:
 test rax, rax
 jz .Lx833_0
 mov r8d, 0
 lea rcx, [rip + .Lx833_4]
 lea rdx, [rip + .Lx833_5]
 jmp rax
.Lx833_4:
 jmp xchain815_n3_α
.Lx833_5:
 jmp xchain815_n2_β
.Lx833_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx833_2:
 test rax, rax
 je .Lx833_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx833_7]
 lea rdx, [rip + .Lx833_8]
 jmp rax
.Lx833_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx833_2
.Lx833_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx833_2
.Lx833_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain815_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx833_6]
 sub rsp, 8
 push rax
 jmp xchain815_n3_α
.Lx833_6:
 add rsp, 16
 jmp xchain815_n2_β
 xchain815_n10_β:
 jmp qword ptr [rsp]
 xchain815_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx835_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx835_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx835_6]
 lea rdx, [rip + .Lx835_7]
 jmp rax
.Lx835_6:
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
 jmp .Lx835_2
.Lx835_7:
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
 jmp .Lx835_2
.Lx835_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx835_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx835_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx835_3]
 lea rdx, [rip + .Lx835_4]
 jmp rax
.Lx835_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx835_2
.Lx835_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx835_2
.Lx835_1:
 call rt_faildescr@PLT
.Lx835_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain815_n0_af
 jmp xchain815_n15_α
 xchain815_n11_β:
 jmp xchain815_n0_af
.Lx835_0:
 .quad .Lx835_0_s
.Lx835_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain815_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain815_n16_α
xchain815_n12_as:
 jmp xchain815_n6_as
 xchain815_n12_β:
 jmp xchain815_n17_β
xchain815_n12_af:
 jmp xchain815_n6_af
# IR_LIT_STRING
 xchain815_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx838_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain815_n18_α
 xchain815_n13_β:
 jmp xchain815_n20_af
.Lx838_0:
 .quad .Lx838_0_s
.Lx838_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain815_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054704], rax
 mov qword ptr [1879054712], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain815_n8_α
# IR_ASSIGN gva
 xchain815_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054672], rax
 mov qword ptr [1879054680], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain815_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain815_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx841_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx841_10
.Lx841_9:
 xor eax, eax
.Lx841_10:
 test rax, rax
 jz .Lx841_0
 mov r8d, 0
 lea rcx, [rip + .Lx841_4]
 lea rdx, [rip + .Lx841_5]
 jmp rax
.Lx841_4:
 jmp xchain815_n17_α
.Lx841_5:
 jmp xchain815_n12_af
.Lx841_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx841_2:
 test rax, rax
 je .Lx841_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx841_7]
 lea rdx, [rip + .Lx841_8]
 jmp rax
.Lx841_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx841_2
.Lx841_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx841_2
.Lx841_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain815_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx841_6]
 sub rsp, 8
 push rax
 jmp xchain815_n17_α
.Lx841_6:
 add rsp, 16
 jmp xchain815_n12_af
 xchain815_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain815_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain815_n19_α
xchain815_n17_as:
 jmp xchain815_n12_as
 xchain815_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain815_n19_β
 jmp xchain815_n20_β
xchain815_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain815_n20_α
 jmp xchain815_n16_β
 xchain815_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx845_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx845_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx845_6]
 lea rdx, [rip + .Lx845_7]
 jmp rax
.Lx845_6:
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
 jmp .Lx845_2
.Lx845_7:
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
 jmp .Lx845_2
.Lx845_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx845_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx845_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx845_3]
 lea rdx, [rip + .Lx845_4]
 jmp rax
.Lx845_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx845_2
.Lx845_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx845_2
.Lx845_1:
 call rt_faildescr@PLT
.Lx845_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain815_n20_af
 jmp xchain815_n21_α
 xchain815_n18_β:
 jmp xchain815_n20_af
.Lx845_0:
 .quad .Lx845_0_s
.Lx845_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain815_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx846_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx846_10
.Lx846_9:
 xor eax, eax
.Lx846_10:
 test rax, rax
 jz .Lx846_0
 mov r8d, 0
 lea rcx, [rip + .Lx846_4]
 lea rdx, [rip + .Lx846_5]
 jmp rax
.Lx846_4:
 jmp xchain815_n17_as
.Lx846_5:
 jmp xchain815_n17_af
.Lx846_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx846_2:
 test rax, rax
 je .Lx846_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx846_7]
 lea rdx, [rip + .Lx846_8]
 jmp rax
.Lx846_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx846_2
.Lx846_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx846_2
.Lx846_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain815_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx846_6]
 sub rsp, 8
 push rax
 jmp xchain815_n17_as
.Lx846_6:
 add rsp, 16
 jmp xchain815_n17_af
 xchain815_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain815_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain815_n22_α
xchain815_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain815_n13_α
 jmp xchain815_n17_as
 xchain815_n20_β:
 mov dword ptr [rbp + 468], 2
xchain815_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain815_n23_β
 cmp eax, 1
 je xchain815_n24_β
 jmp xchain815_n17_af
# IR_ASSIGN gva
 xchain815_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054688], rax
 mov qword ptr [1879054696], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain815_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain815_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain815_n25_α
 xchain815_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain815_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain815_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain815_n20_as
 xchain815_n23_β:
 sub r12, 24
 jmp xchain815_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain815_n24_α:
 mov rax, qword ptr [1879054688]
 mov rdx, qword ptr [1879054696]
 cmp eax, 3
 jne .Lx854_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx854_10
.Lx854_9:
 xor eax, eax
.Lx854_10:
 test rax, rax
 jz .Lx854_0
 mov r8d, 0
 lea rcx, [rip + .Lx854_4]
 lea rdx, [rip + .Lx854_5]
 jmp rax
.Lx854_4:
 jmp xchain815_n20_as
.Lx854_5:
 jmp xchain815_n20_af
.Lx854_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S20]
 xor esi, esi
 call rt_defer_open@PLT
.Lx854_2:
 test rax, rax
 je .Lx854_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx854_7]
 lea rdx, [rip + .Lx854_8]
 jmp rax
.Lx854_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx854_2
.Lx854_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx854_2
.Lx854_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain815_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx854_6]
 sub rsp, 8
 push rax
 jmp xchain815_n20_as
.Lx854_6:
 add rsp, 16
 jmp xchain815_n20_af
 xchain815_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain815_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx855_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx855_10
.Lx855_9:
 xor eax, eax
.Lx855_10:
 test rax, rax
 jz .Lx855_0
 mov r8d, 0
 lea rcx, [rip + .Lx855_4]
 lea rdx, [rip + .Lx855_5]
 jmp rax
.Lx855_4:
 jmp xchain815_n23_α
.Lx855_5:
 jmp xchain815_n22_β
.Lx855_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx855_2:
 test rax, rax
 je .Lx855_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx855_7]
 lea rdx, [rip + .Lx855_8]
 jmp rax
.Lx855_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx855_2
.Lx855_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx855_2
.Lx855_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain815_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx855_6]
 sub rsp, 8
 push rax
 jmp xchain815_n23_α
.Lx855_6:
 add rsp, 16
 jmp xchain815_n22_β
 xchain815_n25_β:
 jmp qword ptr [rsp]
proc_PAT$18_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$18_γ
proc_PAT$18_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$18_attempt
8:
jmp proc_PAT$18_ω
proc_PAT$18_res:
add rsp, 8
pop rbp
proc_PAT$18_β:
jmp qword ptr [rbp + 784]
proc_PAT$18_γ:
push rbp
lea rax, [rip + proc_PAT$18_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$18_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$19_α
proc_PAT$19_α:
#=======================================================================================================================
    .global proc_PAT$19_α
    .global proc_PAT$19_β
    .global proc_PAT$19_γ
    .global proc_PAT$19_ω
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
proc_PAT$19_attempt:
proc_PAT$19_α_body:
lea rax, [rip + xchain856_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain856_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain856_n1_α
 xchain856_n0_β:
 add rsp, 16
 jmp proc_PAT$19_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain856_n1_α:
 jmp xchain856_n3_α
xchain856_n1_as:
 jmp xchain856_n2_α
 xchain856_n1_β:
 jmp xchain856_n5_β
xchain856_n1_af:
 jmp xchain856_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain856_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$19_scanhit
 xchain856_n2_β:
 sub r12, 24
 jmp xchain856_n1_β
# IR_MATCH_LIT
 xchain856_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain856_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain856_n1_af
 add r14d, 1
 jmp xchain856_n4_α
 xchain856_n3_β:
 sub r14d, 1
 jmp xchain856_n1_af
# IR_MATCH_BAL
 xchain856_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain856_n4_β:
.Lx866_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx866_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx866_1
 add edx, 1
 jmp .Lx866_2
.Lx866_1:
 cmp esi, 41
 jne .Lx866_2
 sub edx, 1
 cmp edx, 0
 jl .Lx866_3
.Lx866_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx866_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain856_n5_α
.Lx866_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain856_n3_β
# IR_MATCH_LIT
 xchain856_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain856_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain856_n4_β
 add r14d, 1
 jmp xchain856_n1_as
 xchain856_n5_β:
 sub r14d, 1
 jmp xchain856_n4_β
proc_PAT$19_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$19_γ
proc_PAT$19_scanfail:
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
jmp proc_PAT$19_attempt
8:
jmp proc_PAT$19_ω
proc_PAT$19_res:
add rsp, 8
pop rbp
proc_PAT$19_β:
jmp qword ptr [rbp + 160]
proc_PAT$19_γ:
push rbp
lea rax, [rip + proc_PAT$19_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$19_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$20_α
proc_PAT$20_α:
#=======================================================================================================================
    .global proc_PAT$20_α
    .global proc_PAT$20_β
    .global proc_PAT$20_γ
    .global proc_PAT$20_ω
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
proc_PAT$20_attempt:
proc_PAT$20_α_body:
lea rax, [rip + xchain869_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain869_n0_α:
 mov rax, qword ptr [1879054720]
 mov rdx, qword ptr [1879054728]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain869_n1_α
# IR_COERCE_STRING
 xchain869_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain869_n2_α
# IR_MATCH_SPAN
 xchain869_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx874_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx874_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx874_1
 add dword ptr [rsp + 0], 1
 jmp .Lx874_0
.Lx874_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx874_240
 add rsp, 16
 jmp proc_PAT$20_scanfail
.Lx874_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$20_scanhit
 xchain869_n2_β:
 xchain869_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$20_scanfail
proc_PAT$20_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$20_γ
proc_PAT$20_scanfail:
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
jmp proc_PAT$20_attempt
8:
jmp proc_PAT$20_ω
proc_PAT$20_res:
add rsp, 8
pop rbp
proc_PAT$20_β:
jmp qword ptr [rbp + 112]
proc_PAT$20_γ:
push rbp
lea rax, [rip + proc_PAT$20_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$20_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$21_α
proc_PAT$21_α:
#=======================================================================================================================
    .global proc_PAT$21_α
    .global proc_PAT$21_β
    .global proc_PAT$21_γ
    .global proc_PAT$21_ω
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
proc_PAT$21_attempt:
proc_PAT$21_α_body:
lea rax, [rip + xchain875_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain875_n0_α:
 mov rax, qword ptr [1879054752]
 mov rdx, qword ptr [1879054760]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain875_n1_α
 xchain875_n0_β:
 jmp proc_PAT$21_scanfail
# IR_COERCE_STRING
 xchain875_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain875_n2_α
 xchain875_n1_β:
 jmp proc_PAT$21_scanfail
# IR_VAR
 xchain875_n2_α:
 mov rax, qword ptr [1879054736]
 mov rdx, qword ptr [1879054744]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain875_n3_α
 xchain875_n2_β:
 jmp proc_PAT$21_scanfail
# IR_COERCE_STRING
 xchain875_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain875_n4_α
 xchain875_n3_β:
 jmp proc_PAT$21_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain875_n4_α:
 jmp xchain875_n5_α
xchain875_n4_as:
 jmp proc_PAT$21_γ
 xchain875_n4_β:
 jmp xchain875_n6_β
xchain875_n4_af:
 jmp proc_PAT$21_ω
# IR_MATCH_NOTANY
 xchain875_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain875_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain875_n4_af
 add r14d, 1
 jmp xchain875_n6_α
 xchain875_n5_β:
 sub r14d, 1
 jmp xchain875_n4_af
# IR_MATCH_BREAK
 xchain875_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx886_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx886_240
 add rsp, 16
 jmp xchain875_n5_β
.Lx886_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx886_1
 add dword ptr [rsp + 0], 1
 jmp .Lx886_0
.Lx886_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain875_n4_as
 xchain875_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain875_n5_β
proc_PAT$21_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$21_γ
proc_PAT$21_scanfail:
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
jmp proc_PAT$21_attempt
8:
jmp proc_PAT$21_ω
proc_PAT$21_res:
add rsp, 8
pop rbp
proc_PAT$21_β:
jmp qword ptr [rbp + 224]
proc_PAT$21_γ:
push rbp
lea rax, [rip + proc_PAT$21_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$21_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$22_α
proc_PAT$22_α:
#=======================================================================================================================
    .global proc_PAT$22_α
    .global proc_PAT$22_β
    .global proc_PAT$22_γ
    .global proc_PAT$22_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$22_attempt:
proc_PAT$22_α_body:
lea rax, [rip + xchain887_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain887_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain887_n1_α
xchain887_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain887_n2_α
 cmp eax, 2
 je xchain887_n4_α
 cmp eax, 3
 je xchain887_n6_α
 cmp eax, 4
 je xchain887_n7_α
 cmp eax, 5
 je xchain887_n9_α
 jmp proc_PAT$22_γ
 xchain887_n0_β:
 mov dword ptr [rbp + 36], 6
xchain887_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain887_n1_β
 cmp eax, 1
 je xchain887_n3_β
 cmp eax, 2
 je xchain887_n5_β
 cmp eax, 3
 je xchain887_n6_β
 cmp eax, 4
 je xchain887_n8_β
 cmp eax, 5
 je xchain887_n9_β
 jmp proc_PAT$22_ω
# IR_MATCH_LIT
 xchain887_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain887_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain887_n0_af
 add r14d, 1
 jmp xchain887_n0_as
 xchain887_n1_β:
 sub r14d, 1
 jmp xchain887_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain887_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain887_n10_α
 xchain887_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain887_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain887_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain887_n0_as
 xchain887_n3_β:
 sub r12, 24
 jmp xchain887_n10_β
# IR_LIT_STRING
 xchain887_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx896_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain887_n11_α
 xchain887_n4_β:
 jmp xchain887_n0_af
.Lx896_0:
 .quad .Lx896_0_s
.Lx896_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain887_n5_α:
 mov rax, qword ptr [1879054768]
 mov rdx, qword ptr [1879054776]
 cmp eax, 3
 jne .Lx897_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx897_10
.Lx897_9:
 xor eax, eax
.Lx897_10:
 test rax, rax
 jz .Lx897_0
 mov r8d, 0
 lea rcx, [rip + .Lx897_4]
 lea rdx, [rip + .Lx897_5]
 jmp rax
.Lx897_4:
 jmp xchain887_n0_as
.Lx897_5:
 jmp xchain887_n0_af
.Lx897_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S21]
 xor esi, esi
 call rt_defer_open@PLT
.Lx897_2:
 test rax, rax
 je .Lx897_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx897_7]
 lea rdx, [rip + .Lx897_8]
 jmp rax
.Lx897_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx897_2
.Lx897_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx897_2
.Lx897_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain887_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx897_6]
 sub rsp, 8
 push rax
 jmp xchain887_n0_as
.Lx897_6:
 add rsp, 16
 jmp xchain887_n0_af
 xchain887_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain887_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain887_n0_as
 xchain887_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain887_n12_α
xchain887_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain887_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain887_n0_as
xchain887_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx899_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain887_n12_β
.Lx899_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain887_n0_af
 xchain887_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx901_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx901_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx901_6]
 lea rdx, [rip + .Lx901_7]
 jmp rax
.Lx901_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx901_2
.Lx901_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx901_2
.Lx901_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx901_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx901_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx901_3]
 lea rdx, [rip + .Lx901_4]
 jmp rax
.Lx901_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx901_2
.Lx901_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx901_2
.Lx901_1:
 call rt_faildescr@PLT
.Lx901_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain887_n0_af
 jmp xchain887_n14_α
 xchain887_n7_β:
 jmp xchain887_n0_af
.Lx901_0:
 .quad .Lx901_0_s
.Lx901_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain887_n8_α:
 mov rax, qword ptr [1879054800]
 mov rdx, qword ptr [1879054808]
 cmp eax, 3
 jne .Lx902_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx902_10
.Lx902_9:
 xor eax, eax
.Lx902_10:
 test rax, rax
 jz .Lx902_0
 mov r8d, 0
 lea rcx, [rip + .Lx902_4]
 lea rdx, [rip + .Lx902_5]
 jmp rax
.Lx902_4:
 jmp xchain887_n0_as
.Lx902_5:
 jmp xchain887_n0_af
.Lx902_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S22]
 xor esi, esi
 call rt_defer_open@PLT
.Lx902_2:
 test rax, rax
 je .Lx902_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx902_7]
 lea rdx, [rip + .Lx902_8]
 jmp rax
.Lx902_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx902_2
.Lx902_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx902_2
.Lx902_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain887_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx902_6]
 sub rsp, 8
 push rax
 jmp xchain887_n0_as
.Lx902_6:
 add rsp, 16
 jmp xchain887_n0_af
 xchain887_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain887_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain887_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain887_n0_af
 add r14d, 1
 jmp xchain887_n0_as
 xchain887_n9_β:
 sub r14d, 1
 jmp xchain887_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain887_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx905_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx905_10
.Lx905_9:
 xor eax, eax
.Lx905_10:
 test rax, rax
 jz .Lx905_0
 mov r8d, 0
 lea rcx, [rip + .Lx905_4]
 lea rdx, [rip + .Lx905_5]
 jmp rax
.Lx905_4:
 jmp xchain887_n3_α
.Lx905_5:
 jmp xchain887_n2_β
.Lx905_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx905_2:
 test rax, rax
 je .Lx905_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx905_7]
 lea rdx, [rip + .Lx905_8]
 jmp rax
.Lx905_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx905_2
.Lx905_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx905_2
.Lx905_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain887_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx905_6]
 sub rsp, 8
 push rax
 jmp xchain887_n3_α
.Lx905_6:
 add rsp, 16
 jmp xchain887_n2_β
 xchain887_n10_β:
 jmp qword ptr [rsp]
 xchain887_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx907_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx907_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx907_6]
 lea rdx, [rip + .Lx907_7]
 jmp rax
.Lx907_6:
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
 jmp .Lx907_2
.Lx907_7:
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
 jmp .Lx907_2
.Lx907_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx907_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx907_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx907_3]
 lea rdx, [rip + .Lx907_4]
 jmp rax
.Lx907_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx907_2
.Lx907_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx907_2
.Lx907_1:
 call rt_faildescr@PLT
.Lx907_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain887_n0_af
 jmp xchain887_n15_α
 xchain887_n11_β:
 jmp xchain887_n0_af
.Lx907_0:
 .quad .Lx907_0_s
.Lx907_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain887_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain887_n16_α
xchain887_n12_as:
 jmp xchain887_n6_as
 xchain887_n12_β:
 jmp xchain887_n17_β
xchain887_n12_af:
 jmp xchain887_n6_af
# IR_LIT_STRING
 xchain887_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx910_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain887_n18_α
 xchain887_n13_β:
 jmp xchain887_n20_af
.Lx910_0:
 .quad .Lx910_0_s
.Lx910_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain887_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054800], rax
 mov qword ptr [1879054808], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain887_n8_α
# IR_ASSIGN gva
 xchain887_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054768], rax
 mov qword ptr [1879054776], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain887_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain887_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx913_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx913_10
.Lx913_9:
 xor eax, eax
.Lx913_10:
 test rax, rax
 jz .Lx913_0
 mov r8d, 0
 lea rcx, [rip + .Lx913_4]
 lea rdx, [rip + .Lx913_5]
 jmp rax
.Lx913_4:
 jmp xchain887_n17_α
.Lx913_5:
 jmp xchain887_n12_af
.Lx913_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx913_2:
 test rax, rax
 je .Lx913_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx913_7]
 lea rdx, [rip + .Lx913_8]
 jmp rax
.Lx913_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx913_2
.Lx913_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx913_2
.Lx913_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain887_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx913_6]
 sub rsp, 8
 push rax
 jmp xchain887_n17_α
.Lx913_6:
 add rsp, 16
 jmp xchain887_n12_af
 xchain887_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain887_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain887_n19_α
xchain887_n17_as:
 jmp xchain887_n12_as
 xchain887_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain887_n19_β
 jmp xchain887_n20_β
xchain887_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain887_n20_α
 jmp xchain887_n16_β
 xchain887_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx917_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx917_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx917_6]
 lea rdx, [rip + .Lx917_7]
 jmp rax
.Lx917_6:
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
 jmp .Lx917_2
.Lx917_7:
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
 jmp .Lx917_2
.Lx917_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx917_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx917_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx917_3]
 lea rdx, [rip + .Lx917_4]
 jmp rax
.Lx917_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx917_2
.Lx917_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx917_2
.Lx917_1:
 call rt_faildescr@PLT
.Lx917_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain887_n20_af
 jmp xchain887_n21_α
 xchain887_n18_β:
 jmp xchain887_n20_af
.Lx917_0:
 .quad .Lx917_0_s
.Lx917_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain887_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx918_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx918_10
.Lx918_9:
 xor eax, eax
.Lx918_10:
 test rax, rax
 jz .Lx918_0
 mov r8d, 0
 lea rcx, [rip + .Lx918_4]
 lea rdx, [rip + .Lx918_5]
 jmp rax
.Lx918_4:
 jmp xchain887_n17_as
.Lx918_5:
 jmp xchain887_n17_af
.Lx918_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx918_2:
 test rax, rax
 je .Lx918_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx918_7]
 lea rdx, [rip + .Lx918_8]
 jmp rax
.Lx918_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx918_2
.Lx918_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx918_2
.Lx918_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain887_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx918_6]
 sub rsp, 8
 push rax
 jmp xchain887_n17_as
.Lx918_6:
 add rsp, 16
 jmp xchain887_n17_af
 xchain887_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain887_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain887_n22_α
xchain887_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain887_n13_α
 jmp xchain887_n17_as
 xchain887_n20_β:
 mov dword ptr [rbp + 468], 2
xchain887_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain887_n23_β
 cmp eax, 1
 je xchain887_n24_β
 jmp xchain887_n17_af
# IR_ASSIGN gva
 xchain887_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054784], rax
 mov qword ptr [1879054792], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain887_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain887_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain887_n25_α
 xchain887_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain887_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain887_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain887_n20_as
 xchain887_n23_β:
 sub r12, 24
 jmp xchain887_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain887_n24_α:
 mov rax, qword ptr [1879054784]
 mov rdx, qword ptr [1879054792]
 cmp eax, 3
 jne .Lx926_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx926_10
.Lx926_9:
 xor eax, eax
.Lx926_10:
 test rax, rax
 jz .Lx926_0
 mov r8d, 0
 lea rcx, [rip + .Lx926_4]
 lea rdx, [rip + .Lx926_5]
 jmp rax
.Lx926_4:
 jmp xchain887_n20_as
.Lx926_5:
 jmp xchain887_n20_af
.Lx926_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S23]
 xor esi, esi
 call rt_defer_open@PLT
.Lx926_2:
 test rax, rax
 je .Lx926_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx926_7]
 lea rdx, [rip + .Lx926_8]
 jmp rax
.Lx926_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx926_2
.Lx926_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx926_2
.Lx926_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain887_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx926_6]
 sub rsp, 8
 push rax
 jmp xchain887_n20_as
.Lx926_6:
 add rsp, 16
 jmp xchain887_n20_af
 xchain887_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain887_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx927_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx927_10
.Lx927_9:
 xor eax, eax
.Lx927_10:
 test rax, rax
 jz .Lx927_0
 mov r8d, 0
 lea rcx, [rip + .Lx927_4]
 lea rdx, [rip + .Lx927_5]
 jmp rax
.Lx927_4:
 jmp xchain887_n23_α
.Lx927_5:
 jmp xchain887_n22_β
.Lx927_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx927_2:
 test rax, rax
 je .Lx927_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx927_7]
 lea rdx, [rip + .Lx927_8]
 jmp rax
.Lx927_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx927_2
.Lx927_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx927_2
.Lx927_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain887_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx927_6]
 sub rsp, 8
 push rax
 jmp xchain887_n23_α
.Lx927_6:
 add rsp, 16
 jmp xchain887_n22_β
 xchain887_n25_β:
 jmp qword ptr [rsp]
proc_PAT$22_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$22_γ
proc_PAT$22_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$22_attempt
8:
jmp proc_PAT$22_ω
proc_PAT$22_res:
add rsp, 8
pop rbp
proc_PAT$22_β:
jmp qword ptr [rbp + 784]
proc_PAT$22_γ:
push rbp
lea rax, [rip + proc_PAT$22_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$22_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
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
lea rax, [rip + xchain928_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain928_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain928_n1_α
 xchain928_n0_β:
 add rsp, 16
 jmp proc_PAT$23_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain928_n1_α:
 jmp xchain928_n3_α
xchain928_n1_as:
 jmp xchain928_n2_α
 xchain928_n1_β:
 jmp xchain928_n5_β
xchain928_n1_af:
 jmp xchain928_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain928_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$23_scanhit
 xchain928_n2_β:
 sub r12, 24
 jmp xchain928_n1_β
# IR_MATCH_LIT
 xchain928_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain928_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain928_n1_af
 add r14d, 1
 jmp xchain928_n4_α
 xchain928_n3_β:
 sub r14d, 1
 jmp xchain928_n1_af
# IR_MATCH_BAL
 xchain928_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain928_n4_β:
.Lx938_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx938_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx938_1
 add edx, 1
 jmp .Lx938_2
.Lx938_1:
 cmp esi, 41
 jne .Lx938_2
 sub edx, 1
 cmp edx, 0
 jl .Lx938_3
.Lx938_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx938_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain928_n5_α
.Lx938_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain928_n3_β
# IR_MATCH_LIT
 xchain928_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain928_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain928_n4_β
 add r14d, 1
 jmp xchain928_n1_as
 xchain928_n5_β:
 sub r14d, 1
 jmp xchain928_n4_β
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
lea rax, [rip + xchain941_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain941_n0_α:
 mov rax, qword ptr [1879054816]
 mov rdx, qword ptr [1879054824]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain941_n1_α
# IR_COERCE_STRING
 xchain941_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain941_n2_α
# IR_MATCH_SPAN
 xchain941_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx946_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx946_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx946_1
 add dword ptr [rsp + 0], 1
 jmp .Lx946_0
.Lx946_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx946_240
 add rsp, 16
 jmp proc_PAT$24_scanfail
.Lx946_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$24_scanhit
 xchain941_n2_β:
 xchain941_n2_β:
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
lea rax, [rip + xchain947_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain947_n0_α:
 mov rax, qword ptr [1879054848]
 mov rdx, qword ptr [1879054856]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain947_n1_α
 xchain947_n0_β:
 jmp proc_PAT$25_scanfail
# IR_COERCE_STRING
 xchain947_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain947_n2_α
 xchain947_n1_β:
 jmp proc_PAT$25_scanfail
# IR_VAR
 xchain947_n2_α:
 mov rax, qword ptr [1879054832]
 mov rdx, qword ptr [1879054840]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain947_n3_α
 xchain947_n2_β:
 jmp proc_PAT$25_scanfail
# IR_COERCE_STRING
 xchain947_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain947_n4_α
 xchain947_n3_β:
 jmp proc_PAT$25_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain947_n4_α:
 jmp xchain947_n5_α
xchain947_n4_as:
 jmp proc_PAT$25_γ
 xchain947_n4_β:
 jmp xchain947_n6_β
xchain947_n4_af:
 jmp proc_PAT$25_ω
# IR_MATCH_NOTANY
 xchain947_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain947_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain947_n4_af
 add r14d, 1
 jmp xchain947_n6_α
 xchain947_n5_β:
 sub r14d, 1
 jmp xchain947_n4_af
# IR_MATCH_BREAK
 xchain947_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx958_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx958_240
 add rsp, 16
 jmp xchain947_n5_β
.Lx958_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx958_1
 add dword ptr [rsp + 0], 1
 jmp .Lx958_0
.Lx958_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain947_n4_as
 xchain947_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain947_n5_β
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
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$26_attempt:
proc_PAT$26_α_body:
lea rax, [rip + xchain959_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain959_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain959_n1_α
xchain959_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain959_n2_α
 cmp eax, 2
 je xchain959_n4_α
 cmp eax, 3
 je xchain959_n6_α
 cmp eax, 4
 je xchain959_n7_α
 cmp eax, 5
 je xchain959_n9_α
 jmp proc_PAT$26_γ
 xchain959_n0_β:
 mov dword ptr [rbp + 36], 6
xchain959_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain959_n1_β
 cmp eax, 1
 je xchain959_n3_β
 cmp eax, 2
 je xchain959_n5_β
 cmp eax, 3
 je xchain959_n6_β
 cmp eax, 4
 je xchain959_n8_β
 cmp eax, 5
 je xchain959_n9_β
 jmp proc_PAT$26_ω
# IR_MATCH_LIT
 xchain959_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain959_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain959_n0_af
 add r14d, 1
 jmp xchain959_n0_as
 xchain959_n1_β:
 sub r14d, 1
 jmp xchain959_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain959_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain959_n10_α
 xchain959_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain959_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain959_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain959_n0_as
 xchain959_n3_β:
 sub r12, 24
 jmp xchain959_n10_β
# IR_LIT_STRING
 xchain959_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx968_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain959_n11_α
 xchain959_n4_β:
 jmp xchain959_n0_af
.Lx968_0:
 .quad .Lx968_0_s
.Lx968_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain959_n5_α:
 mov rax, qword ptr [1879054864]
 mov rdx, qword ptr [1879054872]
 cmp eax, 3
 jne .Lx969_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx969_10
.Lx969_9:
 xor eax, eax
.Lx969_10:
 test rax, rax
 jz .Lx969_0
 mov r8d, 0
 lea rcx, [rip + .Lx969_4]
 lea rdx, [rip + .Lx969_5]
 jmp rax
.Lx969_4:
 jmp xchain959_n0_as
.Lx969_5:
 jmp xchain959_n0_af
.Lx969_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S24]
 xor esi, esi
 call rt_defer_open@PLT
.Lx969_2:
 test rax, rax
 je .Lx969_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx969_7]
 lea rdx, [rip + .Lx969_8]
 jmp rax
.Lx969_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx969_2
.Lx969_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx969_2
.Lx969_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain959_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx969_6]
 sub rsp, 8
 push rax
 jmp xchain959_n0_as
.Lx969_6:
 add rsp, 16
 jmp xchain959_n0_af
 xchain959_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain959_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain959_n0_as
 xchain959_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain959_n12_α
xchain959_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain959_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain959_n0_as
xchain959_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx971_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain959_n12_β
.Lx971_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain959_n0_af
 xchain959_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx973_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx973_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx973_6]
 lea rdx, [rip + .Lx973_7]
 jmp rax
.Lx973_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx973_2
.Lx973_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx973_2
.Lx973_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx973_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx973_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx973_3]
 lea rdx, [rip + .Lx973_4]
 jmp rax
.Lx973_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx973_2
.Lx973_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx973_2
.Lx973_1:
 call rt_faildescr@PLT
.Lx973_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain959_n0_af
 jmp xchain959_n14_α
 xchain959_n7_β:
 jmp xchain959_n0_af
.Lx973_0:
 .quad .Lx973_0_s
.Lx973_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain959_n8_α:
 mov rax, qword ptr [1879054896]
 mov rdx, qword ptr [1879054904]
 cmp eax, 3
 jne .Lx974_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx974_10
.Lx974_9:
 xor eax, eax
.Lx974_10:
 test rax, rax
 jz .Lx974_0
 mov r8d, 0
 lea rcx, [rip + .Lx974_4]
 lea rdx, [rip + .Lx974_5]
 jmp rax
.Lx974_4:
 jmp xchain959_n0_as
.Lx974_5:
 jmp xchain959_n0_af
.Lx974_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S25]
 xor esi, esi
 call rt_defer_open@PLT
.Lx974_2:
 test rax, rax
 je .Lx974_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx974_7]
 lea rdx, [rip + .Lx974_8]
 jmp rax
.Lx974_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx974_2
.Lx974_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx974_2
.Lx974_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain959_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx974_6]
 sub rsp, 8
 push rax
 jmp xchain959_n0_as
.Lx974_6:
 add rsp, 16
 jmp xchain959_n0_af
 xchain959_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain959_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain959_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain959_n0_af
 add r14d, 1
 jmp xchain959_n0_as
 xchain959_n9_β:
 sub r14d, 1
 jmp xchain959_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain959_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx977_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx977_10
.Lx977_9:
 xor eax, eax
.Lx977_10:
 test rax, rax
 jz .Lx977_0
 mov r8d, 0
 lea rcx, [rip + .Lx977_4]
 lea rdx, [rip + .Lx977_5]
 jmp rax
.Lx977_4:
 jmp xchain959_n3_α
.Lx977_5:
 jmp xchain959_n2_β
.Lx977_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx977_2:
 test rax, rax
 je .Lx977_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx977_7]
 lea rdx, [rip + .Lx977_8]
 jmp rax
.Lx977_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx977_2
.Lx977_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx977_2
.Lx977_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain959_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx977_6]
 sub rsp, 8
 push rax
 jmp xchain959_n3_α
.Lx977_6:
 add rsp, 16
 jmp xchain959_n2_β
 xchain959_n10_β:
 jmp qword ptr [rsp]
 xchain959_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx979_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx979_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx979_6]
 lea rdx, [rip + .Lx979_7]
 jmp rax
.Lx979_6:
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
 jmp .Lx979_2
.Lx979_7:
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
 jmp .Lx979_2
.Lx979_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx979_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx979_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx979_3]
 lea rdx, [rip + .Lx979_4]
 jmp rax
.Lx979_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx979_2
.Lx979_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx979_2
.Lx979_1:
 call rt_faildescr@PLT
.Lx979_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain959_n0_af
 jmp xchain959_n15_α
 xchain959_n11_β:
 jmp xchain959_n0_af
.Lx979_0:
 .quad .Lx979_0_s
.Lx979_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain959_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain959_n16_α
xchain959_n12_as:
 jmp xchain959_n6_as
 xchain959_n12_β:
 jmp xchain959_n17_β
xchain959_n12_af:
 jmp xchain959_n6_af
# IR_LIT_STRING
 xchain959_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx982_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain959_n18_α
 xchain959_n13_β:
 jmp xchain959_n20_af
.Lx982_0:
 .quad .Lx982_0_s
.Lx982_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain959_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054896], rax
 mov qword ptr [1879054904], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain959_n8_α
# IR_ASSIGN gva
 xchain959_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054864], rax
 mov qword ptr [1879054872], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain959_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain959_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx985_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx985_10
.Lx985_9:
 xor eax, eax
.Lx985_10:
 test rax, rax
 jz .Lx985_0
 mov r8d, 0
 lea rcx, [rip + .Lx985_4]
 lea rdx, [rip + .Lx985_5]
 jmp rax
.Lx985_4:
 jmp xchain959_n17_α
.Lx985_5:
 jmp xchain959_n12_af
.Lx985_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx985_2:
 test rax, rax
 je .Lx985_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx985_7]
 lea rdx, [rip + .Lx985_8]
 jmp rax
.Lx985_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx985_2
.Lx985_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx985_2
.Lx985_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain959_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx985_6]
 sub rsp, 8
 push rax
 jmp xchain959_n17_α
.Lx985_6:
 add rsp, 16
 jmp xchain959_n12_af
 xchain959_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain959_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain959_n19_α
xchain959_n17_as:
 jmp xchain959_n12_as
 xchain959_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain959_n19_β
 jmp xchain959_n20_β
xchain959_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain959_n20_α
 jmp xchain959_n16_β
 xchain959_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx989_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx989_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx989_6]
 lea rdx, [rip + .Lx989_7]
 jmp rax
.Lx989_6:
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
 jmp .Lx989_2
.Lx989_7:
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
 jmp .Lx989_2
.Lx989_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx989_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx989_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx989_3]
 lea rdx, [rip + .Lx989_4]
 jmp rax
.Lx989_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx989_2
.Lx989_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx989_2
.Lx989_1:
 call rt_faildescr@PLT
.Lx989_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain959_n20_af
 jmp xchain959_n21_α
 xchain959_n18_β:
 jmp xchain959_n20_af
.Lx989_0:
 .quad .Lx989_0_s
.Lx989_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain959_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx990_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx990_10
.Lx990_9:
 xor eax, eax
.Lx990_10:
 test rax, rax
 jz .Lx990_0
 mov r8d, 0
 lea rcx, [rip + .Lx990_4]
 lea rdx, [rip + .Lx990_5]
 jmp rax
.Lx990_4:
 jmp xchain959_n17_as
.Lx990_5:
 jmp xchain959_n17_af
.Lx990_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx990_2:
 test rax, rax
 je .Lx990_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx990_7]
 lea rdx, [rip + .Lx990_8]
 jmp rax
.Lx990_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx990_2
.Lx990_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx990_2
.Lx990_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain959_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx990_6]
 sub rsp, 8
 push rax
 jmp xchain959_n17_as
.Lx990_6:
 add rsp, 16
 jmp xchain959_n17_af
 xchain959_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain959_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain959_n22_α
xchain959_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain959_n13_α
 jmp xchain959_n17_as
 xchain959_n20_β:
 mov dword ptr [rbp + 468], 2
xchain959_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain959_n23_β
 cmp eax, 1
 je xchain959_n24_β
 jmp xchain959_n17_af
# IR_ASSIGN gva
 xchain959_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054880], rax
 mov qword ptr [1879054888], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain959_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain959_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain959_n25_α
 xchain959_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain959_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain959_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain959_n20_as
 xchain959_n23_β:
 sub r12, 24
 jmp xchain959_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain959_n24_α:
 mov rax, qword ptr [1879054880]
 mov rdx, qword ptr [1879054888]
 cmp eax, 3
 jne .Lx998_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx998_10
.Lx998_9:
 xor eax, eax
.Lx998_10:
 test rax, rax
 jz .Lx998_0
 mov r8d, 0
 lea rcx, [rip + .Lx998_4]
 lea rdx, [rip + .Lx998_5]
 jmp rax
.Lx998_4:
 jmp xchain959_n20_as
.Lx998_5:
 jmp xchain959_n20_af
.Lx998_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S26]
 xor esi, esi
 call rt_defer_open@PLT
.Lx998_2:
 test rax, rax
 je .Lx998_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx998_7]
 lea rdx, [rip + .Lx998_8]
 jmp rax
.Lx998_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx998_2
.Lx998_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx998_2
.Lx998_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain959_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx998_6]
 sub rsp, 8
 push rax
 jmp xchain959_n20_as
.Lx998_6:
 add rsp, 16
 jmp xchain959_n20_af
 xchain959_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain959_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx999_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx999_10
.Lx999_9:
 xor eax, eax
.Lx999_10:
 test rax, rax
 jz .Lx999_0
 mov r8d, 0
 lea rcx, [rip + .Lx999_4]
 lea rdx, [rip + .Lx999_5]
 jmp rax
.Lx999_4:
 jmp xchain959_n23_α
.Lx999_5:
 jmp xchain959_n22_β
.Lx999_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx999_2:
 test rax, rax
 je .Lx999_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx999_7]
 lea rdx, [rip + .Lx999_8]
 jmp rax
.Lx999_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx999_2
.Lx999_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx999_2
.Lx999_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain959_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx999_6]
 sub rsp, 8
 push rax
 jmp xchain959_n23_α
.Lx999_6:
 add rsp, 16
 jmp xchain959_n22_β
 xchain959_n25_β:
 jmp qword ptr [rsp]
proc_PAT$26_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$26_γ
proc_PAT$26_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$26_attempt
8:
jmp proc_PAT$26_ω
proc_PAT$26_res:
add rsp, 8
pop rbp
proc_PAT$26_β:
jmp qword ptr [rbp + 784]
proc_PAT$26_γ:
push rbp
lea rax, [rip + proc_PAT$26_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$26_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$27_α
proc_PAT$27_α:
#=======================================================================================================================
    .global proc_PAT$27_α
    .global proc_PAT$27_β
    .global proc_PAT$27_γ
    .global proc_PAT$27_ω
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
proc_PAT$27_attempt:
proc_PAT$27_α_body:
lea rax, [rip + xchain1000_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1000_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1000_n1_α
 xchain1000_n0_β:
 add rsp, 16
 jmp proc_PAT$27_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1000_n1_α:
 jmp xchain1000_n3_α
xchain1000_n1_as:
 jmp xchain1000_n2_α
 xchain1000_n1_β:
 jmp xchain1000_n5_β
xchain1000_n1_af:
 jmp xchain1000_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1000_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$27_scanhit
 xchain1000_n2_β:
 sub r12, 24
 jmp xchain1000_n1_β
# IR_MATCH_LIT
 xchain1000_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1000_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1000_n1_af
 add r14d, 1
 jmp xchain1000_n4_α
 xchain1000_n3_β:
 sub r14d, 1
 jmp xchain1000_n1_af
# IR_MATCH_BAL
 xchain1000_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1000_n4_β:
.Lx1010_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1010_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1010_1
 add edx, 1
 jmp .Lx1010_2
.Lx1010_1:
 cmp esi, 41
 jne .Lx1010_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1010_3
.Lx1010_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1010_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1000_n5_α
.Lx1010_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1000_n3_β
# IR_MATCH_LIT
 xchain1000_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1000_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1000_n4_β
 add r14d, 1
 jmp xchain1000_n1_as
 xchain1000_n5_β:
 sub r14d, 1
 jmp xchain1000_n4_β
proc_PAT$27_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$27_γ
proc_PAT$27_scanfail:
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
jmp proc_PAT$27_attempt
8:
jmp proc_PAT$27_ω
proc_PAT$27_res:
add rsp, 8
pop rbp
proc_PAT$27_β:
jmp qword ptr [rbp + 160]
proc_PAT$27_γ:
push rbp
lea rax, [rip + proc_PAT$27_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$27_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$28_α
proc_PAT$28_α:
#=======================================================================================================================
    .global proc_PAT$28_α
    .global proc_PAT$28_β
    .global proc_PAT$28_γ
    .global proc_PAT$28_ω
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
proc_PAT$28_attempt:
proc_PAT$28_α_body:
lea rax, [rip + xchain1013_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1013_n0_α:
 mov rax, qword ptr [1879054912]
 mov rdx, qword ptr [1879054920]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1013_n1_α
# IR_COERCE_STRING
 xchain1013_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1013_n2_α
# IR_MATCH_SPAN
 xchain1013_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1018_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1018_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1018_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1018_0
.Lx1018_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1018_240
 add rsp, 16
 jmp proc_PAT$28_scanfail
.Lx1018_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$28_scanhit
 xchain1013_n2_β:
 xchain1013_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$28_scanfail
proc_PAT$28_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$28_γ
proc_PAT$28_scanfail:
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
jmp proc_PAT$28_attempt
8:
jmp proc_PAT$28_ω
proc_PAT$28_res:
add rsp, 8
pop rbp
proc_PAT$28_β:
jmp qword ptr [rbp + 112]
proc_PAT$28_γ:
push rbp
lea rax, [rip + proc_PAT$28_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$28_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$29_α
proc_PAT$29_α:
#=======================================================================================================================
    .global proc_PAT$29_α
    .global proc_PAT$29_β
    .global proc_PAT$29_γ
    .global proc_PAT$29_ω
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
proc_PAT$29_attempt:
proc_PAT$29_α_body:
lea rax, [rip + xchain1019_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1019_n0_α:
 mov rax, qword ptr [1879054944]
 mov rdx, qword ptr [1879054952]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1019_n1_α
 xchain1019_n0_β:
 jmp proc_PAT$29_scanfail
# IR_COERCE_STRING
 xchain1019_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1019_n2_α
 xchain1019_n1_β:
 jmp proc_PAT$29_scanfail
# IR_VAR
 xchain1019_n2_α:
 mov rax, qword ptr [1879054928]
 mov rdx, qword ptr [1879054936]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1019_n3_α
 xchain1019_n2_β:
 jmp proc_PAT$29_scanfail
# IR_COERCE_STRING
 xchain1019_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1019_n4_α
 xchain1019_n3_β:
 jmp proc_PAT$29_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1019_n4_α:
 jmp xchain1019_n5_α
xchain1019_n4_as:
 jmp proc_PAT$29_γ
 xchain1019_n4_β:
 jmp xchain1019_n6_β
xchain1019_n4_af:
 jmp proc_PAT$29_ω
# IR_MATCH_NOTANY
 xchain1019_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1019_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1019_n4_af
 add r14d, 1
 jmp xchain1019_n6_α
 xchain1019_n5_β:
 sub r14d, 1
 jmp xchain1019_n4_af
# IR_MATCH_BREAK
 xchain1019_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1030_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1030_240
 add rsp, 16
 jmp xchain1019_n5_β
.Lx1030_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1030_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1030_0
.Lx1030_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1019_n4_as
 xchain1019_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1019_n5_β
proc_PAT$29_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$29_γ
proc_PAT$29_scanfail:
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
jmp proc_PAT$29_attempt
8:
jmp proc_PAT$29_ω
proc_PAT$29_res:
add rsp, 8
pop rbp
proc_PAT$29_β:
jmp qword ptr [rbp + 224]
proc_PAT$29_γ:
push rbp
lea rax, [rip + proc_PAT$29_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$29_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$30_α
proc_PAT$30_α:
#=======================================================================================================================
    .global proc_PAT$30_α
    .global proc_PAT$30_β
    .global proc_PAT$30_γ
    .global proc_PAT$30_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$30_attempt:
proc_PAT$30_α_body:
lea rax, [rip + xchain1031_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1031_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1031_n1_α
xchain1031_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1031_n2_α
 cmp eax, 2
 je xchain1031_n4_α
 cmp eax, 3
 je xchain1031_n6_α
 cmp eax, 4
 je xchain1031_n7_α
 cmp eax, 5
 je xchain1031_n9_α
 jmp proc_PAT$30_γ
 xchain1031_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1031_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1031_n1_β
 cmp eax, 1
 je xchain1031_n3_β
 cmp eax, 2
 je xchain1031_n5_β
 cmp eax, 3
 je xchain1031_n6_β
 cmp eax, 4
 je xchain1031_n8_β
 cmp eax, 5
 je xchain1031_n9_β
 jmp proc_PAT$30_ω
# IR_MATCH_LIT
 xchain1031_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1031_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1031_n0_af
 add r14d, 1
 jmp xchain1031_n0_as
 xchain1031_n1_β:
 sub r14d, 1
 jmp xchain1031_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1031_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1031_n10_α
 xchain1031_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1031_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1031_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1031_n0_as
 xchain1031_n3_β:
 sub r12, 24
 jmp xchain1031_n10_β
# IR_LIT_STRING
 xchain1031_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1040_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1031_n11_α
 xchain1031_n4_β:
 jmp xchain1031_n0_af
.Lx1040_0:
 .quad .Lx1040_0_s
.Lx1040_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1031_n5_α:
 mov rax, qword ptr [1879054960]
 mov rdx, qword ptr [1879054968]
 cmp eax, 3
 jne .Lx1041_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1041_10
.Lx1041_9:
 xor eax, eax
.Lx1041_10:
 test rax, rax
 jz .Lx1041_0
 mov r8d, 0
 lea rcx, [rip + .Lx1041_4]
 lea rdx, [rip + .Lx1041_5]
 jmp rax
.Lx1041_4:
 jmp xchain1031_n0_as
.Lx1041_5:
 jmp xchain1031_n0_af
.Lx1041_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S27]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1041_2:
 test rax, rax
 je .Lx1041_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1041_7]
 lea rdx, [rip + .Lx1041_8]
 jmp rax
.Lx1041_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1041_2
.Lx1041_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1041_2
.Lx1041_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1031_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1041_6]
 sub rsp, 8
 push rax
 jmp xchain1031_n0_as
.Lx1041_6:
 add rsp, 16
 jmp xchain1031_n0_af
 xchain1031_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1031_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1031_n0_as
 xchain1031_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1031_n12_α
xchain1031_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1031_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1031_n0_as
xchain1031_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1043_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1031_n12_β
.Lx1043_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1031_n0_af
 xchain1031_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1045_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1045_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1045_6]
 lea rdx, [rip + .Lx1045_7]
 jmp rax
.Lx1045_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1045_2
.Lx1045_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1045_2
.Lx1045_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1045_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1045_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1045_3]
 lea rdx, [rip + .Lx1045_4]
 jmp rax
.Lx1045_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1045_2
.Lx1045_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1045_2
.Lx1045_1:
 call rt_faildescr@PLT
.Lx1045_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1031_n0_af
 jmp xchain1031_n14_α
 xchain1031_n7_β:
 jmp xchain1031_n0_af
.Lx1045_0:
 .quad .Lx1045_0_s
.Lx1045_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1031_n8_α:
 mov rax, qword ptr [1879054992]
 mov rdx, qword ptr [1879055000]
 cmp eax, 3
 jne .Lx1046_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1046_10
.Lx1046_9:
 xor eax, eax
.Lx1046_10:
 test rax, rax
 jz .Lx1046_0
 mov r8d, 0
 lea rcx, [rip + .Lx1046_4]
 lea rdx, [rip + .Lx1046_5]
 jmp rax
.Lx1046_4:
 jmp xchain1031_n0_as
.Lx1046_5:
 jmp xchain1031_n0_af
.Lx1046_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S28]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1046_2:
 test rax, rax
 je .Lx1046_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1046_7]
 lea rdx, [rip + .Lx1046_8]
 jmp rax
.Lx1046_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1046_2
.Lx1046_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1046_2
.Lx1046_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1031_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1046_6]
 sub rsp, 8
 push rax
 jmp xchain1031_n0_as
.Lx1046_6:
 add rsp, 16
 jmp xchain1031_n0_af
 xchain1031_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1031_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1031_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1031_n0_af
 add r14d, 1
 jmp xchain1031_n0_as
 xchain1031_n9_β:
 sub r14d, 1
 jmp xchain1031_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1031_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1049_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1049_10
.Lx1049_9:
 xor eax, eax
.Lx1049_10:
 test rax, rax
 jz .Lx1049_0
 mov r8d, 0
 lea rcx, [rip + .Lx1049_4]
 lea rdx, [rip + .Lx1049_5]
 jmp rax
.Lx1049_4:
 jmp xchain1031_n3_α
.Lx1049_5:
 jmp xchain1031_n2_β
.Lx1049_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1049_2:
 test rax, rax
 je .Lx1049_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1049_7]
 lea rdx, [rip + .Lx1049_8]
 jmp rax
.Lx1049_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1049_2
.Lx1049_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1049_2
.Lx1049_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1031_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1049_6]
 sub rsp, 8
 push rax
 jmp xchain1031_n3_α
.Lx1049_6:
 add rsp, 16
 jmp xchain1031_n2_β
 xchain1031_n10_β:
 jmp qword ptr [rsp]
 xchain1031_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1051_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1051_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1051_6]
 lea rdx, [rip + .Lx1051_7]
 jmp rax
.Lx1051_6:
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
 jmp .Lx1051_2
.Lx1051_7:
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
 jmp .Lx1051_2
.Lx1051_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1051_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1051_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1051_3]
 lea rdx, [rip + .Lx1051_4]
 jmp rax
.Lx1051_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1051_2
.Lx1051_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1051_2
.Lx1051_1:
 call rt_faildescr@PLT
.Lx1051_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1031_n0_af
 jmp xchain1031_n15_α
 xchain1031_n11_β:
 jmp xchain1031_n0_af
.Lx1051_0:
 .quad .Lx1051_0_s
.Lx1051_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1031_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1031_n16_α
xchain1031_n12_as:
 jmp xchain1031_n6_as
 xchain1031_n12_β:
 jmp xchain1031_n17_β
xchain1031_n12_af:
 jmp xchain1031_n6_af
# IR_LIT_STRING
 xchain1031_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1054_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1031_n18_α
 xchain1031_n13_β:
 jmp xchain1031_n20_af
.Lx1054_0:
 .quad .Lx1054_0_s
.Lx1054_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1031_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054992], rax
 mov qword ptr [1879055000], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1031_n8_α
# IR_ASSIGN gva
 xchain1031_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054960], rax
 mov qword ptr [1879054968], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1031_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1031_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1057_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1057_10
.Lx1057_9:
 xor eax, eax
.Lx1057_10:
 test rax, rax
 jz .Lx1057_0
 mov r8d, 0
 lea rcx, [rip + .Lx1057_4]
 lea rdx, [rip + .Lx1057_5]
 jmp rax
.Lx1057_4:
 jmp xchain1031_n17_α
.Lx1057_5:
 jmp xchain1031_n12_af
.Lx1057_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1057_2:
 test rax, rax
 je .Lx1057_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1057_7]
 lea rdx, [rip + .Lx1057_8]
 jmp rax
.Lx1057_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1057_2
.Lx1057_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1057_2
.Lx1057_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1031_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1057_6]
 sub rsp, 8
 push rax
 jmp xchain1031_n17_α
.Lx1057_6:
 add rsp, 16
 jmp xchain1031_n12_af
 xchain1031_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1031_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1031_n19_α
xchain1031_n17_as:
 jmp xchain1031_n12_as
 xchain1031_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1031_n19_β
 jmp xchain1031_n20_β
xchain1031_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1031_n20_α
 jmp xchain1031_n16_β
 xchain1031_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1061_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1061_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1061_6]
 lea rdx, [rip + .Lx1061_7]
 jmp rax
.Lx1061_6:
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
 jmp .Lx1061_2
.Lx1061_7:
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
 jmp .Lx1061_2
.Lx1061_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1061_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1061_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1061_3]
 lea rdx, [rip + .Lx1061_4]
 jmp rax
.Lx1061_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1061_2
.Lx1061_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1061_2
.Lx1061_1:
 call rt_faildescr@PLT
.Lx1061_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1031_n20_af
 jmp xchain1031_n21_α
 xchain1031_n18_β:
 jmp xchain1031_n20_af
.Lx1061_0:
 .quad .Lx1061_0_s
.Lx1061_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1031_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1062_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1062_10
.Lx1062_9:
 xor eax, eax
.Lx1062_10:
 test rax, rax
 jz .Lx1062_0
 mov r8d, 0
 lea rcx, [rip + .Lx1062_4]
 lea rdx, [rip + .Lx1062_5]
 jmp rax
.Lx1062_4:
 jmp xchain1031_n17_as
.Lx1062_5:
 jmp xchain1031_n17_af
.Lx1062_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1062_2:
 test rax, rax
 je .Lx1062_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1062_7]
 lea rdx, [rip + .Lx1062_8]
 jmp rax
.Lx1062_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1062_2
.Lx1062_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1062_2
.Lx1062_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1031_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1062_6]
 sub rsp, 8
 push rax
 jmp xchain1031_n17_as
.Lx1062_6:
 add rsp, 16
 jmp xchain1031_n17_af
 xchain1031_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1031_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1031_n22_α
xchain1031_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1031_n13_α
 jmp xchain1031_n17_as
 xchain1031_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1031_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1031_n23_β
 cmp eax, 1
 je xchain1031_n24_β
 jmp xchain1031_n17_af
# IR_ASSIGN gva
 xchain1031_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054976], rax
 mov qword ptr [1879054984], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1031_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1031_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1031_n25_α
 xchain1031_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1031_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1031_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1031_n20_as
 xchain1031_n23_β:
 sub r12, 24
 jmp xchain1031_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1031_n24_α:
 mov rax, qword ptr [1879054976]
 mov rdx, qword ptr [1879054984]
 cmp eax, 3
 jne .Lx1070_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1070_10
.Lx1070_9:
 xor eax, eax
.Lx1070_10:
 test rax, rax
 jz .Lx1070_0
 mov r8d, 0
 lea rcx, [rip + .Lx1070_4]
 lea rdx, [rip + .Lx1070_5]
 jmp rax
.Lx1070_4:
 jmp xchain1031_n20_as
.Lx1070_5:
 jmp xchain1031_n20_af
.Lx1070_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S29]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1070_2:
 test rax, rax
 je .Lx1070_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1070_7]
 lea rdx, [rip + .Lx1070_8]
 jmp rax
.Lx1070_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1070_2
.Lx1070_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1070_2
.Lx1070_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1031_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1070_6]
 sub rsp, 8
 push rax
 jmp xchain1031_n20_as
.Lx1070_6:
 add rsp, 16
 jmp xchain1031_n20_af
 xchain1031_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1031_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1071_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1071_10
.Lx1071_9:
 xor eax, eax
.Lx1071_10:
 test rax, rax
 jz .Lx1071_0
 mov r8d, 0
 lea rcx, [rip + .Lx1071_4]
 lea rdx, [rip + .Lx1071_5]
 jmp rax
.Lx1071_4:
 jmp xchain1031_n23_α
.Lx1071_5:
 jmp xchain1031_n22_β
.Lx1071_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1071_2:
 test rax, rax
 je .Lx1071_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1071_7]
 lea rdx, [rip + .Lx1071_8]
 jmp rax
.Lx1071_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1071_2
.Lx1071_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1071_2
.Lx1071_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1031_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1071_6]
 sub rsp, 8
 push rax
 jmp xchain1031_n23_α
.Lx1071_6:
 add rsp, 16
 jmp xchain1031_n22_β
 xchain1031_n25_β:
 jmp qword ptr [rsp]
proc_PAT$30_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$30_γ
proc_PAT$30_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$30_attempt
8:
jmp proc_PAT$30_ω
proc_PAT$30_res:
add rsp, 8
pop rbp
proc_PAT$30_β:
jmp qword ptr [rbp + 784]
proc_PAT$30_γ:
push rbp
lea rax, [rip + proc_PAT$30_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$30_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$31_α
proc_PAT$31_α:
#=======================================================================================================================
    .global proc_PAT$31_α
    .global proc_PAT$31_β
    .global proc_PAT$31_γ
    .global proc_PAT$31_ω
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
proc_PAT$31_attempt:
proc_PAT$31_α_body:
lea rax, [rip + xchain1072_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1072_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1072_n1_α
 xchain1072_n0_β:
 add rsp, 16
 jmp proc_PAT$31_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1072_n1_α:
 jmp xchain1072_n3_α
xchain1072_n1_as:
 jmp xchain1072_n2_α
 xchain1072_n1_β:
 jmp xchain1072_n5_β
xchain1072_n1_af:
 jmp xchain1072_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1072_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$31_scanhit
 xchain1072_n2_β:
 sub r12, 24
 jmp xchain1072_n1_β
# IR_MATCH_LIT
 xchain1072_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1072_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1072_n1_af
 add r14d, 1
 jmp xchain1072_n4_α
 xchain1072_n3_β:
 sub r14d, 1
 jmp xchain1072_n1_af
# IR_MATCH_BAL
 xchain1072_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1072_n4_β:
.Lx1082_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1082_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1082_1
 add edx, 1
 jmp .Lx1082_2
.Lx1082_1:
 cmp esi, 41
 jne .Lx1082_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1082_3
.Lx1082_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1082_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1072_n5_α
.Lx1082_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1072_n3_β
# IR_MATCH_LIT
 xchain1072_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1072_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1072_n4_β
 add r14d, 1
 jmp xchain1072_n1_as
 xchain1072_n5_β:
 sub r14d, 1
 jmp xchain1072_n4_β
proc_PAT$31_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$31_γ
proc_PAT$31_scanfail:
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
jmp proc_PAT$31_attempt
8:
jmp proc_PAT$31_ω
proc_PAT$31_res:
add rsp, 8
pop rbp
proc_PAT$31_β:
jmp qword ptr [rbp + 160]
proc_PAT$31_γ:
push rbp
lea rax, [rip + proc_PAT$31_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$31_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$32_α
proc_PAT$32_α:
#=======================================================================================================================
    .global proc_PAT$32_α
    .global proc_PAT$32_β
    .global proc_PAT$32_γ
    .global proc_PAT$32_ω
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
proc_PAT$32_attempt:
proc_PAT$32_α_body:
lea rax, [rip + xchain1085_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1085_n0_α:
 mov rax, qword ptr [1879055008]
 mov rdx, qword ptr [1879055016]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1085_n1_α
# IR_COERCE_STRING
 xchain1085_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1085_n2_α
# IR_MATCH_SPAN
 xchain1085_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1090_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1090_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1090_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1090_0
.Lx1090_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1090_240
 add rsp, 16
 jmp proc_PAT$32_scanfail
.Lx1090_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$32_scanhit
 xchain1085_n2_β:
 xchain1085_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$32_scanfail
proc_PAT$32_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$32_γ
proc_PAT$32_scanfail:
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
jmp proc_PAT$32_attempt
8:
jmp proc_PAT$32_ω
proc_PAT$32_res:
add rsp, 8
pop rbp
proc_PAT$32_β:
jmp qword ptr [rbp + 112]
proc_PAT$32_γ:
push rbp
lea rax, [rip + proc_PAT$32_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$32_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$33_α
proc_PAT$33_α:
#=======================================================================================================================
    .global proc_PAT$33_α
    .global proc_PAT$33_β
    .global proc_PAT$33_γ
    .global proc_PAT$33_ω
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
proc_PAT$33_attempt:
proc_PAT$33_α_body:
lea rax, [rip + xchain1091_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1091_n0_α:
 mov rax, qword ptr [1879055040]
 mov rdx, qword ptr [1879055048]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1091_n1_α
 xchain1091_n0_β:
 jmp proc_PAT$33_scanfail
# IR_COERCE_STRING
 xchain1091_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1091_n2_α
 xchain1091_n1_β:
 jmp proc_PAT$33_scanfail
# IR_VAR
 xchain1091_n2_α:
 mov rax, qword ptr [1879055024]
 mov rdx, qword ptr [1879055032]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1091_n3_α
 xchain1091_n2_β:
 jmp proc_PAT$33_scanfail
# IR_COERCE_STRING
 xchain1091_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1091_n4_α
 xchain1091_n3_β:
 jmp proc_PAT$33_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1091_n4_α:
 jmp xchain1091_n5_α
xchain1091_n4_as:
 jmp proc_PAT$33_γ
 xchain1091_n4_β:
 jmp xchain1091_n6_β
xchain1091_n4_af:
 jmp proc_PAT$33_ω
# IR_MATCH_NOTANY
 xchain1091_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1091_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1091_n4_af
 add r14d, 1
 jmp xchain1091_n6_α
 xchain1091_n5_β:
 sub r14d, 1
 jmp xchain1091_n4_af
# IR_MATCH_BREAK
 xchain1091_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1102_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1102_240
 add rsp, 16
 jmp xchain1091_n5_β
.Lx1102_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1102_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1102_0
.Lx1102_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1091_n4_as
 xchain1091_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1091_n5_β
proc_PAT$33_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$33_γ
proc_PAT$33_scanfail:
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
jmp proc_PAT$33_attempt
8:
jmp proc_PAT$33_ω
proc_PAT$33_res:
add rsp, 8
pop rbp
proc_PAT$33_β:
jmp qword ptr [rbp + 224]
proc_PAT$33_γ:
push rbp
lea rax, [rip + proc_PAT$33_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$33_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$34_α
proc_PAT$34_α:
#=======================================================================================================================
    .global proc_PAT$34_α
    .global proc_PAT$34_β
    .global proc_PAT$34_γ
    .global proc_PAT$34_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$34_attempt:
proc_PAT$34_α_body:
lea rax, [rip + xchain1103_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1103_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1103_n1_α
xchain1103_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1103_n2_α
 cmp eax, 2
 je xchain1103_n4_α
 cmp eax, 3
 je xchain1103_n6_α
 cmp eax, 4
 je xchain1103_n7_α
 cmp eax, 5
 je xchain1103_n9_α
 jmp proc_PAT$34_γ
 xchain1103_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1103_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1103_n1_β
 cmp eax, 1
 je xchain1103_n3_β
 cmp eax, 2
 je xchain1103_n5_β
 cmp eax, 3
 je xchain1103_n6_β
 cmp eax, 4
 je xchain1103_n8_β
 cmp eax, 5
 je xchain1103_n9_β
 jmp proc_PAT$34_ω
# IR_MATCH_LIT
 xchain1103_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1103_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1103_n0_af
 add r14d, 1
 jmp xchain1103_n0_as
 xchain1103_n1_β:
 sub r14d, 1
 jmp xchain1103_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1103_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1103_n10_α
 xchain1103_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1103_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1103_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1103_n0_as
 xchain1103_n3_β:
 sub r12, 24
 jmp xchain1103_n10_β
# IR_LIT_STRING
 xchain1103_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1112_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1103_n11_α
 xchain1103_n4_β:
 jmp xchain1103_n0_af
.Lx1112_0:
 .quad .Lx1112_0_s
.Lx1112_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1103_n5_α:
 mov rax, qword ptr [1879055056]
 mov rdx, qword ptr [1879055064]
 cmp eax, 3
 jne .Lx1113_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1113_10
.Lx1113_9:
 xor eax, eax
.Lx1113_10:
 test rax, rax
 jz .Lx1113_0
 mov r8d, 0
 lea rcx, [rip + .Lx1113_4]
 lea rdx, [rip + .Lx1113_5]
 jmp rax
.Lx1113_4:
 jmp xchain1103_n0_as
.Lx1113_5:
 jmp xchain1103_n0_af
.Lx1113_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S30]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1113_2:
 test rax, rax
 je .Lx1113_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1113_7]
 lea rdx, [rip + .Lx1113_8]
 jmp rax
.Lx1113_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1113_2
.Lx1113_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1113_2
.Lx1113_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1103_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1113_6]
 sub rsp, 8
 push rax
 jmp xchain1103_n0_as
.Lx1113_6:
 add rsp, 16
 jmp xchain1103_n0_af
 xchain1103_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1103_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1103_n0_as
 xchain1103_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1103_n12_α
xchain1103_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1103_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1103_n0_as
xchain1103_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1115_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1103_n12_β
.Lx1115_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1103_n0_af
 xchain1103_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1117_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1117_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1117_6]
 lea rdx, [rip + .Lx1117_7]
 jmp rax
.Lx1117_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1117_2
.Lx1117_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1117_2
.Lx1117_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1117_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1117_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1117_3]
 lea rdx, [rip + .Lx1117_4]
 jmp rax
.Lx1117_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1117_2
.Lx1117_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1117_2
.Lx1117_1:
 call rt_faildescr@PLT
.Lx1117_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1103_n0_af
 jmp xchain1103_n14_α
 xchain1103_n7_β:
 jmp xchain1103_n0_af
.Lx1117_0:
 .quad .Lx1117_0_s
.Lx1117_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1103_n8_α:
 mov rax, qword ptr [1879055088]
 mov rdx, qword ptr [1879055096]
 cmp eax, 3
 jne .Lx1118_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1118_10
.Lx1118_9:
 xor eax, eax
.Lx1118_10:
 test rax, rax
 jz .Lx1118_0
 mov r8d, 0
 lea rcx, [rip + .Lx1118_4]
 lea rdx, [rip + .Lx1118_5]
 jmp rax
.Lx1118_4:
 jmp xchain1103_n0_as
.Lx1118_5:
 jmp xchain1103_n0_af
.Lx1118_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S31]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1118_2:
 test rax, rax
 je .Lx1118_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1118_7]
 lea rdx, [rip + .Lx1118_8]
 jmp rax
.Lx1118_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1118_2
.Lx1118_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1118_2
.Lx1118_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1103_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1118_6]
 sub rsp, 8
 push rax
 jmp xchain1103_n0_as
.Lx1118_6:
 add rsp, 16
 jmp xchain1103_n0_af
 xchain1103_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1103_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1103_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1103_n0_af
 add r14d, 1
 jmp xchain1103_n0_as
 xchain1103_n9_β:
 sub r14d, 1
 jmp xchain1103_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1103_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1121_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1121_10
.Lx1121_9:
 xor eax, eax
.Lx1121_10:
 test rax, rax
 jz .Lx1121_0
 mov r8d, 0
 lea rcx, [rip + .Lx1121_4]
 lea rdx, [rip + .Lx1121_5]
 jmp rax
.Lx1121_4:
 jmp xchain1103_n3_α
.Lx1121_5:
 jmp xchain1103_n2_β
.Lx1121_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1121_2:
 test rax, rax
 je .Lx1121_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1121_7]
 lea rdx, [rip + .Lx1121_8]
 jmp rax
.Lx1121_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1121_2
.Lx1121_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1121_2
.Lx1121_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1103_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1121_6]
 sub rsp, 8
 push rax
 jmp xchain1103_n3_α
.Lx1121_6:
 add rsp, 16
 jmp xchain1103_n2_β
 xchain1103_n10_β:
 jmp qword ptr [rsp]
 xchain1103_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1123_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1123_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1123_6]
 lea rdx, [rip + .Lx1123_7]
 jmp rax
.Lx1123_6:
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
 jmp .Lx1123_2
.Lx1123_7:
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
 jmp .Lx1123_2
.Lx1123_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1123_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1123_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1123_3]
 lea rdx, [rip + .Lx1123_4]
 jmp rax
.Lx1123_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1123_2
.Lx1123_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1123_2
.Lx1123_1:
 call rt_faildescr@PLT
.Lx1123_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1103_n0_af
 jmp xchain1103_n15_α
 xchain1103_n11_β:
 jmp xchain1103_n0_af
.Lx1123_0:
 .quad .Lx1123_0_s
.Lx1123_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1103_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1103_n16_α
xchain1103_n12_as:
 jmp xchain1103_n6_as
 xchain1103_n12_β:
 jmp xchain1103_n17_β
xchain1103_n12_af:
 jmp xchain1103_n6_af
# IR_LIT_STRING
 xchain1103_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1126_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1103_n18_α
 xchain1103_n13_β:
 jmp xchain1103_n20_af
.Lx1126_0:
 .quad .Lx1126_0_s
.Lx1126_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1103_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055088], rax
 mov qword ptr [1879055096], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1103_n8_α
# IR_ASSIGN gva
 xchain1103_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055056], rax
 mov qword ptr [1879055064], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1103_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1103_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1129_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1129_10
.Lx1129_9:
 xor eax, eax
.Lx1129_10:
 test rax, rax
 jz .Lx1129_0
 mov r8d, 0
 lea rcx, [rip + .Lx1129_4]
 lea rdx, [rip + .Lx1129_5]
 jmp rax
.Lx1129_4:
 jmp xchain1103_n17_α
.Lx1129_5:
 jmp xchain1103_n12_af
.Lx1129_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1129_2:
 test rax, rax
 je .Lx1129_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1129_7]
 lea rdx, [rip + .Lx1129_8]
 jmp rax
.Lx1129_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1129_2
.Lx1129_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1129_2
.Lx1129_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1103_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1129_6]
 sub rsp, 8
 push rax
 jmp xchain1103_n17_α
.Lx1129_6:
 add rsp, 16
 jmp xchain1103_n12_af
 xchain1103_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1103_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1103_n19_α
xchain1103_n17_as:
 jmp xchain1103_n12_as
 xchain1103_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1103_n19_β
 jmp xchain1103_n20_β
xchain1103_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1103_n20_α
 jmp xchain1103_n16_β
 xchain1103_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1133_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1133_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1133_6]
 lea rdx, [rip + .Lx1133_7]
 jmp rax
.Lx1133_6:
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
 jmp .Lx1133_2
.Lx1133_7:
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
 jmp .Lx1133_2
.Lx1133_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1133_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1133_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1133_3]
 lea rdx, [rip + .Lx1133_4]
 jmp rax
.Lx1133_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1133_2
.Lx1133_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1133_2
.Lx1133_1:
 call rt_faildescr@PLT
.Lx1133_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1103_n20_af
 jmp xchain1103_n21_α
 xchain1103_n18_β:
 jmp xchain1103_n20_af
.Lx1133_0:
 .quad .Lx1133_0_s
.Lx1133_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1103_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1134_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1134_10
.Lx1134_9:
 xor eax, eax
.Lx1134_10:
 test rax, rax
 jz .Lx1134_0
 mov r8d, 0
 lea rcx, [rip + .Lx1134_4]
 lea rdx, [rip + .Lx1134_5]
 jmp rax
.Lx1134_4:
 jmp xchain1103_n17_as
.Lx1134_5:
 jmp xchain1103_n17_af
.Lx1134_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1134_2:
 test rax, rax
 je .Lx1134_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1134_7]
 lea rdx, [rip + .Lx1134_8]
 jmp rax
.Lx1134_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1134_2
.Lx1134_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1134_2
.Lx1134_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1103_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1134_6]
 sub rsp, 8
 push rax
 jmp xchain1103_n17_as
.Lx1134_6:
 add rsp, 16
 jmp xchain1103_n17_af
 xchain1103_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1103_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1103_n22_α
xchain1103_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1103_n13_α
 jmp xchain1103_n17_as
 xchain1103_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1103_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1103_n23_β
 cmp eax, 1
 je xchain1103_n24_β
 jmp xchain1103_n17_af
# IR_ASSIGN gva
 xchain1103_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055072], rax
 mov qword ptr [1879055080], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1103_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1103_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1103_n25_α
 xchain1103_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1103_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1103_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1103_n20_as
 xchain1103_n23_β:
 sub r12, 24
 jmp xchain1103_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1103_n24_α:
 mov rax, qword ptr [1879055072]
 mov rdx, qword ptr [1879055080]
 cmp eax, 3
 jne .Lx1142_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1142_10
.Lx1142_9:
 xor eax, eax
.Lx1142_10:
 test rax, rax
 jz .Lx1142_0
 mov r8d, 0
 lea rcx, [rip + .Lx1142_4]
 lea rdx, [rip + .Lx1142_5]
 jmp rax
.Lx1142_4:
 jmp xchain1103_n20_as
.Lx1142_5:
 jmp xchain1103_n20_af
.Lx1142_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S32]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1142_2:
 test rax, rax
 je .Lx1142_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1142_7]
 lea rdx, [rip + .Lx1142_8]
 jmp rax
.Lx1142_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1142_2
.Lx1142_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1142_2
.Lx1142_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1103_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1142_6]
 sub rsp, 8
 push rax
 jmp xchain1103_n20_as
.Lx1142_6:
 add rsp, 16
 jmp xchain1103_n20_af
 xchain1103_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1103_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1143_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1143_10
.Lx1143_9:
 xor eax, eax
.Lx1143_10:
 test rax, rax
 jz .Lx1143_0
 mov r8d, 0
 lea rcx, [rip + .Lx1143_4]
 lea rdx, [rip + .Lx1143_5]
 jmp rax
.Lx1143_4:
 jmp xchain1103_n23_α
.Lx1143_5:
 jmp xchain1103_n22_β
.Lx1143_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1143_2:
 test rax, rax
 je .Lx1143_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1143_7]
 lea rdx, [rip + .Lx1143_8]
 jmp rax
.Lx1143_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1143_2
.Lx1143_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1143_2
.Lx1143_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1103_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1143_6]
 sub rsp, 8
 push rax
 jmp xchain1103_n23_α
.Lx1143_6:
 add rsp, 16
 jmp xchain1103_n22_β
 xchain1103_n25_β:
 jmp qword ptr [rsp]
proc_PAT$34_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$34_γ
proc_PAT$34_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$34_attempt
8:
jmp proc_PAT$34_ω
proc_PAT$34_res:
add rsp, 8
pop rbp
proc_PAT$34_β:
jmp qword ptr [rbp + 784]
proc_PAT$34_γ:
push rbp
lea rax, [rip + proc_PAT$34_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$34_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
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
lea rax, [rip + xchain1144_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1144_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1144_n1_α
 xchain1144_n0_β:
 add rsp, 16
 jmp proc_PAT$35_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1144_n1_α:
 jmp xchain1144_n3_α
xchain1144_n1_as:
 jmp xchain1144_n2_α
 xchain1144_n1_β:
 jmp xchain1144_n5_β
xchain1144_n1_af:
 jmp xchain1144_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1144_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$35_scanhit
 xchain1144_n2_β:
 sub r12, 24
 jmp xchain1144_n1_β
# IR_MATCH_LIT
 xchain1144_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1144_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1144_n1_af
 add r14d, 1
 jmp xchain1144_n4_α
 xchain1144_n3_β:
 sub r14d, 1
 jmp xchain1144_n1_af
# IR_MATCH_BAL
 xchain1144_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1144_n4_β:
.Lx1154_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1154_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1154_1
 add edx, 1
 jmp .Lx1154_2
.Lx1154_1:
 cmp esi, 41
 jne .Lx1154_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1154_3
.Lx1154_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1154_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1144_n5_α
.Lx1154_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1144_n3_β
# IR_MATCH_LIT
 xchain1144_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1144_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1144_n4_β
 add r14d, 1
 jmp xchain1144_n1_as
 xchain1144_n5_β:
 sub r14d, 1
 jmp xchain1144_n4_β
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
lea rax, [rip + xchain1157_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1157_n0_α:
 mov rax, qword ptr [1879055104]
 mov rdx, qword ptr [1879055112]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1157_n1_α
# IR_COERCE_STRING
 xchain1157_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1157_n2_α
# IR_MATCH_SPAN
 xchain1157_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1162_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1162_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1162_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1162_0
.Lx1162_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1162_240
 add rsp, 16
 jmp proc_PAT$36_scanfail
.Lx1162_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$36_scanhit
 xchain1157_n2_β:
 xchain1157_n2_β:
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
lea rax, [rip + xchain1163_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1163_n0_α:
 mov rax, qword ptr [1879055136]
 mov rdx, qword ptr [1879055144]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1163_n1_α
 xchain1163_n0_β:
 jmp proc_PAT$37_scanfail
# IR_COERCE_STRING
 xchain1163_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1163_n2_α
 xchain1163_n1_β:
 jmp proc_PAT$37_scanfail
# IR_VAR
 xchain1163_n2_α:
 mov rax, qword ptr [1879055120]
 mov rdx, qword ptr [1879055128]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1163_n3_α
 xchain1163_n2_β:
 jmp proc_PAT$37_scanfail
# IR_COERCE_STRING
 xchain1163_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1163_n4_α
 xchain1163_n3_β:
 jmp proc_PAT$37_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1163_n4_α:
 jmp xchain1163_n5_α
xchain1163_n4_as:
 jmp proc_PAT$37_γ
 xchain1163_n4_β:
 jmp xchain1163_n6_β
xchain1163_n4_af:
 jmp proc_PAT$37_ω
# IR_MATCH_NOTANY
 xchain1163_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1163_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1163_n4_af
 add r14d, 1
 jmp xchain1163_n6_α
 xchain1163_n5_β:
 sub r14d, 1
 jmp xchain1163_n4_af
# IR_MATCH_BREAK
 xchain1163_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1174_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1174_240
 add rsp, 16
 jmp xchain1163_n5_β
.Lx1174_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1174_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1174_0
.Lx1174_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1163_n4_as
 xchain1163_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1163_n5_β
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
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$38_attempt:
proc_PAT$38_α_body:
lea rax, [rip + xchain1175_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1175_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1175_n1_α
xchain1175_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1175_n2_α
 cmp eax, 2
 je xchain1175_n4_α
 cmp eax, 3
 je xchain1175_n6_α
 cmp eax, 4
 je xchain1175_n7_α
 cmp eax, 5
 je xchain1175_n9_α
 jmp proc_PAT$38_γ
 xchain1175_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1175_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1175_n1_β
 cmp eax, 1
 je xchain1175_n3_β
 cmp eax, 2
 je xchain1175_n5_β
 cmp eax, 3
 je xchain1175_n6_β
 cmp eax, 4
 je xchain1175_n8_β
 cmp eax, 5
 je xchain1175_n9_β
 jmp proc_PAT$38_ω
# IR_MATCH_LIT
 xchain1175_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1175_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1175_n0_af
 add r14d, 1
 jmp xchain1175_n0_as
 xchain1175_n1_β:
 sub r14d, 1
 jmp xchain1175_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1175_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1175_n10_α
 xchain1175_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1175_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1175_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1175_n0_as
 xchain1175_n3_β:
 sub r12, 24
 jmp xchain1175_n10_β
# IR_LIT_STRING
 xchain1175_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1184_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1175_n11_α
 xchain1175_n4_β:
 jmp xchain1175_n0_af
.Lx1184_0:
 .quad .Lx1184_0_s
.Lx1184_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1175_n5_α:
 mov rax, qword ptr [1879055152]
 mov rdx, qword ptr [1879055160]
 cmp eax, 3
 jne .Lx1185_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1185_10
.Lx1185_9:
 xor eax, eax
.Lx1185_10:
 test rax, rax
 jz .Lx1185_0
 mov r8d, 0
 lea rcx, [rip + .Lx1185_4]
 lea rdx, [rip + .Lx1185_5]
 jmp rax
.Lx1185_4:
 jmp xchain1175_n0_as
.Lx1185_5:
 jmp xchain1175_n0_af
.Lx1185_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S33]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1185_2:
 test rax, rax
 je .Lx1185_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1185_7]
 lea rdx, [rip + .Lx1185_8]
 jmp rax
.Lx1185_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1185_2
.Lx1185_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1185_2
.Lx1185_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1175_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1185_6]
 sub rsp, 8
 push rax
 jmp xchain1175_n0_as
.Lx1185_6:
 add rsp, 16
 jmp xchain1175_n0_af
 xchain1175_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1175_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1175_n0_as
 xchain1175_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1175_n12_α
xchain1175_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1175_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1175_n0_as
xchain1175_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1187_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1175_n12_β
.Lx1187_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1175_n0_af
 xchain1175_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1189_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1189_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1189_6]
 lea rdx, [rip + .Lx1189_7]
 jmp rax
.Lx1189_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1189_2
.Lx1189_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1189_2
.Lx1189_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1189_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1189_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1189_3]
 lea rdx, [rip + .Lx1189_4]
 jmp rax
.Lx1189_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1189_2
.Lx1189_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1189_2
.Lx1189_1:
 call rt_faildescr@PLT
.Lx1189_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1175_n0_af
 jmp xchain1175_n14_α
 xchain1175_n7_β:
 jmp xchain1175_n0_af
.Lx1189_0:
 .quad .Lx1189_0_s
.Lx1189_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1175_n8_α:
 mov rax, qword ptr [1879055184]
 mov rdx, qword ptr [1879055192]
 cmp eax, 3
 jne .Lx1190_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1190_10
.Lx1190_9:
 xor eax, eax
.Lx1190_10:
 test rax, rax
 jz .Lx1190_0
 mov r8d, 0
 lea rcx, [rip + .Lx1190_4]
 lea rdx, [rip + .Lx1190_5]
 jmp rax
.Lx1190_4:
 jmp xchain1175_n0_as
.Lx1190_5:
 jmp xchain1175_n0_af
.Lx1190_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S34]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1190_2:
 test rax, rax
 je .Lx1190_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1190_7]
 lea rdx, [rip + .Lx1190_8]
 jmp rax
.Lx1190_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1190_2
.Lx1190_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1190_2
.Lx1190_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1175_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1190_6]
 sub rsp, 8
 push rax
 jmp xchain1175_n0_as
.Lx1190_6:
 add rsp, 16
 jmp xchain1175_n0_af
 xchain1175_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1175_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1175_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1175_n0_af
 add r14d, 1
 jmp xchain1175_n0_as
 xchain1175_n9_β:
 sub r14d, 1
 jmp xchain1175_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1175_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1193_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1193_10
.Lx1193_9:
 xor eax, eax
.Lx1193_10:
 test rax, rax
 jz .Lx1193_0
 mov r8d, 0
 lea rcx, [rip + .Lx1193_4]
 lea rdx, [rip + .Lx1193_5]
 jmp rax
.Lx1193_4:
 jmp xchain1175_n3_α
.Lx1193_5:
 jmp xchain1175_n2_β
.Lx1193_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1193_2:
 test rax, rax
 je .Lx1193_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1193_7]
 lea rdx, [rip + .Lx1193_8]
 jmp rax
.Lx1193_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1193_2
.Lx1193_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1193_2
.Lx1193_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1175_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1193_6]
 sub rsp, 8
 push rax
 jmp xchain1175_n3_α
.Lx1193_6:
 add rsp, 16
 jmp xchain1175_n2_β
 xchain1175_n10_β:
 jmp qword ptr [rsp]
 xchain1175_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1195_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1195_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1195_6]
 lea rdx, [rip + .Lx1195_7]
 jmp rax
.Lx1195_6:
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
 jmp .Lx1195_2
.Lx1195_7:
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
 jmp .Lx1195_2
.Lx1195_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1195_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1195_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1195_3]
 lea rdx, [rip + .Lx1195_4]
 jmp rax
.Lx1195_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1195_2
.Lx1195_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1195_2
.Lx1195_1:
 call rt_faildescr@PLT
.Lx1195_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1175_n0_af
 jmp xchain1175_n15_α
 xchain1175_n11_β:
 jmp xchain1175_n0_af
.Lx1195_0:
 .quad .Lx1195_0_s
.Lx1195_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1175_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1175_n16_α
xchain1175_n12_as:
 jmp xchain1175_n6_as
 xchain1175_n12_β:
 jmp xchain1175_n17_β
xchain1175_n12_af:
 jmp xchain1175_n6_af
# IR_LIT_STRING
 xchain1175_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1198_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1175_n18_α
 xchain1175_n13_β:
 jmp xchain1175_n20_af
.Lx1198_0:
 .quad .Lx1198_0_s
.Lx1198_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1175_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055184], rax
 mov qword ptr [1879055192], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1175_n8_α
# IR_ASSIGN gva
 xchain1175_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055152], rax
 mov qword ptr [1879055160], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1175_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1175_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1201_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1201_10
.Lx1201_9:
 xor eax, eax
.Lx1201_10:
 test rax, rax
 jz .Lx1201_0
 mov r8d, 0
 lea rcx, [rip + .Lx1201_4]
 lea rdx, [rip + .Lx1201_5]
 jmp rax
.Lx1201_4:
 jmp xchain1175_n17_α
.Lx1201_5:
 jmp xchain1175_n12_af
.Lx1201_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1201_2:
 test rax, rax
 je .Lx1201_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1201_7]
 lea rdx, [rip + .Lx1201_8]
 jmp rax
.Lx1201_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1201_2
.Lx1201_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1201_2
.Lx1201_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1175_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1201_6]
 sub rsp, 8
 push rax
 jmp xchain1175_n17_α
.Lx1201_6:
 add rsp, 16
 jmp xchain1175_n12_af
 xchain1175_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1175_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1175_n19_α
xchain1175_n17_as:
 jmp xchain1175_n12_as
 xchain1175_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1175_n19_β
 jmp xchain1175_n20_β
xchain1175_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1175_n20_α
 jmp xchain1175_n16_β
 xchain1175_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1205_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1205_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1205_6]
 lea rdx, [rip + .Lx1205_7]
 jmp rax
.Lx1205_6:
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
 jmp .Lx1205_2
.Lx1205_7:
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
 jmp .Lx1205_2
.Lx1205_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1205_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1205_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1205_3]
 lea rdx, [rip + .Lx1205_4]
 jmp rax
.Lx1205_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1205_2
.Lx1205_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1205_2
.Lx1205_1:
 call rt_faildescr@PLT
.Lx1205_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1175_n20_af
 jmp xchain1175_n21_α
 xchain1175_n18_β:
 jmp xchain1175_n20_af
.Lx1205_0:
 .quad .Lx1205_0_s
.Lx1205_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1175_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1206_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1206_10
.Lx1206_9:
 xor eax, eax
.Lx1206_10:
 test rax, rax
 jz .Lx1206_0
 mov r8d, 0
 lea rcx, [rip + .Lx1206_4]
 lea rdx, [rip + .Lx1206_5]
 jmp rax
.Lx1206_4:
 jmp xchain1175_n17_as
.Lx1206_5:
 jmp xchain1175_n17_af
.Lx1206_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1206_2:
 test rax, rax
 je .Lx1206_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1206_7]
 lea rdx, [rip + .Lx1206_8]
 jmp rax
.Lx1206_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1206_2
.Lx1206_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1206_2
.Lx1206_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1175_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1206_6]
 sub rsp, 8
 push rax
 jmp xchain1175_n17_as
.Lx1206_6:
 add rsp, 16
 jmp xchain1175_n17_af
 xchain1175_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1175_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1175_n22_α
xchain1175_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1175_n13_α
 jmp xchain1175_n17_as
 xchain1175_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1175_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1175_n23_β
 cmp eax, 1
 je xchain1175_n24_β
 jmp xchain1175_n17_af
# IR_ASSIGN gva
 xchain1175_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055168], rax
 mov qword ptr [1879055176], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1175_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1175_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1175_n25_α
 xchain1175_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1175_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1175_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1175_n20_as
 xchain1175_n23_β:
 sub r12, 24
 jmp xchain1175_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1175_n24_α:
 mov rax, qword ptr [1879055168]
 mov rdx, qword ptr [1879055176]
 cmp eax, 3
 jne .Lx1214_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1214_10
.Lx1214_9:
 xor eax, eax
.Lx1214_10:
 test rax, rax
 jz .Lx1214_0
 mov r8d, 0
 lea rcx, [rip + .Lx1214_4]
 lea rdx, [rip + .Lx1214_5]
 jmp rax
.Lx1214_4:
 jmp xchain1175_n20_as
.Lx1214_5:
 jmp xchain1175_n20_af
.Lx1214_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S35]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1214_2:
 test rax, rax
 je .Lx1214_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1214_7]
 lea rdx, [rip + .Lx1214_8]
 jmp rax
.Lx1214_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1214_2
.Lx1214_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1214_2
.Lx1214_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1175_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1214_6]
 sub rsp, 8
 push rax
 jmp xchain1175_n20_as
.Lx1214_6:
 add rsp, 16
 jmp xchain1175_n20_af
 xchain1175_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1175_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1215_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1215_10
.Lx1215_9:
 xor eax, eax
.Lx1215_10:
 test rax, rax
 jz .Lx1215_0
 mov r8d, 0
 lea rcx, [rip + .Lx1215_4]
 lea rdx, [rip + .Lx1215_5]
 jmp rax
.Lx1215_4:
 jmp xchain1175_n23_α
.Lx1215_5:
 jmp xchain1175_n22_β
.Lx1215_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1215_2:
 test rax, rax
 je .Lx1215_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1215_7]
 lea rdx, [rip + .Lx1215_8]
 jmp rax
.Lx1215_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1215_2
.Lx1215_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1215_2
.Lx1215_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1175_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1215_6]
 sub rsp, 8
 push rax
 jmp xchain1175_n23_α
.Lx1215_6:
 add rsp, 16
 jmp xchain1175_n22_β
 xchain1175_n25_β:
 jmp qword ptr [rsp]
proc_PAT$38_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$38_γ
proc_PAT$38_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$38_attempt
8:
jmp proc_PAT$38_ω
proc_PAT$38_res:
add rsp, 8
pop rbp
proc_PAT$38_β:
jmp qword ptr [rbp + 784]
proc_PAT$38_γ:
push rbp
lea rax, [rip + proc_PAT$38_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$38_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$39_α
proc_PAT$39_α:
#=======================================================================================================================
    .global proc_PAT$39_α
    .global proc_PAT$39_β
    .global proc_PAT$39_γ
    .global proc_PAT$39_ω
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
proc_PAT$39_attempt:
proc_PAT$39_α_body:
lea rax, [rip + xchain1216_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1216_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1216_n1_α
 xchain1216_n0_β:
 add rsp, 16
 jmp proc_PAT$39_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1216_n1_α:
 jmp xchain1216_n3_α
xchain1216_n1_as:
 jmp xchain1216_n2_α
 xchain1216_n1_β:
 jmp xchain1216_n5_β
xchain1216_n1_af:
 jmp xchain1216_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1216_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$39_scanhit
 xchain1216_n2_β:
 sub r12, 24
 jmp xchain1216_n1_β
# IR_MATCH_LIT
 xchain1216_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1216_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1216_n1_af
 add r14d, 1
 jmp xchain1216_n4_α
 xchain1216_n3_β:
 sub r14d, 1
 jmp xchain1216_n1_af
# IR_MATCH_BAL
 xchain1216_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1216_n4_β:
.Lx1226_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1226_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1226_1
 add edx, 1
 jmp .Lx1226_2
.Lx1226_1:
 cmp esi, 41
 jne .Lx1226_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1226_3
.Lx1226_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1226_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1216_n5_α
.Lx1226_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1216_n3_β
# IR_MATCH_LIT
 xchain1216_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1216_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1216_n4_β
 add r14d, 1
 jmp xchain1216_n1_as
 xchain1216_n5_β:
 sub r14d, 1
 jmp xchain1216_n4_β
proc_PAT$39_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$39_γ
proc_PAT$39_scanfail:
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
jmp proc_PAT$39_attempt
8:
jmp proc_PAT$39_ω
proc_PAT$39_res:
add rsp, 8
pop rbp
proc_PAT$39_β:
jmp qword ptr [rbp + 160]
proc_PAT$39_γ:
push rbp
lea rax, [rip + proc_PAT$39_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$39_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$40_α
proc_PAT$40_α:
#=======================================================================================================================
    .global proc_PAT$40_α
    .global proc_PAT$40_β
    .global proc_PAT$40_γ
    .global proc_PAT$40_ω
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
proc_PAT$40_attempt:
proc_PAT$40_α_body:
lea rax, [rip + xchain1229_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1229_n0_α:
 mov rax, qword ptr [1879055200]
 mov rdx, qword ptr [1879055208]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1229_n1_α
# IR_COERCE_STRING
 xchain1229_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1229_n2_α
# IR_MATCH_SPAN
 xchain1229_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1234_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1234_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1234_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1234_0
.Lx1234_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1234_240
 add rsp, 16
 jmp proc_PAT$40_scanfail
.Lx1234_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$40_scanhit
 xchain1229_n2_β:
 xchain1229_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$40_scanfail
proc_PAT$40_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$40_γ
proc_PAT$40_scanfail:
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
jmp proc_PAT$40_attempt
8:
jmp proc_PAT$40_ω
proc_PAT$40_res:
add rsp, 8
pop rbp
proc_PAT$40_β:
jmp qword ptr [rbp + 112]
proc_PAT$40_γ:
push rbp
lea rax, [rip + proc_PAT$40_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$40_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$41_α
proc_PAT$41_α:
#=======================================================================================================================
    .global proc_PAT$41_α
    .global proc_PAT$41_β
    .global proc_PAT$41_γ
    .global proc_PAT$41_ω
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
proc_PAT$41_attempt:
proc_PAT$41_α_body:
lea rax, [rip + xchain1235_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1235_n0_α:
 mov rax, qword ptr [1879055232]
 mov rdx, qword ptr [1879055240]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1235_n1_α
 xchain1235_n0_β:
 jmp proc_PAT$41_scanfail
# IR_COERCE_STRING
 xchain1235_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1235_n2_α
 xchain1235_n1_β:
 jmp proc_PAT$41_scanfail
# IR_VAR
 xchain1235_n2_α:
 mov rax, qword ptr [1879055216]
 mov rdx, qword ptr [1879055224]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1235_n3_α
 xchain1235_n2_β:
 jmp proc_PAT$41_scanfail
# IR_COERCE_STRING
 xchain1235_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1235_n4_α
 xchain1235_n3_β:
 jmp proc_PAT$41_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1235_n4_α:
 jmp xchain1235_n5_α
xchain1235_n4_as:
 jmp proc_PAT$41_γ
 xchain1235_n4_β:
 jmp xchain1235_n6_β
xchain1235_n4_af:
 jmp proc_PAT$41_ω
# IR_MATCH_NOTANY
 xchain1235_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1235_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1235_n4_af
 add r14d, 1
 jmp xchain1235_n6_α
 xchain1235_n5_β:
 sub r14d, 1
 jmp xchain1235_n4_af
# IR_MATCH_BREAK
 xchain1235_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1246_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1246_240
 add rsp, 16
 jmp xchain1235_n5_β
.Lx1246_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1246_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1246_0
.Lx1246_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1235_n4_as
 xchain1235_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1235_n5_β
proc_PAT$41_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$41_γ
proc_PAT$41_scanfail:
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
jmp proc_PAT$41_attempt
8:
jmp proc_PAT$41_ω
proc_PAT$41_res:
add rsp, 8
pop rbp
proc_PAT$41_β:
jmp qword ptr [rbp + 224]
proc_PAT$41_γ:
push rbp
lea rax, [rip + proc_PAT$41_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$41_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$42_α
proc_PAT$42_α:
#=======================================================================================================================
    .global proc_PAT$42_α
    .global proc_PAT$42_β
    .global proc_PAT$42_γ
    .global proc_PAT$42_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$42_attempt:
proc_PAT$42_α_body:
lea rax, [rip + xchain1247_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1247_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1247_n1_α
xchain1247_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1247_n2_α
 cmp eax, 2
 je xchain1247_n4_α
 cmp eax, 3
 je xchain1247_n6_α
 cmp eax, 4
 je xchain1247_n7_α
 cmp eax, 5
 je xchain1247_n9_α
 jmp proc_PAT$42_γ
 xchain1247_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1247_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1247_n1_β
 cmp eax, 1
 je xchain1247_n3_β
 cmp eax, 2
 je xchain1247_n5_β
 cmp eax, 3
 je xchain1247_n6_β
 cmp eax, 4
 je xchain1247_n8_β
 cmp eax, 5
 je xchain1247_n9_β
 jmp proc_PAT$42_ω
# IR_MATCH_LIT
 xchain1247_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1247_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1247_n0_af
 add r14d, 1
 jmp xchain1247_n0_as
 xchain1247_n1_β:
 sub r14d, 1
 jmp xchain1247_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1247_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1247_n10_α
 xchain1247_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1247_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1247_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1247_n0_as
 xchain1247_n3_β:
 sub r12, 24
 jmp xchain1247_n10_β
# IR_LIT_STRING
 xchain1247_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1256_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1247_n11_α
 xchain1247_n4_β:
 jmp xchain1247_n0_af
.Lx1256_0:
 .quad .Lx1256_0_s
.Lx1256_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1247_n5_α:
 mov rax, qword ptr [1879055248]
 mov rdx, qword ptr [1879055256]
 cmp eax, 3
 jne .Lx1257_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1257_10
.Lx1257_9:
 xor eax, eax
.Lx1257_10:
 test rax, rax
 jz .Lx1257_0
 mov r8d, 0
 lea rcx, [rip + .Lx1257_4]
 lea rdx, [rip + .Lx1257_5]
 jmp rax
.Lx1257_4:
 jmp xchain1247_n0_as
.Lx1257_5:
 jmp xchain1247_n0_af
.Lx1257_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S36]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1257_2:
 test rax, rax
 je .Lx1257_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1257_7]
 lea rdx, [rip + .Lx1257_8]
 jmp rax
.Lx1257_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1257_2
.Lx1257_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1257_2
.Lx1257_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1247_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1257_6]
 sub rsp, 8
 push rax
 jmp xchain1247_n0_as
.Lx1257_6:
 add rsp, 16
 jmp xchain1247_n0_af
 xchain1247_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1247_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1247_n0_as
 xchain1247_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1247_n12_α
xchain1247_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1247_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1247_n0_as
xchain1247_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1259_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1247_n12_β
.Lx1259_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1247_n0_af
 xchain1247_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1261_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1261_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1261_6]
 lea rdx, [rip + .Lx1261_7]
 jmp rax
.Lx1261_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1261_2
.Lx1261_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1261_2
.Lx1261_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1261_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1261_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1261_3]
 lea rdx, [rip + .Lx1261_4]
 jmp rax
.Lx1261_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1261_2
.Lx1261_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1261_2
.Lx1261_1:
 call rt_faildescr@PLT
.Lx1261_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1247_n0_af
 jmp xchain1247_n14_α
 xchain1247_n7_β:
 jmp xchain1247_n0_af
.Lx1261_0:
 .quad .Lx1261_0_s
.Lx1261_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1247_n8_α:
 mov rax, qword ptr [1879055280]
 mov rdx, qword ptr [1879055288]
 cmp eax, 3
 jne .Lx1262_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1262_10
.Lx1262_9:
 xor eax, eax
.Lx1262_10:
 test rax, rax
 jz .Lx1262_0
 mov r8d, 0
 lea rcx, [rip + .Lx1262_4]
 lea rdx, [rip + .Lx1262_5]
 jmp rax
.Lx1262_4:
 jmp xchain1247_n0_as
.Lx1262_5:
 jmp xchain1247_n0_af
.Lx1262_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S37]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1262_2:
 test rax, rax
 je .Lx1262_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1262_7]
 lea rdx, [rip + .Lx1262_8]
 jmp rax
.Lx1262_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1262_2
.Lx1262_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1262_2
.Lx1262_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1247_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1262_6]
 sub rsp, 8
 push rax
 jmp xchain1247_n0_as
.Lx1262_6:
 add rsp, 16
 jmp xchain1247_n0_af
 xchain1247_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1247_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1247_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1247_n0_af
 add r14d, 1
 jmp xchain1247_n0_as
 xchain1247_n9_β:
 sub r14d, 1
 jmp xchain1247_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1247_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
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
 jmp xchain1247_n3_α
.Lx1265_5:
 jmp xchain1247_n2_β
.Lx1265_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
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
 js xchain1247_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1265_6]
 sub rsp, 8
 push rax
 jmp xchain1247_n3_α
.Lx1265_6:
 add rsp, 16
 jmp xchain1247_n2_β
 xchain1247_n10_β:
 jmp qword ptr [rsp]
 xchain1247_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1267_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1267_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1267_6]
 lea rdx, [rip + .Lx1267_7]
 jmp rax
.Lx1267_6:
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
 jmp .Lx1267_2
.Lx1267_7:
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
 jmp .Lx1267_2
.Lx1267_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
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
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1247_n0_af
 jmp xchain1247_n15_α
 xchain1247_n11_β:
 jmp xchain1247_n0_af
.Lx1267_0:
 .quad .Lx1267_0_s
.Lx1267_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1247_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1247_n16_α
xchain1247_n12_as:
 jmp xchain1247_n6_as
 xchain1247_n12_β:
 jmp xchain1247_n17_β
xchain1247_n12_af:
 jmp xchain1247_n6_af
# IR_LIT_STRING
 xchain1247_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1270_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1247_n18_α
 xchain1247_n13_β:
 jmp xchain1247_n20_af
.Lx1270_0:
 .quad .Lx1270_0_s
.Lx1270_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1247_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055280], rax
 mov qword ptr [1879055288], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1247_n8_α
# IR_ASSIGN gva
 xchain1247_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055248], rax
 mov qword ptr [1879055256], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1247_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1247_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1273_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1273_10
.Lx1273_9:
 xor eax, eax
.Lx1273_10:
 test rax, rax
 jz .Lx1273_0
 mov r8d, 0
 lea rcx, [rip + .Lx1273_4]
 lea rdx, [rip + .Lx1273_5]
 jmp rax
.Lx1273_4:
 jmp xchain1247_n17_α
.Lx1273_5:
 jmp xchain1247_n12_af
.Lx1273_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1273_2:
 test rax, rax
 je .Lx1273_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1273_7]
 lea rdx, [rip + .Lx1273_8]
 jmp rax
.Lx1273_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1273_2
.Lx1273_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1273_2
.Lx1273_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1247_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1273_6]
 sub rsp, 8
 push rax
 jmp xchain1247_n17_α
.Lx1273_6:
 add rsp, 16
 jmp xchain1247_n12_af
 xchain1247_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1247_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1247_n19_α
xchain1247_n17_as:
 jmp xchain1247_n12_as
 xchain1247_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1247_n19_β
 jmp xchain1247_n20_β
xchain1247_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1247_n20_α
 jmp xchain1247_n16_β
 xchain1247_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1277_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1277_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1277_6]
 lea rdx, [rip + .Lx1277_7]
 jmp rax
.Lx1277_6:
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
 jmp .Lx1277_2
.Lx1277_7:
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
 jmp .Lx1277_2
.Lx1277_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1277_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1277_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1277_3]
 lea rdx, [rip + .Lx1277_4]
 jmp rax
.Lx1277_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1277_2
.Lx1277_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1277_2
.Lx1277_1:
 call rt_faildescr@PLT
.Lx1277_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1247_n20_af
 jmp xchain1247_n21_α
 xchain1247_n18_β:
 jmp xchain1247_n20_af
.Lx1277_0:
 .quad .Lx1277_0_s
.Lx1277_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1247_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1278_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1278_10
.Lx1278_9:
 xor eax, eax
.Lx1278_10:
 test rax, rax
 jz .Lx1278_0
 mov r8d, 0
 lea rcx, [rip + .Lx1278_4]
 lea rdx, [rip + .Lx1278_5]
 jmp rax
.Lx1278_4:
 jmp xchain1247_n17_as
.Lx1278_5:
 jmp xchain1247_n17_af
.Lx1278_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1278_2:
 test rax, rax
 je .Lx1278_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1278_7]
 lea rdx, [rip + .Lx1278_8]
 jmp rax
.Lx1278_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1278_2
.Lx1278_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1278_2
.Lx1278_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1247_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1278_6]
 sub rsp, 8
 push rax
 jmp xchain1247_n17_as
.Lx1278_6:
 add rsp, 16
 jmp xchain1247_n17_af
 xchain1247_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1247_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1247_n22_α
xchain1247_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1247_n13_α
 jmp xchain1247_n17_as
 xchain1247_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1247_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1247_n23_β
 cmp eax, 1
 je xchain1247_n24_β
 jmp xchain1247_n17_af
# IR_ASSIGN gva
 xchain1247_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055264], rax
 mov qword ptr [1879055272], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1247_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1247_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1247_n25_α
 xchain1247_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1247_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1247_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1247_n20_as
 xchain1247_n23_β:
 sub r12, 24
 jmp xchain1247_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1247_n24_α:
 mov rax, qword ptr [1879055264]
 mov rdx, qword ptr [1879055272]
 cmp eax, 3
 jne .Lx1286_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1286_10
.Lx1286_9:
 xor eax, eax
.Lx1286_10:
 test rax, rax
 jz .Lx1286_0
 mov r8d, 0
 lea rcx, [rip + .Lx1286_4]
 lea rdx, [rip + .Lx1286_5]
 jmp rax
.Lx1286_4:
 jmp xchain1247_n20_as
.Lx1286_5:
 jmp xchain1247_n20_af
.Lx1286_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S38]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1286_2:
 test rax, rax
 je .Lx1286_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1286_7]
 lea rdx, [rip + .Lx1286_8]
 jmp rax
.Lx1286_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1286_2
.Lx1286_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1286_2
.Lx1286_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1247_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1286_6]
 sub rsp, 8
 push rax
 jmp xchain1247_n20_as
.Lx1286_6:
 add rsp, 16
 jmp xchain1247_n20_af
 xchain1247_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1247_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1287_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1287_10
.Lx1287_9:
 xor eax, eax
.Lx1287_10:
 test rax, rax
 jz .Lx1287_0
 mov r8d, 0
 lea rcx, [rip + .Lx1287_4]
 lea rdx, [rip + .Lx1287_5]
 jmp rax
.Lx1287_4:
 jmp xchain1247_n23_α
.Lx1287_5:
 jmp xchain1247_n22_β
.Lx1287_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1287_2:
 test rax, rax
 je .Lx1287_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1287_7]
 lea rdx, [rip + .Lx1287_8]
 jmp rax
.Lx1287_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1287_2
.Lx1287_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1287_2
.Lx1287_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1247_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1287_6]
 sub rsp, 8
 push rax
 jmp xchain1247_n23_α
.Lx1287_6:
 add rsp, 16
 jmp xchain1247_n22_β
 xchain1247_n25_β:
 jmp qword ptr [rsp]
proc_PAT$42_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$42_γ
proc_PAT$42_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$42_attempt
8:
jmp proc_PAT$42_ω
proc_PAT$42_res:
add rsp, 8
pop rbp
proc_PAT$42_β:
jmp qword ptr [rbp + 784]
proc_PAT$42_γ:
push rbp
lea rax, [rip + proc_PAT$42_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$42_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$43_α
proc_PAT$43_α:
#=======================================================================================================================
    .global proc_PAT$43_α
    .global proc_PAT$43_β
    .global proc_PAT$43_γ
    .global proc_PAT$43_ω
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
proc_PAT$43_attempt:
proc_PAT$43_α_body:
lea rax, [rip + xchain1288_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1288_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1288_n1_α
 xchain1288_n0_β:
 add rsp, 16
 jmp proc_PAT$43_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1288_n1_α:
 jmp xchain1288_n3_α
xchain1288_n1_as:
 jmp xchain1288_n2_α
 xchain1288_n1_β:
 jmp xchain1288_n5_β
xchain1288_n1_af:
 jmp xchain1288_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1288_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$43_scanhit
 xchain1288_n2_β:
 sub r12, 24
 jmp xchain1288_n1_β
# IR_MATCH_LIT
 xchain1288_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1288_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1288_n1_af
 add r14d, 1
 jmp xchain1288_n4_α
 xchain1288_n3_β:
 sub r14d, 1
 jmp xchain1288_n1_af
# IR_MATCH_BAL
 xchain1288_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1288_n4_β:
.Lx1298_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1298_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1298_1
 add edx, 1
 jmp .Lx1298_2
.Lx1298_1:
 cmp esi, 41
 jne .Lx1298_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1298_3
.Lx1298_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1298_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1288_n5_α
.Lx1298_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1288_n3_β
# IR_MATCH_LIT
 xchain1288_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1288_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1288_n4_β
 add r14d, 1
 jmp xchain1288_n1_as
 xchain1288_n5_β:
 sub r14d, 1
 jmp xchain1288_n4_β
proc_PAT$43_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$43_γ
proc_PAT$43_scanfail:
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
jmp proc_PAT$43_attempt
8:
jmp proc_PAT$43_ω
proc_PAT$43_res:
add rsp, 8
pop rbp
proc_PAT$43_β:
jmp qword ptr [rbp + 160]
proc_PAT$43_γ:
push rbp
lea rax, [rip + proc_PAT$43_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$43_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$44_α
proc_PAT$44_α:
#=======================================================================================================================
    .global proc_PAT$44_α
    .global proc_PAT$44_β
    .global proc_PAT$44_γ
    .global proc_PAT$44_ω
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
proc_PAT$44_attempt:
proc_PAT$44_α_body:
lea rax, [rip + xchain1301_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1301_n0_α:
 mov rax, qword ptr [1879055296]
 mov rdx, qword ptr [1879055304]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1301_n1_α
# IR_COERCE_STRING
 xchain1301_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1301_n2_α
# IR_MATCH_SPAN
 xchain1301_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1306_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1306_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1306_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1306_0
.Lx1306_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1306_240
 add rsp, 16
 jmp proc_PAT$44_scanfail
.Lx1306_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$44_scanhit
 xchain1301_n2_β:
 xchain1301_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$44_scanfail
proc_PAT$44_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$44_γ
proc_PAT$44_scanfail:
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
jmp proc_PAT$44_attempt
8:
jmp proc_PAT$44_ω
proc_PAT$44_res:
add rsp, 8
pop rbp
proc_PAT$44_β:
jmp qword ptr [rbp + 112]
proc_PAT$44_γ:
push rbp
lea rax, [rip + proc_PAT$44_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$44_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$45_α
proc_PAT$45_α:
#=======================================================================================================================
    .global proc_PAT$45_α
    .global proc_PAT$45_β
    .global proc_PAT$45_γ
    .global proc_PAT$45_ω
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
proc_PAT$45_attempt:
proc_PAT$45_α_body:
lea rax, [rip + xchain1307_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1307_n0_α:
 mov rax, qword ptr [1879055328]
 mov rdx, qword ptr [1879055336]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1307_n1_α
 xchain1307_n0_β:
 jmp proc_PAT$45_scanfail
# IR_COERCE_STRING
 xchain1307_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1307_n2_α
 xchain1307_n1_β:
 jmp proc_PAT$45_scanfail
# IR_VAR
 xchain1307_n2_α:
 mov rax, qword ptr [1879055312]
 mov rdx, qword ptr [1879055320]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1307_n3_α
 xchain1307_n2_β:
 jmp proc_PAT$45_scanfail
# IR_COERCE_STRING
 xchain1307_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1307_n4_α
 xchain1307_n3_β:
 jmp proc_PAT$45_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1307_n4_α:
 jmp xchain1307_n5_α
xchain1307_n4_as:
 jmp proc_PAT$45_γ
 xchain1307_n4_β:
 jmp xchain1307_n6_β
xchain1307_n4_af:
 jmp proc_PAT$45_ω
# IR_MATCH_NOTANY
 xchain1307_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1307_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1307_n4_af
 add r14d, 1
 jmp xchain1307_n6_α
 xchain1307_n5_β:
 sub r14d, 1
 jmp xchain1307_n4_af
# IR_MATCH_BREAK
 xchain1307_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1318_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1318_240
 add rsp, 16
 jmp xchain1307_n5_β
.Lx1318_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1318_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1318_0
.Lx1318_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1307_n4_as
 xchain1307_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1307_n5_β
proc_PAT$45_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$45_γ
proc_PAT$45_scanfail:
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
jmp proc_PAT$45_attempt
8:
jmp proc_PAT$45_ω
proc_PAT$45_res:
add rsp, 8
pop rbp
proc_PAT$45_β:
jmp qword ptr [rbp + 224]
proc_PAT$45_γ:
push rbp
lea rax, [rip + proc_PAT$45_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$45_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$46_α
proc_PAT$46_α:
#=======================================================================================================================
    .global proc_PAT$46_α
    .global proc_PAT$46_β
    .global proc_PAT$46_γ
    .global proc_PAT$46_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$46_attempt:
proc_PAT$46_α_body:
lea rax, [rip + xchain1319_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1319_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1319_n1_α
xchain1319_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1319_n2_α
 cmp eax, 2
 je xchain1319_n4_α
 cmp eax, 3
 je xchain1319_n6_α
 cmp eax, 4
 je xchain1319_n7_α
 cmp eax, 5
 je xchain1319_n9_α
 jmp proc_PAT$46_γ
 xchain1319_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1319_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1319_n1_β
 cmp eax, 1
 je xchain1319_n3_β
 cmp eax, 2
 je xchain1319_n5_β
 cmp eax, 3
 je xchain1319_n6_β
 cmp eax, 4
 je xchain1319_n8_β
 cmp eax, 5
 je xchain1319_n9_β
 jmp proc_PAT$46_ω
# IR_MATCH_LIT
 xchain1319_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1319_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1319_n0_af
 add r14d, 1
 jmp xchain1319_n0_as
 xchain1319_n1_β:
 sub r14d, 1
 jmp xchain1319_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1319_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1319_n10_α
 xchain1319_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1319_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1319_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1319_n0_as
 xchain1319_n3_β:
 sub r12, 24
 jmp xchain1319_n10_β
# IR_LIT_STRING
 xchain1319_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1328_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1319_n11_α
 xchain1319_n4_β:
 jmp xchain1319_n0_af
.Lx1328_0:
 .quad .Lx1328_0_s
.Lx1328_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1319_n5_α:
 mov rax, qword ptr [1879055344]
 mov rdx, qword ptr [1879055352]
 cmp eax, 3
 jne .Lx1329_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1329_10
.Lx1329_9:
 xor eax, eax
.Lx1329_10:
 test rax, rax
 jz .Lx1329_0
 mov r8d, 0
 lea rcx, [rip + .Lx1329_4]
 lea rdx, [rip + .Lx1329_5]
 jmp rax
.Lx1329_4:
 jmp xchain1319_n0_as
.Lx1329_5:
 jmp xchain1319_n0_af
.Lx1329_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S39]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1329_2:
 test rax, rax
 je .Lx1329_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1329_7]
 lea rdx, [rip + .Lx1329_8]
 jmp rax
.Lx1329_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1329_2
.Lx1329_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1329_2
.Lx1329_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1319_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1329_6]
 sub rsp, 8
 push rax
 jmp xchain1319_n0_as
.Lx1329_6:
 add rsp, 16
 jmp xchain1319_n0_af
 xchain1319_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1319_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1319_n0_as
 xchain1319_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1319_n12_α
xchain1319_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1319_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1319_n0_as
xchain1319_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1331_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1319_n12_β
.Lx1331_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1319_n0_af
 xchain1319_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1333_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1333_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1333_6]
 lea rdx, [rip + .Lx1333_7]
 jmp rax
.Lx1333_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1333_2
.Lx1333_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1333_2
.Lx1333_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1333_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1333_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1333_3]
 lea rdx, [rip + .Lx1333_4]
 jmp rax
.Lx1333_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1333_2
.Lx1333_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1333_2
.Lx1333_1:
 call rt_faildescr@PLT
.Lx1333_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1319_n0_af
 jmp xchain1319_n14_α
 xchain1319_n7_β:
 jmp xchain1319_n0_af
.Lx1333_0:
 .quad .Lx1333_0_s
.Lx1333_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1319_n8_α:
 mov rax, qword ptr [1879055376]
 mov rdx, qword ptr [1879055384]
 cmp eax, 3
 jne .Lx1334_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1334_10
.Lx1334_9:
 xor eax, eax
.Lx1334_10:
 test rax, rax
 jz .Lx1334_0
 mov r8d, 0
 lea rcx, [rip + .Lx1334_4]
 lea rdx, [rip + .Lx1334_5]
 jmp rax
.Lx1334_4:
 jmp xchain1319_n0_as
.Lx1334_5:
 jmp xchain1319_n0_af
.Lx1334_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S40]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1334_2:
 test rax, rax
 je .Lx1334_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1334_7]
 lea rdx, [rip + .Lx1334_8]
 jmp rax
.Lx1334_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1334_2
.Lx1334_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1334_2
.Lx1334_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1319_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1334_6]
 sub rsp, 8
 push rax
 jmp xchain1319_n0_as
.Lx1334_6:
 add rsp, 16
 jmp xchain1319_n0_af
 xchain1319_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1319_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1319_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1319_n0_af
 add r14d, 1
 jmp xchain1319_n0_as
 xchain1319_n9_β:
 sub r14d, 1
 jmp xchain1319_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1319_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1337_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1337_10
.Lx1337_9:
 xor eax, eax
.Lx1337_10:
 test rax, rax
 jz .Lx1337_0
 mov r8d, 0
 lea rcx, [rip + .Lx1337_4]
 lea rdx, [rip + .Lx1337_5]
 jmp rax
.Lx1337_4:
 jmp xchain1319_n3_α
.Lx1337_5:
 jmp xchain1319_n2_β
.Lx1337_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1337_2:
 test rax, rax
 je .Lx1337_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1337_7]
 lea rdx, [rip + .Lx1337_8]
 jmp rax
.Lx1337_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1337_2
.Lx1337_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1337_2
.Lx1337_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1319_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1337_6]
 sub rsp, 8
 push rax
 jmp xchain1319_n3_α
.Lx1337_6:
 add rsp, 16
 jmp xchain1319_n2_β
 xchain1319_n10_β:
 jmp qword ptr [rsp]
 xchain1319_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1339_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1339_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1339_6]
 lea rdx, [rip + .Lx1339_7]
 jmp rax
.Lx1339_6:
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
 jmp .Lx1339_2
.Lx1339_7:
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
 jmp .Lx1339_2
.Lx1339_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1339_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1339_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1339_3]
 lea rdx, [rip + .Lx1339_4]
 jmp rax
.Lx1339_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1339_2
.Lx1339_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1339_2
.Lx1339_1:
 call rt_faildescr@PLT
.Lx1339_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1319_n0_af
 jmp xchain1319_n15_α
 xchain1319_n11_β:
 jmp xchain1319_n0_af
.Lx1339_0:
 .quad .Lx1339_0_s
.Lx1339_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1319_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1319_n16_α
xchain1319_n12_as:
 jmp xchain1319_n6_as
 xchain1319_n12_β:
 jmp xchain1319_n17_β
xchain1319_n12_af:
 jmp xchain1319_n6_af
# IR_LIT_STRING
 xchain1319_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1342_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1319_n18_α
 xchain1319_n13_β:
 jmp xchain1319_n20_af
.Lx1342_0:
 .quad .Lx1342_0_s
.Lx1342_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1319_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055376], rax
 mov qword ptr [1879055384], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1319_n8_α
# IR_ASSIGN gva
 xchain1319_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055344], rax
 mov qword ptr [1879055352], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1319_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1319_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1345_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1345_10
.Lx1345_9:
 xor eax, eax
.Lx1345_10:
 test rax, rax
 jz .Lx1345_0
 mov r8d, 0
 lea rcx, [rip + .Lx1345_4]
 lea rdx, [rip + .Lx1345_5]
 jmp rax
.Lx1345_4:
 jmp xchain1319_n17_α
.Lx1345_5:
 jmp xchain1319_n12_af
.Lx1345_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1345_2:
 test rax, rax
 je .Lx1345_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1345_7]
 lea rdx, [rip + .Lx1345_8]
 jmp rax
.Lx1345_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1345_2
.Lx1345_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1345_2
.Lx1345_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1319_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1345_6]
 sub rsp, 8
 push rax
 jmp xchain1319_n17_α
.Lx1345_6:
 add rsp, 16
 jmp xchain1319_n12_af
 xchain1319_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1319_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1319_n19_α
xchain1319_n17_as:
 jmp xchain1319_n12_as
 xchain1319_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1319_n19_β
 jmp xchain1319_n20_β
xchain1319_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1319_n20_α
 jmp xchain1319_n16_β
 xchain1319_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1349_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1349_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1349_6]
 lea rdx, [rip + .Lx1349_7]
 jmp rax
.Lx1349_6:
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
 jmp .Lx1349_2
.Lx1349_7:
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
 jmp .Lx1349_2
.Lx1349_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1349_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1349_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1349_3]
 lea rdx, [rip + .Lx1349_4]
 jmp rax
.Lx1349_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1349_2
.Lx1349_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1349_2
.Lx1349_1:
 call rt_faildescr@PLT
.Lx1349_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1319_n20_af
 jmp xchain1319_n21_α
 xchain1319_n18_β:
 jmp xchain1319_n20_af
.Lx1349_0:
 .quad .Lx1349_0_s
.Lx1349_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1319_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1350_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1350_10
.Lx1350_9:
 xor eax, eax
.Lx1350_10:
 test rax, rax
 jz .Lx1350_0
 mov r8d, 0
 lea rcx, [rip + .Lx1350_4]
 lea rdx, [rip + .Lx1350_5]
 jmp rax
.Lx1350_4:
 jmp xchain1319_n17_as
.Lx1350_5:
 jmp xchain1319_n17_af
.Lx1350_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1350_2:
 test rax, rax
 je .Lx1350_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1350_7]
 lea rdx, [rip + .Lx1350_8]
 jmp rax
.Lx1350_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1350_2
.Lx1350_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1350_2
.Lx1350_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1319_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1350_6]
 sub rsp, 8
 push rax
 jmp xchain1319_n17_as
.Lx1350_6:
 add rsp, 16
 jmp xchain1319_n17_af
 xchain1319_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1319_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1319_n22_α
xchain1319_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1319_n13_α
 jmp xchain1319_n17_as
 xchain1319_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1319_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1319_n23_β
 cmp eax, 1
 je xchain1319_n24_β
 jmp xchain1319_n17_af
# IR_ASSIGN gva
 xchain1319_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055360], rax
 mov qword ptr [1879055368], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1319_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1319_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1319_n25_α
 xchain1319_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1319_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1319_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1319_n20_as
 xchain1319_n23_β:
 sub r12, 24
 jmp xchain1319_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1319_n24_α:
 mov rax, qword ptr [1879055360]
 mov rdx, qword ptr [1879055368]
 cmp eax, 3
 jne .Lx1358_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1358_10
.Lx1358_9:
 xor eax, eax
.Lx1358_10:
 test rax, rax
 jz .Lx1358_0
 mov r8d, 0
 lea rcx, [rip + .Lx1358_4]
 lea rdx, [rip + .Lx1358_5]
 jmp rax
.Lx1358_4:
 jmp xchain1319_n20_as
.Lx1358_5:
 jmp xchain1319_n20_af
.Lx1358_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S41]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1358_2:
 test rax, rax
 je .Lx1358_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1358_7]
 lea rdx, [rip + .Lx1358_8]
 jmp rax
.Lx1358_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1358_2
.Lx1358_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1358_2
.Lx1358_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1319_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1358_6]
 sub rsp, 8
 push rax
 jmp xchain1319_n20_as
.Lx1358_6:
 add rsp, 16
 jmp xchain1319_n20_af
 xchain1319_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1319_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1359_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1359_10
.Lx1359_9:
 xor eax, eax
.Lx1359_10:
 test rax, rax
 jz .Lx1359_0
 mov r8d, 0
 lea rcx, [rip + .Lx1359_4]
 lea rdx, [rip + .Lx1359_5]
 jmp rax
.Lx1359_4:
 jmp xchain1319_n23_α
.Lx1359_5:
 jmp xchain1319_n22_β
.Lx1359_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1359_2:
 test rax, rax
 je .Lx1359_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1359_7]
 lea rdx, [rip + .Lx1359_8]
 jmp rax
.Lx1359_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1359_2
.Lx1359_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1359_2
.Lx1359_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1319_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1359_6]
 sub rsp, 8
 push rax
 jmp xchain1319_n23_α
.Lx1359_6:
 add rsp, 16
 jmp xchain1319_n22_β
 xchain1319_n25_β:
 jmp qword ptr [rsp]
proc_PAT$46_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$46_γ
proc_PAT$46_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$46_attempt
8:
jmp proc_PAT$46_ω
proc_PAT$46_res:
add rsp, 8
pop rbp
proc_PAT$46_β:
jmp qword ptr [rbp + 784]
proc_PAT$46_γ:
push rbp
lea rax, [rip + proc_PAT$46_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$46_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
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
lea rax, [rip + xchain1360_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1360_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1360_n1_α
 xchain1360_n0_β:
 add rsp, 16
 jmp proc_PAT$47_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1360_n1_α:
 jmp xchain1360_n3_α
xchain1360_n1_as:
 jmp xchain1360_n2_α
 xchain1360_n1_β:
 jmp xchain1360_n5_β
xchain1360_n1_af:
 jmp xchain1360_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1360_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$47_scanhit
 xchain1360_n2_β:
 sub r12, 24
 jmp xchain1360_n1_β
# IR_MATCH_LIT
 xchain1360_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1360_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1360_n1_af
 add r14d, 1
 jmp xchain1360_n4_α
 xchain1360_n3_β:
 sub r14d, 1
 jmp xchain1360_n1_af
# IR_MATCH_BAL
 xchain1360_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1360_n4_β:
.Lx1370_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1370_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1370_1
 add edx, 1
 jmp .Lx1370_2
.Lx1370_1:
 cmp esi, 41
 jne .Lx1370_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1370_3
.Lx1370_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1370_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1360_n5_α
.Lx1370_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1360_n3_β
# IR_MATCH_LIT
 xchain1360_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1360_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1360_n4_β
 add r14d, 1
 jmp xchain1360_n1_as
 xchain1360_n5_β:
 sub r14d, 1
 jmp xchain1360_n4_β
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
lea rax, [rip + xchain1373_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1373_n0_α:
 mov rax, qword ptr [1879055392]
 mov rdx, qword ptr [1879055400]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1373_n1_α
# IR_COERCE_STRING
 xchain1373_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1373_n2_α
# IR_MATCH_SPAN
 xchain1373_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1378_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1378_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1378_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1378_0
.Lx1378_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1378_240
 add rsp, 16
 jmp proc_PAT$48_scanfail
.Lx1378_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$48_scanhit
 xchain1373_n2_β:
 xchain1373_n2_β:
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
lea rax, [rip + xchain1379_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1379_n0_α:
 mov rax, qword ptr [1879055424]
 mov rdx, qword ptr [1879055432]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1379_n1_α
 xchain1379_n0_β:
 jmp proc_PAT$49_scanfail
# IR_COERCE_STRING
 xchain1379_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1379_n2_α
 xchain1379_n1_β:
 jmp proc_PAT$49_scanfail
# IR_VAR
 xchain1379_n2_α:
 mov rax, qword ptr [1879055408]
 mov rdx, qword ptr [1879055416]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1379_n3_α
 xchain1379_n2_β:
 jmp proc_PAT$49_scanfail
# IR_COERCE_STRING
 xchain1379_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1379_n4_α
 xchain1379_n3_β:
 jmp proc_PAT$49_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1379_n4_α:
 jmp xchain1379_n5_α
xchain1379_n4_as:
 jmp proc_PAT$49_γ
 xchain1379_n4_β:
 jmp xchain1379_n6_β
xchain1379_n4_af:
 jmp proc_PAT$49_ω
# IR_MATCH_NOTANY
 xchain1379_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1379_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1379_n4_af
 add r14d, 1
 jmp xchain1379_n6_α
 xchain1379_n5_β:
 sub r14d, 1
 jmp xchain1379_n4_af
# IR_MATCH_BREAK
 xchain1379_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1390_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1390_240
 add rsp, 16
 jmp xchain1379_n5_β
.Lx1390_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1390_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1390_0
.Lx1390_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1379_n4_as
 xchain1379_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1379_n5_β
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
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$50_attempt:
proc_PAT$50_α_body:
lea rax, [rip + xchain1391_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1391_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1391_n1_α
xchain1391_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1391_n2_α
 cmp eax, 2
 je xchain1391_n4_α
 cmp eax, 3
 je xchain1391_n6_α
 cmp eax, 4
 je xchain1391_n7_α
 cmp eax, 5
 je xchain1391_n9_α
 jmp proc_PAT$50_γ
 xchain1391_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1391_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1391_n1_β
 cmp eax, 1
 je xchain1391_n3_β
 cmp eax, 2
 je xchain1391_n5_β
 cmp eax, 3
 je xchain1391_n6_β
 cmp eax, 4
 je xchain1391_n8_β
 cmp eax, 5
 je xchain1391_n9_β
 jmp proc_PAT$50_ω
# IR_MATCH_LIT
 xchain1391_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1391_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1391_n0_af
 add r14d, 1
 jmp xchain1391_n0_as
 xchain1391_n1_β:
 sub r14d, 1
 jmp xchain1391_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1391_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1391_n10_α
 xchain1391_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1391_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1391_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1391_n0_as
 xchain1391_n3_β:
 sub r12, 24
 jmp xchain1391_n10_β
# IR_LIT_STRING
 xchain1391_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1400_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1391_n11_α
 xchain1391_n4_β:
 jmp xchain1391_n0_af
.Lx1400_0:
 .quad .Lx1400_0_s
.Lx1400_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1391_n5_α:
 mov rax, qword ptr [1879055440]
 mov rdx, qword ptr [1879055448]
 cmp eax, 3
 jne .Lx1401_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1401_10
.Lx1401_9:
 xor eax, eax
.Lx1401_10:
 test rax, rax
 jz .Lx1401_0
 mov r8d, 0
 lea rcx, [rip + .Lx1401_4]
 lea rdx, [rip + .Lx1401_5]
 jmp rax
.Lx1401_4:
 jmp xchain1391_n0_as
.Lx1401_5:
 jmp xchain1391_n0_af
.Lx1401_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S42]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1401_2:
 test rax, rax
 je .Lx1401_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1401_7]
 lea rdx, [rip + .Lx1401_8]
 jmp rax
.Lx1401_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1401_2
.Lx1401_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1401_2
.Lx1401_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1391_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1401_6]
 sub rsp, 8
 push rax
 jmp xchain1391_n0_as
.Lx1401_6:
 add rsp, 16
 jmp xchain1391_n0_af
 xchain1391_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1391_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1391_n0_as
 xchain1391_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1391_n12_α
xchain1391_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1391_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1391_n0_as
xchain1391_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1403_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1391_n12_β
.Lx1403_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1391_n0_af
 xchain1391_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1405_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1405_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1405_6]
 lea rdx, [rip + .Lx1405_7]
 jmp rax
.Lx1405_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1405_2
.Lx1405_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1405_2
.Lx1405_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1405_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1405_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1405_3]
 lea rdx, [rip + .Lx1405_4]
 jmp rax
.Lx1405_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1405_2
.Lx1405_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1405_2
.Lx1405_1:
 call rt_faildescr@PLT
.Lx1405_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1391_n0_af
 jmp xchain1391_n14_α
 xchain1391_n7_β:
 jmp xchain1391_n0_af
.Lx1405_0:
 .quad .Lx1405_0_s
.Lx1405_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1391_n8_α:
 mov rax, qword ptr [1879055472]
 mov rdx, qword ptr [1879055480]
 cmp eax, 3
 jne .Lx1406_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1406_10
.Lx1406_9:
 xor eax, eax
.Lx1406_10:
 test rax, rax
 jz .Lx1406_0
 mov r8d, 0
 lea rcx, [rip + .Lx1406_4]
 lea rdx, [rip + .Lx1406_5]
 jmp rax
.Lx1406_4:
 jmp xchain1391_n0_as
.Lx1406_5:
 jmp xchain1391_n0_af
.Lx1406_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S43]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1406_2:
 test rax, rax
 je .Lx1406_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1406_7]
 lea rdx, [rip + .Lx1406_8]
 jmp rax
.Lx1406_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1406_2
.Lx1406_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1406_2
.Lx1406_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1391_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1406_6]
 sub rsp, 8
 push rax
 jmp xchain1391_n0_as
.Lx1406_6:
 add rsp, 16
 jmp xchain1391_n0_af
 xchain1391_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1391_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1391_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1391_n0_af
 add r14d, 1
 jmp xchain1391_n0_as
 xchain1391_n9_β:
 sub r14d, 1
 jmp xchain1391_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1391_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1409_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1409_10
.Lx1409_9:
 xor eax, eax
.Lx1409_10:
 test rax, rax
 jz .Lx1409_0
 mov r8d, 0
 lea rcx, [rip + .Lx1409_4]
 lea rdx, [rip + .Lx1409_5]
 jmp rax
.Lx1409_4:
 jmp xchain1391_n3_α
.Lx1409_5:
 jmp xchain1391_n2_β
.Lx1409_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1409_2:
 test rax, rax
 je .Lx1409_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1409_7]
 lea rdx, [rip + .Lx1409_8]
 jmp rax
.Lx1409_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1409_2
.Lx1409_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1409_2
.Lx1409_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1391_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1409_6]
 sub rsp, 8
 push rax
 jmp xchain1391_n3_α
.Lx1409_6:
 add rsp, 16
 jmp xchain1391_n2_β
 xchain1391_n10_β:
 jmp qword ptr [rsp]
 xchain1391_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1411_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1411_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1411_6]
 lea rdx, [rip + .Lx1411_7]
 jmp rax
.Lx1411_6:
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
 jmp .Lx1411_2
.Lx1411_7:
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
 jmp .Lx1411_2
.Lx1411_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1411_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1411_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1411_3]
 lea rdx, [rip + .Lx1411_4]
 jmp rax
.Lx1411_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1411_2
.Lx1411_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1411_2
.Lx1411_1:
 call rt_faildescr@PLT
.Lx1411_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1391_n0_af
 jmp xchain1391_n15_α
 xchain1391_n11_β:
 jmp xchain1391_n0_af
.Lx1411_0:
 .quad .Lx1411_0_s
.Lx1411_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1391_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1391_n16_α
xchain1391_n12_as:
 jmp xchain1391_n6_as
 xchain1391_n12_β:
 jmp xchain1391_n17_β
xchain1391_n12_af:
 jmp xchain1391_n6_af
# IR_LIT_STRING
 xchain1391_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1414_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1391_n18_α
 xchain1391_n13_β:
 jmp xchain1391_n20_af
.Lx1414_0:
 .quad .Lx1414_0_s
.Lx1414_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1391_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055472], rax
 mov qword ptr [1879055480], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1391_n8_α
# IR_ASSIGN gva
 xchain1391_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055440], rax
 mov qword ptr [1879055448], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1391_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1391_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1417_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1417_10
.Lx1417_9:
 xor eax, eax
.Lx1417_10:
 test rax, rax
 jz .Lx1417_0
 mov r8d, 0
 lea rcx, [rip + .Lx1417_4]
 lea rdx, [rip + .Lx1417_5]
 jmp rax
.Lx1417_4:
 jmp xchain1391_n17_α
.Lx1417_5:
 jmp xchain1391_n12_af
.Lx1417_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1417_2:
 test rax, rax
 je .Lx1417_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1417_7]
 lea rdx, [rip + .Lx1417_8]
 jmp rax
.Lx1417_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1417_2
.Lx1417_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1417_2
.Lx1417_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1391_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1417_6]
 sub rsp, 8
 push rax
 jmp xchain1391_n17_α
.Lx1417_6:
 add rsp, 16
 jmp xchain1391_n12_af
 xchain1391_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1391_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1391_n19_α
xchain1391_n17_as:
 jmp xchain1391_n12_as
 xchain1391_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1391_n19_β
 jmp xchain1391_n20_β
xchain1391_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1391_n20_α
 jmp xchain1391_n16_β
 xchain1391_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1421_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1421_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1421_6]
 lea rdx, [rip + .Lx1421_7]
 jmp rax
.Lx1421_6:
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
 jmp .Lx1421_2
.Lx1421_7:
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
 jmp .Lx1421_2
.Lx1421_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1421_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1421_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1421_3]
 lea rdx, [rip + .Lx1421_4]
 jmp rax
.Lx1421_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1421_2
.Lx1421_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1421_2
.Lx1421_1:
 call rt_faildescr@PLT
.Lx1421_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1391_n20_af
 jmp xchain1391_n21_α
 xchain1391_n18_β:
 jmp xchain1391_n20_af
.Lx1421_0:
 .quad .Lx1421_0_s
.Lx1421_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1391_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1422_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1422_10
.Lx1422_9:
 xor eax, eax
.Lx1422_10:
 test rax, rax
 jz .Lx1422_0
 mov r8d, 0
 lea rcx, [rip + .Lx1422_4]
 lea rdx, [rip + .Lx1422_5]
 jmp rax
.Lx1422_4:
 jmp xchain1391_n17_as
.Lx1422_5:
 jmp xchain1391_n17_af
.Lx1422_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1422_2:
 test rax, rax
 je .Lx1422_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1422_7]
 lea rdx, [rip + .Lx1422_8]
 jmp rax
.Lx1422_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1422_2
.Lx1422_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1422_2
.Lx1422_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1391_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1422_6]
 sub rsp, 8
 push rax
 jmp xchain1391_n17_as
.Lx1422_6:
 add rsp, 16
 jmp xchain1391_n17_af
 xchain1391_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1391_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1391_n22_α
xchain1391_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1391_n13_α
 jmp xchain1391_n17_as
 xchain1391_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1391_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1391_n23_β
 cmp eax, 1
 je xchain1391_n24_β
 jmp xchain1391_n17_af
# IR_ASSIGN gva
 xchain1391_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055456], rax
 mov qword ptr [1879055464], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1391_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1391_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1391_n25_α
 xchain1391_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1391_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1391_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1391_n20_as
 xchain1391_n23_β:
 sub r12, 24
 jmp xchain1391_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1391_n24_α:
 mov rax, qword ptr [1879055456]
 mov rdx, qword ptr [1879055464]
 cmp eax, 3
 jne .Lx1430_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1430_10
.Lx1430_9:
 xor eax, eax
.Lx1430_10:
 test rax, rax
 jz .Lx1430_0
 mov r8d, 0
 lea rcx, [rip + .Lx1430_4]
 lea rdx, [rip + .Lx1430_5]
 jmp rax
.Lx1430_4:
 jmp xchain1391_n20_as
.Lx1430_5:
 jmp xchain1391_n20_af
.Lx1430_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S44]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1430_2:
 test rax, rax
 je .Lx1430_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1430_7]
 lea rdx, [rip + .Lx1430_8]
 jmp rax
.Lx1430_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1430_2
.Lx1430_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1430_2
.Lx1430_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1391_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1430_6]
 sub rsp, 8
 push rax
 jmp xchain1391_n20_as
.Lx1430_6:
 add rsp, 16
 jmp xchain1391_n20_af
 xchain1391_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1391_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1431_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1431_10
.Lx1431_9:
 xor eax, eax
.Lx1431_10:
 test rax, rax
 jz .Lx1431_0
 mov r8d, 0
 lea rcx, [rip + .Lx1431_4]
 lea rdx, [rip + .Lx1431_5]
 jmp rax
.Lx1431_4:
 jmp xchain1391_n23_α
.Lx1431_5:
 jmp xchain1391_n22_β
.Lx1431_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1431_2:
 test rax, rax
 je .Lx1431_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1431_7]
 lea rdx, [rip + .Lx1431_8]
 jmp rax
.Lx1431_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1431_2
.Lx1431_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1431_2
.Lx1431_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1391_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1431_6]
 sub rsp, 8
 push rax
 jmp xchain1391_n23_α
.Lx1431_6:
 add rsp, 16
 jmp xchain1391_n22_β
 xchain1391_n25_β:
 jmp qword ptr [rsp]
proc_PAT$50_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$50_γ
proc_PAT$50_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$50_attempt
8:
jmp proc_PAT$50_ω
proc_PAT$50_res:
add rsp, 8
pop rbp
proc_PAT$50_β:
jmp qword ptr [rbp + 784]
proc_PAT$50_γ:
push rbp
lea rax, [rip + proc_PAT$50_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$50_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$51_α
proc_PAT$51_α:
#=======================================================================================================================
    .global proc_PAT$51_α
    .global proc_PAT$51_β
    .global proc_PAT$51_γ
    .global proc_PAT$51_ω
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
proc_PAT$51_attempt:
proc_PAT$51_α_body:
lea rax, [rip + xchain1432_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1432_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1432_n1_α
 xchain1432_n0_β:
 add rsp, 16
 jmp proc_PAT$51_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1432_n1_α:
 jmp xchain1432_n3_α
xchain1432_n1_as:
 jmp xchain1432_n2_α
 xchain1432_n1_β:
 jmp xchain1432_n5_β
xchain1432_n1_af:
 jmp xchain1432_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1432_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$51_scanhit
 xchain1432_n2_β:
 sub r12, 24
 jmp xchain1432_n1_β
# IR_MATCH_LIT
 xchain1432_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1432_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1432_n1_af
 add r14d, 1
 jmp xchain1432_n4_α
 xchain1432_n3_β:
 sub r14d, 1
 jmp xchain1432_n1_af
# IR_MATCH_BAL
 xchain1432_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1432_n4_β:
.Lx1442_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1442_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1442_1
 add edx, 1
 jmp .Lx1442_2
.Lx1442_1:
 cmp esi, 41
 jne .Lx1442_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1442_3
.Lx1442_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1442_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1432_n5_α
.Lx1442_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1432_n3_β
# IR_MATCH_LIT
 xchain1432_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1432_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1432_n4_β
 add r14d, 1
 jmp xchain1432_n1_as
 xchain1432_n5_β:
 sub r14d, 1
 jmp xchain1432_n4_β
proc_PAT$51_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$51_γ
proc_PAT$51_scanfail:
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
jmp proc_PAT$51_attempt
8:
jmp proc_PAT$51_ω
proc_PAT$51_res:
add rsp, 8
pop rbp
proc_PAT$51_β:
jmp qword ptr [rbp + 160]
proc_PAT$51_γ:
push rbp
lea rax, [rip + proc_PAT$51_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$51_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$52_α
proc_PAT$52_α:
#=======================================================================================================================
    .global proc_PAT$52_α
    .global proc_PAT$52_β
    .global proc_PAT$52_γ
    .global proc_PAT$52_ω
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
proc_PAT$52_attempt:
proc_PAT$52_α_body:
lea rax, [rip + xchain1445_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1445_n0_α:
 mov rax, qword ptr [1879055488]
 mov rdx, qword ptr [1879055496]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1445_n1_α
# IR_COERCE_STRING
 xchain1445_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1445_n2_α
# IR_MATCH_SPAN
 xchain1445_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1450_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1450_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1450_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1450_0
.Lx1450_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1450_240
 add rsp, 16
 jmp proc_PAT$52_scanfail
.Lx1450_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$52_scanhit
 xchain1445_n2_β:
 xchain1445_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$52_scanfail
proc_PAT$52_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$52_γ
proc_PAT$52_scanfail:
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
jmp proc_PAT$52_attempt
8:
jmp proc_PAT$52_ω
proc_PAT$52_res:
add rsp, 8
pop rbp
proc_PAT$52_β:
jmp qword ptr [rbp + 112]
proc_PAT$52_γ:
push rbp
lea rax, [rip + proc_PAT$52_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$52_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$53_α
proc_PAT$53_α:
#=======================================================================================================================
    .global proc_PAT$53_α
    .global proc_PAT$53_β
    .global proc_PAT$53_γ
    .global proc_PAT$53_ω
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
proc_PAT$53_attempt:
proc_PAT$53_α_body:
lea rax, [rip + xchain1451_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1451_n0_α:
 mov rax, qword ptr [1879055520]
 mov rdx, qword ptr [1879055528]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1451_n1_α
 xchain1451_n0_β:
 jmp proc_PAT$53_scanfail
# IR_COERCE_STRING
 xchain1451_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1451_n2_α
 xchain1451_n1_β:
 jmp proc_PAT$53_scanfail
# IR_VAR
 xchain1451_n2_α:
 mov rax, qword ptr [1879055504]
 mov rdx, qword ptr [1879055512]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1451_n3_α
 xchain1451_n2_β:
 jmp proc_PAT$53_scanfail
# IR_COERCE_STRING
 xchain1451_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1451_n4_α
 xchain1451_n3_β:
 jmp proc_PAT$53_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1451_n4_α:
 jmp xchain1451_n5_α
xchain1451_n4_as:
 jmp proc_PAT$53_γ
 xchain1451_n4_β:
 jmp xchain1451_n6_β
xchain1451_n4_af:
 jmp proc_PAT$53_ω
# IR_MATCH_NOTANY
 xchain1451_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1451_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1451_n4_af
 add r14d, 1
 jmp xchain1451_n6_α
 xchain1451_n5_β:
 sub r14d, 1
 jmp xchain1451_n4_af
# IR_MATCH_BREAK
 xchain1451_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1462_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1462_240
 add rsp, 16
 jmp xchain1451_n5_β
.Lx1462_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1462_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1462_0
.Lx1462_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1451_n4_as
 xchain1451_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1451_n5_β
proc_PAT$53_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$53_γ
proc_PAT$53_scanfail:
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
jmp proc_PAT$53_attempt
8:
jmp proc_PAT$53_ω
proc_PAT$53_res:
add rsp, 8
pop rbp
proc_PAT$53_β:
jmp qword ptr [rbp + 224]
proc_PAT$53_γ:
push rbp
lea rax, [rip + proc_PAT$53_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$53_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$54_α
proc_PAT$54_α:
#=======================================================================================================================
    .global proc_PAT$54_α
    .global proc_PAT$54_β
    .global proc_PAT$54_γ
    .global proc_PAT$54_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$54_attempt:
proc_PAT$54_α_body:
lea rax, [rip + xchain1463_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1463_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1463_n1_α
xchain1463_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1463_n2_α
 cmp eax, 2
 je xchain1463_n4_α
 cmp eax, 3
 je xchain1463_n6_α
 cmp eax, 4
 je xchain1463_n7_α
 cmp eax, 5
 je xchain1463_n9_α
 jmp proc_PAT$54_γ
 xchain1463_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1463_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1463_n1_β
 cmp eax, 1
 je xchain1463_n3_β
 cmp eax, 2
 je xchain1463_n5_β
 cmp eax, 3
 je xchain1463_n6_β
 cmp eax, 4
 je xchain1463_n8_β
 cmp eax, 5
 je xchain1463_n9_β
 jmp proc_PAT$54_ω
# IR_MATCH_LIT
 xchain1463_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1463_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1463_n0_af
 add r14d, 1
 jmp xchain1463_n0_as
 xchain1463_n1_β:
 sub r14d, 1
 jmp xchain1463_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1463_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1463_n10_α
 xchain1463_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1463_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1463_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1463_n0_as
 xchain1463_n3_β:
 sub r12, 24
 jmp xchain1463_n10_β
# IR_LIT_STRING
 xchain1463_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1472_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1463_n11_α
 xchain1463_n4_β:
 jmp xchain1463_n0_af
.Lx1472_0:
 .quad .Lx1472_0_s
.Lx1472_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1463_n5_α:
 mov rax, qword ptr [1879055536]
 mov rdx, qword ptr [1879055544]
 cmp eax, 3
 jne .Lx1473_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1473_10
.Lx1473_9:
 xor eax, eax
.Lx1473_10:
 test rax, rax
 jz .Lx1473_0
 mov r8d, 0
 lea rcx, [rip + .Lx1473_4]
 lea rdx, [rip + .Lx1473_5]
 jmp rax
.Lx1473_4:
 jmp xchain1463_n0_as
.Lx1473_5:
 jmp xchain1463_n0_af
.Lx1473_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S45]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1473_2:
 test rax, rax
 je .Lx1473_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1473_7]
 lea rdx, [rip + .Lx1473_8]
 jmp rax
.Lx1473_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1473_2
.Lx1473_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1473_2
.Lx1473_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1463_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1473_6]
 sub rsp, 8
 push rax
 jmp xchain1463_n0_as
.Lx1473_6:
 add rsp, 16
 jmp xchain1463_n0_af
 xchain1463_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1463_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1463_n0_as
 xchain1463_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1463_n12_α
xchain1463_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1463_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1463_n0_as
xchain1463_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1475_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1463_n12_β
.Lx1475_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1463_n0_af
 xchain1463_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1477_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1477_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1477_6]
 lea rdx, [rip + .Lx1477_7]
 jmp rax
.Lx1477_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1477_2
.Lx1477_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1477_2
.Lx1477_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1477_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1477_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1477_3]
 lea rdx, [rip + .Lx1477_4]
 jmp rax
.Lx1477_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1477_2
.Lx1477_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1477_2
.Lx1477_1:
 call rt_faildescr@PLT
.Lx1477_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1463_n0_af
 jmp xchain1463_n14_α
 xchain1463_n7_β:
 jmp xchain1463_n0_af
.Lx1477_0:
 .quad .Lx1477_0_s
.Lx1477_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1463_n8_α:
 mov rax, qword ptr [1879055568]
 mov rdx, qword ptr [1879055576]
 cmp eax, 3
 jne .Lx1478_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1478_10
.Lx1478_9:
 xor eax, eax
.Lx1478_10:
 test rax, rax
 jz .Lx1478_0
 mov r8d, 0
 lea rcx, [rip + .Lx1478_4]
 lea rdx, [rip + .Lx1478_5]
 jmp rax
.Lx1478_4:
 jmp xchain1463_n0_as
.Lx1478_5:
 jmp xchain1463_n0_af
.Lx1478_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S46]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1478_2:
 test rax, rax
 je .Lx1478_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1478_7]
 lea rdx, [rip + .Lx1478_8]
 jmp rax
.Lx1478_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1478_2
.Lx1478_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1478_2
.Lx1478_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1463_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1478_6]
 sub rsp, 8
 push rax
 jmp xchain1463_n0_as
.Lx1478_6:
 add rsp, 16
 jmp xchain1463_n0_af
 xchain1463_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1463_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1463_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1463_n0_af
 add r14d, 1
 jmp xchain1463_n0_as
 xchain1463_n9_β:
 sub r14d, 1
 jmp xchain1463_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1463_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1481_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1481_10
.Lx1481_9:
 xor eax, eax
.Lx1481_10:
 test rax, rax
 jz .Lx1481_0
 mov r8d, 0
 lea rcx, [rip + .Lx1481_4]
 lea rdx, [rip + .Lx1481_5]
 jmp rax
.Lx1481_4:
 jmp xchain1463_n3_α
.Lx1481_5:
 jmp xchain1463_n2_β
.Lx1481_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1481_2:
 test rax, rax
 je .Lx1481_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1481_7]
 lea rdx, [rip + .Lx1481_8]
 jmp rax
.Lx1481_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1481_2
.Lx1481_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1481_2
.Lx1481_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1463_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1481_6]
 sub rsp, 8
 push rax
 jmp xchain1463_n3_α
.Lx1481_6:
 add rsp, 16
 jmp xchain1463_n2_β
 xchain1463_n10_β:
 jmp qword ptr [rsp]
 xchain1463_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1483_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1483_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1483_6]
 lea rdx, [rip + .Lx1483_7]
 jmp rax
.Lx1483_6:
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
 jmp .Lx1483_2
.Lx1483_7:
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
 jmp .Lx1483_2
.Lx1483_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1483_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1483_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1483_3]
 lea rdx, [rip + .Lx1483_4]
 jmp rax
.Lx1483_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1483_2
.Lx1483_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1483_2
.Lx1483_1:
 call rt_faildescr@PLT
.Lx1483_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1463_n0_af
 jmp xchain1463_n15_α
 xchain1463_n11_β:
 jmp xchain1463_n0_af
.Lx1483_0:
 .quad .Lx1483_0_s
.Lx1483_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1463_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1463_n16_α
xchain1463_n12_as:
 jmp xchain1463_n6_as
 xchain1463_n12_β:
 jmp xchain1463_n17_β
xchain1463_n12_af:
 jmp xchain1463_n6_af
# IR_LIT_STRING
 xchain1463_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1486_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1463_n18_α
 xchain1463_n13_β:
 jmp xchain1463_n20_af
.Lx1486_0:
 .quad .Lx1486_0_s
.Lx1486_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1463_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055568], rax
 mov qword ptr [1879055576], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1463_n8_α
# IR_ASSIGN gva
 xchain1463_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055536], rax
 mov qword ptr [1879055544], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1463_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1463_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1489_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1489_10
.Lx1489_9:
 xor eax, eax
.Lx1489_10:
 test rax, rax
 jz .Lx1489_0
 mov r8d, 0
 lea rcx, [rip + .Lx1489_4]
 lea rdx, [rip + .Lx1489_5]
 jmp rax
.Lx1489_4:
 jmp xchain1463_n17_α
.Lx1489_5:
 jmp xchain1463_n12_af
.Lx1489_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1489_2:
 test rax, rax
 je .Lx1489_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1489_7]
 lea rdx, [rip + .Lx1489_8]
 jmp rax
.Lx1489_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1489_2
.Lx1489_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1489_2
.Lx1489_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1463_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1489_6]
 sub rsp, 8
 push rax
 jmp xchain1463_n17_α
.Lx1489_6:
 add rsp, 16
 jmp xchain1463_n12_af
 xchain1463_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1463_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1463_n19_α
xchain1463_n17_as:
 jmp xchain1463_n12_as
 xchain1463_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1463_n19_β
 jmp xchain1463_n20_β
xchain1463_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1463_n20_α
 jmp xchain1463_n16_β
 xchain1463_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1493_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1493_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1493_6]
 lea rdx, [rip + .Lx1493_7]
 jmp rax
.Lx1493_6:
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
 jmp .Lx1493_2
.Lx1493_7:
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
 jmp .Lx1493_2
.Lx1493_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1493_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1493_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1493_3]
 lea rdx, [rip + .Lx1493_4]
 jmp rax
.Lx1493_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1493_2
.Lx1493_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1493_2
.Lx1493_1:
 call rt_faildescr@PLT
.Lx1493_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1463_n20_af
 jmp xchain1463_n21_α
 xchain1463_n18_β:
 jmp xchain1463_n20_af
.Lx1493_0:
 .quad .Lx1493_0_s
.Lx1493_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1463_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1494_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1494_10
.Lx1494_9:
 xor eax, eax
.Lx1494_10:
 test rax, rax
 jz .Lx1494_0
 mov r8d, 0
 lea rcx, [rip + .Lx1494_4]
 lea rdx, [rip + .Lx1494_5]
 jmp rax
.Lx1494_4:
 jmp xchain1463_n17_as
.Lx1494_5:
 jmp xchain1463_n17_af
.Lx1494_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1494_2:
 test rax, rax
 je .Lx1494_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1494_7]
 lea rdx, [rip + .Lx1494_8]
 jmp rax
.Lx1494_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1494_2
.Lx1494_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1494_2
.Lx1494_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1463_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1494_6]
 sub rsp, 8
 push rax
 jmp xchain1463_n17_as
.Lx1494_6:
 add rsp, 16
 jmp xchain1463_n17_af
 xchain1463_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1463_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1463_n22_α
xchain1463_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1463_n13_α
 jmp xchain1463_n17_as
 xchain1463_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1463_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1463_n23_β
 cmp eax, 1
 je xchain1463_n24_β
 jmp xchain1463_n17_af
# IR_ASSIGN gva
 xchain1463_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055552], rax
 mov qword ptr [1879055560], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1463_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1463_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1463_n25_α
 xchain1463_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1463_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1463_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1463_n20_as
 xchain1463_n23_β:
 sub r12, 24
 jmp xchain1463_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1463_n24_α:
 mov rax, qword ptr [1879055552]
 mov rdx, qword ptr [1879055560]
 cmp eax, 3
 jne .Lx1502_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1502_10
.Lx1502_9:
 xor eax, eax
.Lx1502_10:
 test rax, rax
 jz .Lx1502_0
 mov r8d, 0
 lea rcx, [rip + .Lx1502_4]
 lea rdx, [rip + .Lx1502_5]
 jmp rax
.Lx1502_4:
 jmp xchain1463_n20_as
.Lx1502_5:
 jmp xchain1463_n20_af
.Lx1502_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S47]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1502_2:
 test rax, rax
 je .Lx1502_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1502_7]
 lea rdx, [rip + .Lx1502_8]
 jmp rax
.Lx1502_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1502_2
.Lx1502_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1502_2
.Lx1502_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1463_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1502_6]
 sub rsp, 8
 push rax
 jmp xchain1463_n20_as
.Lx1502_6:
 add rsp, 16
 jmp xchain1463_n20_af
 xchain1463_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1463_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1503_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1503_10
.Lx1503_9:
 xor eax, eax
.Lx1503_10:
 test rax, rax
 jz .Lx1503_0
 mov r8d, 0
 lea rcx, [rip + .Lx1503_4]
 lea rdx, [rip + .Lx1503_5]
 jmp rax
.Lx1503_4:
 jmp xchain1463_n23_α
.Lx1503_5:
 jmp xchain1463_n22_β
.Lx1503_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1503_2:
 test rax, rax
 je .Lx1503_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1503_7]
 lea rdx, [rip + .Lx1503_8]
 jmp rax
.Lx1503_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1503_2
.Lx1503_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1503_2
.Lx1503_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1463_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1503_6]
 sub rsp, 8
 push rax
 jmp xchain1463_n23_α
.Lx1503_6:
 add rsp, 16
 jmp xchain1463_n22_β
 xchain1463_n25_β:
 jmp qword ptr [rsp]
proc_PAT$54_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$54_γ
proc_PAT$54_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$54_attempt
8:
jmp proc_PAT$54_ω
proc_PAT$54_res:
add rsp, 8
pop rbp
proc_PAT$54_β:
jmp qword ptr [rbp + 784]
proc_PAT$54_γ:
push rbp
lea rax, [rip + proc_PAT$54_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$54_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$55_α
proc_PAT$55_α:
#=======================================================================================================================
    .global proc_PAT$55_α
    .global proc_PAT$55_β
    .global proc_PAT$55_γ
    .global proc_PAT$55_ω
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
proc_PAT$55_attempt:
proc_PAT$55_α_body:
lea rax, [rip + xchain1504_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1504_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1504_n1_α
 xchain1504_n0_β:
 add rsp, 16
 jmp proc_PAT$55_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1504_n1_α:
 jmp xchain1504_n3_α
xchain1504_n1_as:
 jmp xchain1504_n2_α
 xchain1504_n1_β:
 jmp xchain1504_n5_β
xchain1504_n1_af:
 jmp xchain1504_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1504_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$55_scanhit
 xchain1504_n2_β:
 sub r12, 24
 jmp xchain1504_n1_β
# IR_MATCH_LIT
 xchain1504_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1504_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1504_n1_af
 add r14d, 1
 jmp xchain1504_n4_α
 xchain1504_n3_β:
 sub r14d, 1
 jmp xchain1504_n1_af
# IR_MATCH_BAL
 xchain1504_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1504_n4_β:
.Lx1514_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1514_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1514_1
 add edx, 1
 jmp .Lx1514_2
.Lx1514_1:
 cmp esi, 41
 jne .Lx1514_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1514_3
.Lx1514_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1514_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1504_n5_α
.Lx1514_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1504_n3_β
# IR_MATCH_LIT
 xchain1504_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1504_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1504_n4_β
 add r14d, 1
 jmp xchain1504_n1_as
 xchain1504_n5_β:
 sub r14d, 1
 jmp xchain1504_n4_β
proc_PAT$55_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$55_γ
proc_PAT$55_scanfail:
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
jmp proc_PAT$55_attempt
8:
jmp proc_PAT$55_ω
proc_PAT$55_res:
add rsp, 8
pop rbp
proc_PAT$55_β:
jmp qword ptr [rbp + 160]
proc_PAT$55_γ:
push rbp
lea rax, [rip + proc_PAT$55_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$55_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$56_α
proc_PAT$56_α:
#=======================================================================================================================
    .global proc_PAT$56_α
    .global proc_PAT$56_β
    .global proc_PAT$56_γ
    .global proc_PAT$56_ω
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
proc_PAT$56_attempt:
proc_PAT$56_α_body:
lea rax, [rip + xchain1517_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1517_n0_α:
 mov rax, qword ptr [1879055584]
 mov rdx, qword ptr [1879055592]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1517_n1_α
# IR_COERCE_STRING
 xchain1517_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1517_n2_α
# IR_MATCH_SPAN
 xchain1517_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1522_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1522_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1522_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1522_0
.Lx1522_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1522_240
 add rsp, 16
 jmp proc_PAT$56_scanfail
.Lx1522_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$56_scanhit
 xchain1517_n2_β:
 xchain1517_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$56_scanfail
proc_PAT$56_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$56_γ
proc_PAT$56_scanfail:
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
jmp proc_PAT$56_attempt
8:
jmp proc_PAT$56_ω
proc_PAT$56_res:
add rsp, 8
pop rbp
proc_PAT$56_β:
jmp qword ptr [rbp + 112]
proc_PAT$56_γ:
push rbp
lea rax, [rip + proc_PAT$56_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$56_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$57_α
proc_PAT$57_α:
#=======================================================================================================================
    .global proc_PAT$57_α
    .global proc_PAT$57_β
    .global proc_PAT$57_γ
    .global proc_PAT$57_ω
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
proc_PAT$57_attempt:
proc_PAT$57_α_body:
lea rax, [rip + xchain1523_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1523_n0_α:
 mov rax, qword ptr [1879055616]
 mov rdx, qword ptr [1879055624]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1523_n1_α
 xchain1523_n0_β:
 jmp proc_PAT$57_scanfail
# IR_COERCE_STRING
 xchain1523_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1523_n2_α
 xchain1523_n1_β:
 jmp proc_PAT$57_scanfail
# IR_VAR
 xchain1523_n2_α:
 mov rax, qword ptr [1879055600]
 mov rdx, qword ptr [1879055608]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1523_n3_α
 xchain1523_n2_β:
 jmp proc_PAT$57_scanfail
# IR_COERCE_STRING
 xchain1523_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1523_n4_α
 xchain1523_n3_β:
 jmp proc_PAT$57_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1523_n4_α:
 jmp xchain1523_n5_α
xchain1523_n4_as:
 jmp proc_PAT$57_γ
 xchain1523_n4_β:
 jmp xchain1523_n6_β
xchain1523_n4_af:
 jmp proc_PAT$57_ω
# IR_MATCH_NOTANY
 xchain1523_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1523_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1523_n4_af
 add r14d, 1
 jmp xchain1523_n6_α
 xchain1523_n5_β:
 sub r14d, 1
 jmp xchain1523_n4_af
# IR_MATCH_BREAK
 xchain1523_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1534_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1534_240
 add rsp, 16
 jmp xchain1523_n5_β
.Lx1534_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1534_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1534_0
.Lx1534_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1523_n4_as
 xchain1523_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1523_n5_β
proc_PAT$57_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$57_γ
proc_PAT$57_scanfail:
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
jmp proc_PAT$57_attempt
8:
jmp proc_PAT$57_ω
proc_PAT$57_res:
add rsp, 8
pop rbp
proc_PAT$57_β:
jmp qword ptr [rbp + 224]
proc_PAT$57_γ:
push rbp
lea rax, [rip + proc_PAT$57_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$57_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$58_α
proc_PAT$58_α:
#=======================================================================================================================
    .global proc_PAT$58_α
    .global proc_PAT$58_β
    .global proc_PAT$58_γ
    .global proc_PAT$58_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$58_attempt:
proc_PAT$58_α_body:
lea rax, [rip + xchain1535_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1535_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1535_n1_α
xchain1535_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1535_n2_α
 cmp eax, 2
 je xchain1535_n4_α
 cmp eax, 3
 je xchain1535_n6_α
 cmp eax, 4
 je xchain1535_n7_α
 cmp eax, 5
 je xchain1535_n9_α
 jmp proc_PAT$58_γ
 xchain1535_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1535_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1535_n1_β
 cmp eax, 1
 je xchain1535_n3_β
 cmp eax, 2
 je xchain1535_n5_β
 cmp eax, 3
 je xchain1535_n6_β
 cmp eax, 4
 je xchain1535_n8_β
 cmp eax, 5
 je xchain1535_n9_β
 jmp proc_PAT$58_ω
# IR_MATCH_LIT
 xchain1535_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1535_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1535_n0_af
 add r14d, 1
 jmp xchain1535_n0_as
 xchain1535_n1_β:
 sub r14d, 1
 jmp xchain1535_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1535_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1535_n10_α
 xchain1535_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1535_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1535_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1535_n0_as
 xchain1535_n3_β:
 sub r12, 24
 jmp xchain1535_n10_β
# IR_LIT_STRING
 xchain1535_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1544_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1535_n11_α
 xchain1535_n4_β:
 jmp xchain1535_n0_af
.Lx1544_0:
 .quad .Lx1544_0_s
.Lx1544_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1535_n5_α:
 mov rax, qword ptr [1879055632]
 mov rdx, qword ptr [1879055640]
 cmp eax, 3
 jne .Lx1545_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1545_10
.Lx1545_9:
 xor eax, eax
.Lx1545_10:
 test rax, rax
 jz .Lx1545_0
 mov r8d, 0
 lea rcx, [rip + .Lx1545_4]
 lea rdx, [rip + .Lx1545_5]
 jmp rax
.Lx1545_4:
 jmp xchain1535_n0_as
.Lx1545_5:
 jmp xchain1535_n0_af
.Lx1545_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S48]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1545_2:
 test rax, rax
 je .Lx1545_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1545_7]
 lea rdx, [rip + .Lx1545_8]
 jmp rax
.Lx1545_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1545_2
.Lx1545_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1545_2
.Lx1545_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1535_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1545_6]
 sub rsp, 8
 push rax
 jmp xchain1535_n0_as
.Lx1545_6:
 add rsp, 16
 jmp xchain1535_n0_af
 xchain1535_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1535_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1535_n0_as
 xchain1535_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1535_n12_α
xchain1535_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1535_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1535_n0_as
xchain1535_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1547_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1535_n12_β
.Lx1547_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1535_n0_af
 xchain1535_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1549_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1549_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1549_6]
 lea rdx, [rip + .Lx1549_7]
 jmp rax
.Lx1549_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1549_2
.Lx1549_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1549_2
.Lx1549_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1549_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1549_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1549_3]
 lea rdx, [rip + .Lx1549_4]
 jmp rax
.Lx1549_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1549_2
.Lx1549_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1549_2
.Lx1549_1:
 call rt_faildescr@PLT
.Lx1549_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1535_n0_af
 jmp xchain1535_n14_α
 xchain1535_n7_β:
 jmp xchain1535_n0_af
.Lx1549_0:
 .quad .Lx1549_0_s
.Lx1549_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1535_n8_α:
 mov rax, qword ptr [1879055664]
 mov rdx, qword ptr [1879055672]
 cmp eax, 3
 jne .Lx1550_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1550_10
.Lx1550_9:
 xor eax, eax
.Lx1550_10:
 test rax, rax
 jz .Lx1550_0
 mov r8d, 0
 lea rcx, [rip + .Lx1550_4]
 lea rdx, [rip + .Lx1550_5]
 jmp rax
.Lx1550_4:
 jmp xchain1535_n0_as
.Lx1550_5:
 jmp xchain1535_n0_af
.Lx1550_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S49]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1550_2:
 test rax, rax
 je .Lx1550_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1550_7]
 lea rdx, [rip + .Lx1550_8]
 jmp rax
.Lx1550_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1550_2
.Lx1550_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1550_2
.Lx1550_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1535_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1550_6]
 sub rsp, 8
 push rax
 jmp xchain1535_n0_as
.Lx1550_6:
 add rsp, 16
 jmp xchain1535_n0_af
 xchain1535_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1535_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1535_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1535_n0_af
 add r14d, 1
 jmp xchain1535_n0_as
 xchain1535_n9_β:
 sub r14d, 1
 jmp xchain1535_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1535_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1553_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1553_10
.Lx1553_9:
 xor eax, eax
.Lx1553_10:
 test rax, rax
 jz .Lx1553_0
 mov r8d, 0
 lea rcx, [rip + .Lx1553_4]
 lea rdx, [rip + .Lx1553_5]
 jmp rax
.Lx1553_4:
 jmp xchain1535_n3_α
.Lx1553_5:
 jmp xchain1535_n2_β
.Lx1553_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1553_2:
 test rax, rax
 je .Lx1553_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1553_7]
 lea rdx, [rip + .Lx1553_8]
 jmp rax
.Lx1553_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1553_2
.Lx1553_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1553_2
.Lx1553_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1535_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1553_6]
 sub rsp, 8
 push rax
 jmp xchain1535_n3_α
.Lx1553_6:
 add rsp, 16
 jmp xchain1535_n2_β
 xchain1535_n10_β:
 jmp qword ptr [rsp]
 xchain1535_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1555_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1555_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1555_6]
 lea rdx, [rip + .Lx1555_7]
 jmp rax
.Lx1555_6:
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
 jmp .Lx1555_2
.Lx1555_7:
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
 jmp .Lx1555_2
.Lx1555_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1555_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1555_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1555_3]
 lea rdx, [rip + .Lx1555_4]
 jmp rax
.Lx1555_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1555_2
.Lx1555_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1555_2
.Lx1555_1:
 call rt_faildescr@PLT
.Lx1555_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1535_n0_af
 jmp xchain1535_n15_α
 xchain1535_n11_β:
 jmp xchain1535_n0_af
.Lx1555_0:
 .quad .Lx1555_0_s
.Lx1555_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1535_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1535_n16_α
xchain1535_n12_as:
 jmp xchain1535_n6_as
 xchain1535_n12_β:
 jmp xchain1535_n17_β
xchain1535_n12_af:
 jmp xchain1535_n6_af
# IR_LIT_STRING
 xchain1535_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1558_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1535_n18_α
 xchain1535_n13_β:
 jmp xchain1535_n20_af
.Lx1558_0:
 .quad .Lx1558_0_s
.Lx1558_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1535_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055664], rax
 mov qword ptr [1879055672], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1535_n8_α
# IR_ASSIGN gva
 xchain1535_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055632], rax
 mov qword ptr [1879055640], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1535_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1535_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1561_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1561_10
.Lx1561_9:
 xor eax, eax
.Lx1561_10:
 test rax, rax
 jz .Lx1561_0
 mov r8d, 0
 lea rcx, [rip + .Lx1561_4]
 lea rdx, [rip + .Lx1561_5]
 jmp rax
.Lx1561_4:
 jmp xchain1535_n17_α
.Lx1561_5:
 jmp xchain1535_n12_af
.Lx1561_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1561_2:
 test rax, rax
 je .Lx1561_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1561_7]
 lea rdx, [rip + .Lx1561_8]
 jmp rax
.Lx1561_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1561_2
.Lx1561_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1561_2
.Lx1561_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1535_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1561_6]
 sub rsp, 8
 push rax
 jmp xchain1535_n17_α
.Lx1561_6:
 add rsp, 16
 jmp xchain1535_n12_af
 xchain1535_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1535_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1535_n19_α
xchain1535_n17_as:
 jmp xchain1535_n12_as
 xchain1535_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1535_n19_β
 jmp xchain1535_n20_β
xchain1535_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1535_n20_α
 jmp xchain1535_n16_β
 xchain1535_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1565_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1565_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1565_6]
 lea rdx, [rip + .Lx1565_7]
 jmp rax
.Lx1565_6:
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
 jmp .Lx1565_2
.Lx1565_7:
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
 jmp .Lx1565_2
.Lx1565_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1565_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1565_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1565_3]
 lea rdx, [rip + .Lx1565_4]
 jmp rax
.Lx1565_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1565_2
.Lx1565_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1565_2
.Lx1565_1:
 call rt_faildescr@PLT
.Lx1565_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1535_n20_af
 jmp xchain1535_n21_α
 xchain1535_n18_β:
 jmp xchain1535_n20_af
.Lx1565_0:
 .quad .Lx1565_0_s
.Lx1565_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1535_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1566_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1566_10
.Lx1566_9:
 xor eax, eax
.Lx1566_10:
 test rax, rax
 jz .Lx1566_0
 mov r8d, 0
 lea rcx, [rip + .Lx1566_4]
 lea rdx, [rip + .Lx1566_5]
 jmp rax
.Lx1566_4:
 jmp xchain1535_n17_as
.Lx1566_5:
 jmp xchain1535_n17_af
.Lx1566_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1566_2:
 test rax, rax
 je .Lx1566_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1566_7]
 lea rdx, [rip + .Lx1566_8]
 jmp rax
.Lx1566_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1566_2
.Lx1566_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1566_2
.Lx1566_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1535_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1566_6]
 sub rsp, 8
 push rax
 jmp xchain1535_n17_as
.Lx1566_6:
 add rsp, 16
 jmp xchain1535_n17_af
 xchain1535_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1535_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1535_n22_α
xchain1535_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1535_n13_α
 jmp xchain1535_n17_as
 xchain1535_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1535_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1535_n23_β
 cmp eax, 1
 je xchain1535_n24_β
 jmp xchain1535_n17_af
# IR_ASSIGN gva
 xchain1535_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055648], rax
 mov qword ptr [1879055656], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1535_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1535_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1535_n25_α
 xchain1535_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1535_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1535_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1535_n20_as
 xchain1535_n23_β:
 sub r12, 24
 jmp xchain1535_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1535_n24_α:
 mov rax, qword ptr [1879055648]
 mov rdx, qword ptr [1879055656]
 cmp eax, 3
 jne .Lx1574_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1574_10
.Lx1574_9:
 xor eax, eax
.Lx1574_10:
 test rax, rax
 jz .Lx1574_0
 mov r8d, 0
 lea rcx, [rip + .Lx1574_4]
 lea rdx, [rip + .Lx1574_5]
 jmp rax
.Lx1574_4:
 jmp xchain1535_n20_as
.Lx1574_5:
 jmp xchain1535_n20_af
.Lx1574_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S50]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1574_2:
 test rax, rax
 je .Lx1574_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1574_7]
 lea rdx, [rip + .Lx1574_8]
 jmp rax
.Lx1574_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1574_2
.Lx1574_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1574_2
.Lx1574_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1535_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1574_6]
 sub rsp, 8
 push rax
 jmp xchain1535_n20_as
.Lx1574_6:
 add rsp, 16
 jmp xchain1535_n20_af
 xchain1535_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1535_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1575_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1575_10
.Lx1575_9:
 xor eax, eax
.Lx1575_10:
 test rax, rax
 jz .Lx1575_0
 mov r8d, 0
 lea rcx, [rip + .Lx1575_4]
 lea rdx, [rip + .Lx1575_5]
 jmp rax
.Lx1575_4:
 jmp xchain1535_n23_α
.Lx1575_5:
 jmp xchain1535_n22_β
.Lx1575_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1575_2:
 test rax, rax
 je .Lx1575_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1575_7]
 lea rdx, [rip + .Lx1575_8]
 jmp rax
.Lx1575_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1575_2
.Lx1575_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1575_2
.Lx1575_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1535_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1575_6]
 sub rsp, 8
 push rax
 jmp xchain1535_n23_α
.Lx1575_6:
 add rsp, 16
 jmp xchain1535_n22_β
 xchain1535_n25_β:
 jmp qword ptr [rsp]
proc_PAT$58_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$58_γ
proc_PAT$58_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$58_attempt
8:
jmp proc_PAT$58_ω
proc_PAT$58_res:
add rsp, 8
pop rbp
proc_PAT$58_β:
jmp qword ptr [rbp + 784]
proc_PAT$58_γ:
push rbp
lea rax, [rip + proc_PAT$58_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$58_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$59_α
proc_PAT$59_α:
#=======================================================================================================================
    .global proc_PAT$59_α
    .global proc_PAT$59_β
    .global proc_PAT$59_γ
    .global proc_PAT$59_ω
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
proc_PAT$59_attempt:
proc_PAT$59_α_body:
lea rax, [rip + xchain1576_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1576_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1576_n1_α
 xchain1576_n0_β:
 add rsp, 16
 jmp proc_PAT$59_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1576_n1_α:
 jmp xchain1576_n3_α
xchain1576_n1_as:
 jmp xchain1576_n2_α
 xchain1576_n1_β:
 jmp xchain1576_n5_β
xchain1576_n1_af:
 jmp xchain1576_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1576_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$59_scanhit
 xchain1576_n2_β:
 sub r12, 24
 jmp xchain1576_n1_β
# IR_MATCH_LIT
 xchain1576_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1576_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1576_n1_af
 add r14d, 1
 jmp xchain1576_n4_α
 xchain1576_n3_β:
 sub r14d, 1
 jmp xchain1576_n1_af
# IR_MATCH_BAL
 xchain1576_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1576_n4_β:
.Lx1586_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1586_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1586_1
 add edx, 1
 jmp .Lx1586_2
.Lx1586_1:
 cmp esi, 41
 jne .Lx1586_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1586_3
.Lx1586_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1586_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1576_n5_α
.Lx1586_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1576_n3_β
# IR_MATCH_LIT
 xchain1576_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1576_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1576_n4_β
 add r14d, 1
 jmp xchain1576_n1_as
 xchain1576_n5_β:
 sub r14d, 1
 jmp xchain1576_n4_β
proc_PAT$59_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$59_γ
proc_PAT$59_scanfail:
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
jmp proc_PAT$59_attempt
8:
jmp proc_PAT$59_ω
proc_PAT$59_res:
add rsp, 8
pop rbp
proc_PAT$59_β:
jmp qword ptr [rbp + 160]
proc_PAT$59_γ:
push rbp
lea rax, [rip + proc_PAT$59_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$59_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$60_α
proc_PAT$60_α:
#=======================================================================================================================
    .global proc_PAT$60_α
    .global proc_PAT$60_β
    .global proc_PAT$60_γ
    .global proc_PAT$60_ω
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
proc_PAT$60_attempt:
proc_PAT$60_α_body:
lea rax, [rip + xchain1589_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1589_n0_α:
 mov rax, qword ptr [1879055680]
 mov rdx, qword ptr [1879055688]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1589_n1_α
# IR_COERCE_STRING
 xchain1589_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1589_n2_α
# IR_MATCH_SPAN
 xchain1589_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1594_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1594_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1594_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1594_0
.Lx1594_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1594_240
 add rsp, 16
 jmp proc_PAT$60_scanfail
.Lx1594_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$60_scanhit
 xchain1589_n2_β:
 xchain1589_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$60_scanfail
proc_PAT$60_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$60_γ
proc_PAT$60_scanfail:
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
jmp proc_PAT$60_attempt
8:
jmp proc_PAT$60_ω
proc_PAT$60_res:
add rsp, 8
pop rbp
proc_PAT$60_β:
jmp qword ptr [rbp + 112]
proc_PAT$60_γ:
push rbp
lea rax, [rip + proc_PAT$60_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$60_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$61_α
proc_PAT$61_α:
#=======================================================================================================================
    .global proc_PAT$61_α
    .global proc_PAT$61_β
    .global proc_PAT$61_γ
    .global proc_PAT$61_ω
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
proc_PAT$61_attempt:
proc_PAT$61_α_body:
lea rax, [rip + xchain1595_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1595_n0_α:
 mov rax, qword ptr [1879055712]
 mov rdx, qword ptr [1879055720]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1595_n1_α
 xchain1595_n0_β:
 jmp proc_PAT$61_scanfail
# IR_COERCE_STRING
 xchain1595_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1595_n2_α
 xchain1595_n1_β:
 jmp proc_PAT$61_scanfail
# IR_VAR
 xchain1595_n2_α:
 mov rax, qword ptr [1879055696]
 mov rdx, qword ptr [1879055704]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1595_n3_α
 xchain1595_n2_β:
 jmp proc_PAT$61_scanfail
# IR_COERCE_STRING
 xchain1595_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1595_n4_α
 xchain1595_n3_β:
 jmp proc_PAT$61_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1595_n4_α:
 jmp xchain1595_n5_α
xchain1595_n4_as:
 jmp proc_PAT$61_γ
 xchain1595_n4_β:
 jmp xchain1595_n6_β
xchain1595_n4_af:
 jmp proc_PAT$61_ω
# IR_MATCH_NOTANY
 xchain1595_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1595_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1595_n4_af
 add r14d, 1
 jmp xchain1595_n6_α
 xchain1595_n5_β:
 sub r14d, 1
 jmp xchain1595_n4_af
# IR_MATCH_BREAK
 xchain1595_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1606_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1606_240
 add rsp, 16
 jmp xchain1595_n5_β
.Lx1606_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1606_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1606_0
.Lx1606_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1595_n4_as
 xchain1595_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1595_n5_β
proc_PAT$61_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$61_γ
proc_PAT$61_scanfail:
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
jmp proc_PAT$61_attempt
8:
jmp proc_PAT$61_ω
proc_PAT$61_res:
add rsp, 8
pop rbp
proc_PAT$61_β:
jmp qword ptr [rbp + 224]
proc_PAT$61_γ:
push rbp
lea rax, [rip + proc_PAT$61_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$61_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$62_α
proc_PAT$62_α:
#=======================================================================================================================
    .global proc_PAT$62_α
    .global proc_PAT$62_β
    .global proc_PAT$62_γ
    .global proc_PAT$62_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$62_attempt:
proc_PAT$62_α_body:
lea rax, [rip + xchain1607_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1607_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1607_n1_α
xchain1607_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1607_n2_α
 cmp eax, 2
 je xchain1607_n4_α
 cmp eax, 3
 je xchain1607_n6_α
 cmp eax, 4
 je xchain1607_n7_α
 cmp eax, 5
 je xchain1607_n9_α
 jmp proc_PAT$62_γ
 xchain1607_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1607_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1607_n1_β
 cmp eax, 1
 je xchain1607_n3_β
 cmp eax, 2
 je xchain1607_n5_β
 cmp eax, 3
 je xchain1607_n6_β
 cmp eax, 4
 je xchain1607_n8_β
 cmp eax, 5
 je xchain1607_n9_β
 jmp proc_PAT$62_ω
# IR_MATCH_LIT
 xchain1607_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1607_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1607_n0_af
 add r14d, 1
 jmp xchain1607_n0_as
 xchain1607_n1_β:
 sub r14d, 1
 jmp xchain1607_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1607_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1607_n10_α
 xchain1607_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1607_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1607_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1607_n0_as
 xchain1607_n3_β:
 sub r12, 24
 jmp xchain1607_n10_β
# IR_LIT_STRING
 xchain1607_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1616_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1607_n11_α
 xchain1607_n4_β:
 jmp xchain1607_n0_af
.Lx1616_0:
 .quad .Lx1616_0_s
.Lx1616_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1607_n5_α:
 mov rax, qword ptr [1879055728]
 mov rdx, qword ptr [1879055736]
 cmp eax, 3
 jne .Lx1617_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1617_10
.Lx1617_9:
 xor eax, eax
.Lx1617_10:
 test rax, rax
 jz .Lx1617_0
 mov r8d, 0
 lea rcx, [rip + .Lx1617_4]
 lea rdx, [rip + .Lx1617_5]
 jmp rax
.Lx1617_4:
 jmp xchain1607_n0_as
.Lx1617_5:
 jmp xchain1607_n0_af
.Lx1617_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S51]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1617_2:
 test rax, rax
 je .Lx1617_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1617_7]
 lea rdx, [rip + .Lx1617_8]
 jmp rax
.Lx1617_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1617_2
.Lx1617_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1617_2
.Lx1617_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1607_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1617_6]
 sub rsp, 8
 push rax
 jmp xchain1607_n0_as
.Lx1617_6:
 add rsp, 16
 jmp xchain1607_n0_af
 xchain1607_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1607_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1607_n0_as
 xchain1607_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1607_n12_α
xchain1607_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1607_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1607_n0_as
xchain1607_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1619_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1607_n12_β
.Lx1619_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1607_n0_af
 xchain1607_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1621_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1621_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1621_6]
 lea rdx, [rip + .Lx1621_7]
 jmp rax
.Lx1621_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1621_2
.Lx1621_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1621_2
.Lx1621_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1621_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1621_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1621_3]
 lea rdx, [rip + .Lx1621_4]
 jmp rax
.Lx1621_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1621_2
.Lx1621_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1621_2
.Lx1621_1:
 call rt_faildescr@PLT
.Lx1621_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1607_n0_af
 jmp xchain1607_n14_α
 xchain1607_n7_β:
 jmp xchain1607_n0_af
.Lx1621_0:
 .quad .Lx1621_0_s
.Lx1621_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1607_n8_α:
 mov rax, qword ptr [1879055760]
 mov rdx, qword ptr [1879055768]
 cmp eax, 3
 jne .Lx1622_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1622_10
.Lx1622_9:
 xor eax, eax
.Lx1622_10:
 test rax, rax
 jz .Lx1622_0
 mov r8d, 0
 lea rcx, [rip + .Lx1622_4]
 lea rdx, [rip + .Lx1622_5]
 jmp rax
.Lx1622_4:
 jmp xchain1607_n0_as
.Lx1622_5:
 jmp xchain1607_n0_af
.Lx1622_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S52]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1622_2:
 test rax, rax
 je .Lx1622_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1622_7]
 lea rdx, [rip + .Lx1622_8]
 jmp rax
.Lx1622_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1622_2
.Lx1622_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1622_2
.Lx1622_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1607_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1622_6]
 sub rsp, 8
 push rax
 jmp xchain1607_n0_as
.Lx1622_6:
 add rsp, 16
 jmp xchain1607_n0_af
 xchain1607_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1607_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1607_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1607_n0_af
 add r14d, 1
 jmp xchain1607_n0_as
 xchain1607_n9_β:
 sub r14d, 1
 jmp xchain1607_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1607_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1625_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1625_10
.Lx1625_9:
 xor eax, eax
.Lx1625_10:
 test rax, rax
 jz .Lx1625_0
 mov r8d, 0
 lea rcx, [rip + .Lx1625_4]
 lea rdx, [rip + .Lx1625_5]
 jmp rax
.Lx1625_4:
 jmp xchain1607_n3_α
.Lx1625_5:
 jmp xchain1607_n2_β
.Lx1625_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1625_2:
 test rax, rax
 je .Lx1625_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1625_7]
 lea rdx, [rip + .Lx1625_8]
 jmp rax
.Lx1625_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1625_2
.Lx1625_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1625_2
.Lx1625_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1607_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1625_6]
 sub rsp, 8
 push rax
 jmp xchain1607_n3_α
.Lx1625_6:
 add rsp, 16
 jmp xchain1607_n2_β
 xchain1607_n10_β:
 jmp qword ptr [rsp]
 xchain1607_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1627_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1627_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1627_6]
 lea rdx, [rip + .Lx1627_7]
 jmp rax
.Lx1627_6:
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
 jmp .Lx1627_2
.Lx1627_7:
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
 jmp .Lx1627_2
.Lx1627_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1627_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1627_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1627_3]
 lea rdx, [rip + .Lx1627_4]
 jmp rax
.Lx1627_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1627_2
.Lx1627_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1627_2
.Lx1627_1:
 call rt_faildescr@PLT
.Lx1627_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1607_n0_af
 jmp xchain1607_n15_α
 xchain1607_n11_β:
 jmp xchain1607_n0_af
.Lx1627_0:
 .quad .Lx1627_0_s
.Lx1627_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1607_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1607_n16_α
xchain1607_n12_as:
 jmp xchain1607_n6_as
 xchain1607_n12_β:
 jmp xchain1607_n17_β
xchain1607_n12_af:
 jmp xchain1607_n6_af
# IR_LIT_STRING
 xchain1607_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1630_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1607_n18_α
 xchain1607_n13_β:
 jmp xchain1607_n20_af
.Lx1630_0:
 .quad .Lx1630_0_s
.Lx1630_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1607_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055760], rax
 mov qword ptr [1879055768], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1607_n8_α
# IR_ASSIGN gva
 xchain1607_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055728], rax
 mov qword ptr [1879055736], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1607_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1607_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1633_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1633_10
.Lx1633_9:
 xor eax, eax
.Lx1633_10:
 test rax, rax
 jz .Lx1633_0
 mov r8d, 0
 lea rcx, [rip + .Lx1633_4]
 lea rdx, [rip + .Lx1633_5]
 jmp rax
.Lx1633_4:
 jmp xchain1607_n17_α
.Lx1633_5:
 jmp xchain1607_n12_af
.Lx1633_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1633_2:
 test rax, rax
 je .Lx1633_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1633_7]
 lea rdx, [rip + .Lx1633_8]
 jmp rax
.Lx1633_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1633_2
.Lx1633_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1633_2
.Lx1633_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1607_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1633_6]
 sub rsp, 8
 push rax
 jmp xchain1607_n17_α
.Lx1633_6:
 add rsp, 16
 jmp xchain1607_n12_af
 xchain1607_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1607_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1607_n19_α
xchain1607_n17_as:
 jmp xchain1607_n12_as
 xchain1607_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1607_n19_β
 jmp xchain1607_n20_β
xchain1607_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1607_n20_α
 jmp xchain1607_n16_β
 xchain1607_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1637_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1637_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1637_6]
 lea rdx, [rip + .Lx1637_7]
 jmp rax
.Lx1637_6:
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
 jmp .Lx1637_2
.Lx1637_7:
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
 jmp .Lx1637_2
.Lx1637_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1637_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1637_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1637_3]
 lea rdx, [rip + .Lx1637_4]
 jmp rax
.Lx1637_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1637_2
.Lx1637_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1637_2
.Lx1637_1:
 call rt_faildescr@PLT
.Lx1637_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1607_n20_af
 jmp xchain1607_n21_α
 xchain1607_n18_β:
 jmp xchain1607_n20_af
.Lx1637_0:
 .quad .Lx1637_0_s
.Lx1637_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1607_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1638_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1638_10
.Lx1638_9:
 xor eax, eax
.Lx1638_10:
 test rax, rax
 jz .Lx1638_0
 mov r8d, 0
 lea rcx, [rip + .Lx1638_4]
 lea rdx, [rip + .Lx1638_5]
 jmp rax
.Lx1638_4:
 jmp xchain1607_n17_as
.Lx1638_5:
 jmp xchain1607_n17_af
.Lx1638_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1638_2:
 test rax, rax
 je .Lx1638_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1638_7]
 lea rdx, [rip + .Lx1638_8]
 jmp rax
.Lx1638_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1638_2
.Lx1638_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1638_2
.Lx1638_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1607_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1638_6]
 sub rsp, 8
 push rax
 jmp xchain1607_n17_as
.Lx1638_6:
 add rsp, 16
 jmp xchain1607_n17_af
 xchain1607_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1607_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1607_n22_α
xchain1607_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1607_n13_α
 jmp xchain1607_n17_as
 xchain1607_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1607_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1607_n23_β
 cmp eax, 1
 je xchain1607_n24_β
 jmp xchain1607_n17_af
# IR_ASSIGN gva
 xchain1607_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055744], rax
 mov qword ptr [1879055752], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1607_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1607_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1607_n25_α
 xchain1607_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1607_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1607_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1607_n20_as
 xchain1607_n23_β:
 sub r12, 24
 jmp xchain1607_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1607_n24_α:
 mov rax, qword ptr [1879055744]
 mov rdx, qword ptr [1879055752]
 cmp eax, 3
 jne .Lx1646_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1646_10
.Lx1646_9:
 xor eax, eax
.Lx1646_10:
 test rax, rax
 jz .Lx1646_0
 mov r8d, 0
 lea rcx, [rip + .Lx1646_4]
 lea rdx, [rip + .Lx1646_5]
 jmp rax
.Lx1646_4:
 jmp xchain1607_n20_as
.Lx1646_5:
 jmp xchain1607_n20_af
.Lx1646_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S53]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1646_2:
 test rax, rax
 je .Lx1646_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1646_7]
 lea rdx, [rip + .Lx1646_8]
 jmp rax
.Lx1646_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1646_2
.Lx1646_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1646_2
.Lx1646_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1607_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1646_6]
 sub rsp, 8
 push rax
 jmp xchain1607_n20_as
.Lx1646_6:
 add rsp, 16
 jmp xchain1607_n20_af
 xchain1607_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1607_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1647_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1647_10
.Lx1647_9:
 xor eax, eax
.Lx1647_10:
 test rax, rax
 jz .Lx1647_0
 mov r8d, 0
 lea rcx, [rip + .Lx1647_4]
 lea rdx, [rip + .Lx1647_5]
 jmp rax
.Lx1647_4:
 jmp xchain1607_n23_α
.Lx1647_5:
 jmp xchain1607_n22_β
.Lx1647_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1647_2:
 test rax, rax
 je .Lx1647_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1647_7]
 lea rdx, [rip + .Lx1647_8]
 jmp rax
.Lx1647_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1647_2
.Lx1647_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1647_2
.Lx1647_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1607_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1647_6]
 sub rsp, 8
 push rax
 jmp xchain1607_n23_α
.Lx1647_6:
 add rsp, 16
 jmp xchain1607_n22_β
 xchain1607_n25_β:
 jmp qword ptr [rsp]
proc_PAT$62_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$62_γ
proc_PAT$62_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$62_attempt
8:
jmp proc_PAT$62_ω
proc_PAT$62_res:
add rsp, 8
pop rbp
proc_PAT$62_β:
jmp qword ptr [rbp + 784]
proc_PAT$62_γ:
push rbp
lea rax, [rip + proc_PAT$62_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$62_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$63_α
proc_PAT$63_α:
#=======================================================================================================================
    .global proc_PAT$63_α
    .global proc_PAT$63_β
    .global proc_PAT$63_γ
    .global proc_PAT$63_ω
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
proc_PAT$63_attempt:
proc_PAT$63_α_body:
lea rax, [rip + xchain1648_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1648_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1648_n1_α
 xchain1648_n0_β:
 add rsp, 16
 jmp proc_PAT$63_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1648_n1_α:
 jmp xchain1648_n3_α
xchain1648_n1_as:
 jmp xchain1648_n2_α
 xchain1648_n1_β:
 jmp xchain1648_n5_β
xchain1648_n1_af:
 jmp xchain1648_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1648_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$63_scanhit
 xchain1648_n2_β:
 sub r12, 24
 jmp xchain1648_n1_β
# IR_MATCH_LIT
 xchain1648_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1648_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1648_n1_af
 add r14d, 1
 jmp xchain1648_n4_α
 xchain1648_n3_β:
 sub r14d, 1
 jmp xchain1648_n1_af
# IR_MATCH_BAL
 xchain1648_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1648_n4_β:
.Lx1658_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1658_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1658_1
 add edx, 1
 jmp .Lx1658_2
.Lx1658_1:
 cmp esi, 41
 jne .Lx1658_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1658_3
.Lx1658_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1658_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1648_n5_α
.Lx1658_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1648_n3_β
# IR_MATCH_LIT
 xchain1648_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1648_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1648_n4_β
 add r14d, 1
 jmp xchain1648_n1_as
 xchain1648_n5_β:
 sub r14d, 1
 jmp xchain1648_n4_β
proc_PAT$63_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$63_γ
proc_PAT$63_scanfail:
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
jmp proc_PAT$63_attempt
8:
jmp proc_PAT$63_ω
proc_PAT$63_res:
add rsp, 8
pop rbp
proc_PAT$63_β:
jmp qword ptr [rbp + 160]
proc_PAT$63_γ:
push rbp
lea rax, [rip + proc_PAT$63_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$63_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$64_α
proc_PAT$64_α:
#=======================================================================================================================
    .global proc_PAT$64_α
    .global proc_PAT$64_β
    .global proc_PAT$64_γ
    .global proc_PAT$64_ω
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
proc_PAT$64_attempt:
proc_PAT$64_α_body:
lea rax, [rip + xchain1661_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1661_n0_α:
 mov rax, qword ptr [1879055776]
 mov rdx, qword ptr [1879055784]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1661_n1_α
# IR_COERCE_STRING
 xchain1661_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1661_n2_α
# IR_MATCH_SPAN
 xchain1661_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1666_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1666_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1666_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1666_0
.Lx1666_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1666_240
 add rsp, 16
 jmp proc_PAT$64_scanfail
.Lx1666_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$64_scanhit
 xchain1661_n2_β:
 xchain1661_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$64_scanfail
proc_PAT$64_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$64_γ
proc_PAT$64_scanfail:
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
jmp proc_PAT$64_attempt
8:
jmp proc_PAT$64_ω
proc_PAT$64_res:
add rsp, 8
pop rbp
proc_PAT$64_β:
jmp qword ptr [rbp + 112]
proc_PAT$64_γ:
push rbp
lea rax, [rip + proc_PAT$64_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$64_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$65_α
proc_PAT$65_α:
#=======================================================================================================================
    .global proc_PAT$65_α
    .global proc_PAT$65_β
    .global proc_PAT$65_γ
    .global proc_PAT$65_ω
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
proc_PAT$65_attempt:
proc_PAT$65_α_body:
lea rax, [rip + xchain1667_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1667_n0_α:
 mov rax, qword ptr [1879055808]
 mov rdx, qword ptr [1879055816]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1667_n1_α
 xchain1667_n0_β:
 jmp proc_PAT$65_scanfail
# IR_COERCE_STRING
 xchain1667_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1667_n2_α
 xchain1667_n1_β:
 jmp proc_PAT$65_scanfail
# IR_VAR
 xchain1667_n2_α:
 mov rax, qword ptr [1879055792]
 mov rdx, qword ptr [1879055800]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1667_n3_α
 xchain1667_n2_β:
 jmp proc_PAT$65_scanfail
# IR_COERCE_STRING
 xchain1667_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1667_n4_α
 xchain1667_n3_β:
 jmp proc_PAT$65_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1667_n4_α:
 jmp xchain1667_n5_α
xchain1667_n4_as:
 jmp proc_PAT$65_γ
 xchain1667_n4_β:
 jmp xchain1667_n6_β
xchain1667_n4_af:
 jmp proc_PAT$65_ω
# IR_MATCH_NOTANY
 xchain1667_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1667_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1667_n4_af
 add r14d, 1
 jmp xchain1667_n6_α
 xchain1667_n5_β:
 sub r14d, 1
 jmp xchain1667_n4_af
# IR_MATCH_BREAK
 xchain1667_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1678_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1678_240
 add rsp, 16
 jmp xchain1667_n5_β
.Lx1678_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1678_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1678_0
.Lx1678_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1667_n4_as
 xchain1667_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1667_n5_β
proc_PAT$65_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$65_γ
proc_PAT$65_scanfail:
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
jmp proc_PAT$65_attempt
8:
jmp proc_PAT$65_ω
proc_PAT$65_res:
add rsp, 8
pop rbp
proc_PAT$65_β:
jmp qword ptr [rbp + 224]
proc_PAT$65_γ:
push rbp
lea rax, [rip + proc_PAT$65_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$65_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$66_α
proc_PAT$66_α:
#=======================================================================================================================
    .global proc_PAT$66_α
    .global proc_PAT$66_β
    .global proc_PAT$66_γ
    .global proc_PAT$66_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$66_attempt:
proc_PAT$66_α_body:
lea rax, [rip + xchain1679_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1679_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1679_n1_α
xchain1679_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1679_n2_α
 cmp eax, 2
 je xchain1679_n4_α
 cmp eax, 3
 je xchain1679_n6_α
 cmp eax, 4
 je xchain1679_n7_α
 cmp eax, 5
 je xchain1679_n9_α
 jmp proc_PAT$66_γ
 xchain1679_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1679_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1679_n1_β
 cmp eax, 1
 je xchain1679_n3_β
 cmp eax, 2
 je xchain1679_n5_β
 cmp eax, 3
 je xchain1679_n6_β
 cmp eax, 4
 je xchain1679_n8_β
 cmp eax, 5
 je xchain1679_n9_β
 jmp proc_PAT$66_ω
# IR_MATCH_LIT
 xchain1679_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1679_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1679_n0_af
 add r14d, 1
 jmp xchain1679_n0_as
 xchain1679_n1_β:
 sub r14d, 1
 jmp xchain1679_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1679_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1679_n10_α
 xchain1679_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1679_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1679_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1679_n0_as
 xchain1679_n3_β:
 sub r12, 24
 jmp xchain1679_n10_β
# IR_LIT_STRING
 xchain1679_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1688_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1679_n11_α
 xchain1679_n4_β:
 jmp xchain1679_n0_af
.Lx1688_0:
 .quad .Lx1688_0_s
.Lx1688_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1679_n5_α:
 mov rax, qword ptr [1879055824]
 mov rdx, qword ptr [1879055832]
 cmp eax, 3
 jne .Lx1689_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1689_10
.Lx1689_9:
 xor eax, eax
.Lx1689_10:
 test rax, rax
 jz .Lx1689_0
 mov r8d, 0
 lea rcx, [rip + .Lx1689_4]
 lea rdx, [rip + .Lx1689_5]
 jmp rax
.Lx1689_4:
 jmp xchain1679_n0_as
.Lx1689_5:
 jmp xchain1679_n0_af
.Lx1689_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S54]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1689_2:
 test rax, rax
 je .Lx1689_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1689_7]
 lea rdx, [rip + .Lx1689_8]
 jmp rax
.Lx1689_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1689_2
.Lx1689_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1689_2
.Lx1689_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1679_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1689_6]
 sub rsp, 8
 push rax
 jmp xchain1679_n0_as
.Lx1689_6:
 add rsp, 16
 jmp xchain1679_n0_af
 xchain1679_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1679_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1679_n0_as
 xchain1679_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1679_n12_α
xchain1679_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1679_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1679_n0_as
xchain1679_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1691_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1679_n12_β
.Lx1691_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1679_n0_af
 xchain1679_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1693_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1693_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1693_6]
 lea rdx, [rip + .Lx1693_7]
 jmp rax
.Lx1693_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1693_2
.Lx1693_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1693_2
.Lx1693_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1693_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1693_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1693_3]
 lea rdx, [rip + .Lx1693_4]
 jmp rax
.Lx1693_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1693_2
.Lx1693_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1693_2
.Lx1693_1:
 call rt_faildescr@PLT
.Lx1693_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1679_n0_af
 jmp xchain1679_n14_α
 xchain1679_n7_β:
 jmp xchain1679_n0_af
.Lx1693_0:
 .quad .Lx1693_0_s
.Lx1693_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1679_n8_α:
 mov rax, qword ptr [1879055856]
 mov rdx, qword ptr [1879055864]
 cmp eax, 3
 jne .Lx1694_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1694_10
.Lx1694_9:
 xor eax, eax
.Lx1694_10:
 test rax, rax
 jz .Lx1694_0
 mov r8d, 0
 lea rcx, [rip + .Lx1694_4]
 lea rdx, [rip + .Lx1694_5]
 jmp rax
.Lx1694_4:
 jmp xchain1679_n0_as
.Lx1694_5:
 jmp xchain1679_n0_af
.Lx1694_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S55]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1694_2:
 test rax, rax
 je .Lx1694_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1694_7]
 lea rdx, [rip + .Lx1694_8]
 jmp rax
.Lx1694_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1694_2
.Lx1694_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1694_2
.Lx1694_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1679_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1694_6]
 sub rsp, 8
 push rax
 jmp xchain1679_n0_as
.Lx1694_6:
 add rsp, 16
 jmp xchain1679_n0_af
 xchain1679_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1679_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1679_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1679_n0_af
 add r14d, 1
 jmp xchain1679_n0_as
 xchain1679_n9_β:
 sub r14d, 1
 jmp xchain1679_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1679_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1697_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1697_10
.Lx1697_9:
 xor eax, eax
.Lx1697_10:
 test rax, rax
 jz .Lx1697_0
 mov r8d, 0
 lea rcx, [rip + .Lx1697_4]
 lea rdx, [rip + .Lx1697_5]
 jmp rax
.Lx1697_4:
 jmp xchain1679_n3_α
.Lx1697_5:
 jmp xchain1679_n2_β
.Lx1697_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1697_2:
 test rax, rax
 je .Lx1697_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1697_7]
 lea rdx, [rip + .Lx1697_8]
 jmp rax
.Lx1697_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1697_2
.Lx1697_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1697_2
.Lx1697_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1679_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1697_6]
 sub rsp, 8
 push rax
 jmp xchain1679_n3_α
.Lx1697_6:
 add rsp, 16
 jmp xchain1679_n2_β
 xchain1679_n10_β:
 jmp qword ptr [rsp]
 xchain1679_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1699_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1699_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1699_6]
 lea rdx, [rip + .Lx1699_7]
 jmp rax
.Lx1699_6:
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
 jmp .Lx1699_2
.Lx1699_7:
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
 jmp .Lx1699_2
.Lx1699_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1699_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1699_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1699_3]
 lea rdx, [rip + .Lx1699_4]
 jmp rax
.Lx1699_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1699_2
.Lx1699_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1699_2
.Lx1699_1:
 call rt_faildescr@PLT
.Lx1699_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1679_n0_af
 jmp xchain1679_n15_α
 xchain1679_n11_β:
 jmp xchain1679_n0_af
.Lx1699_0:
 .quad .Lx1699_0_s
.Lx1699_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1679_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1679_n16_α
xchain1679_n12_as:
 jmp xchain1679_n6_as
 xchain1679_n12_β:
 jmp xchain1679_n17_β
xchain1679_n12_af:
 jmp xchain1679_n6_af
# IR_LIT_STRING
 xchain1679_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1702_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1679_n18_α
 xchain1679_n13_β:
 jmp xchain1679_n20_af
.Lx1702_0:
 .quad .Lx1702_0_s
.Lx1702_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1679_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055856], rax
 mov qword ptr [1879055864], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1679_n8_α
# IR_ASSIGN gva
 xchain1679_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055824], rax
 mov qword ptr [1879055832], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1679_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1679_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1705_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1705_10
.Lx1705_9:
 xor eax, eax
.Lx1705_10:
 test rax, rax
 jz .Lx1705_0
 mov r8d, 0
 lea rcx, [rip + .Lx1705_4]
 lea rdx, [rip + .Lx1705_5]
 jmp rax
.Lx1705_4:
 jmp xchain1679_n17_α
.Lx1705_5:
 jmp xchain1679_n12_af
.Lx1705_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1705_2:
 test rax, rax
 je .Lx1705_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1705_7]
 lea rdx, [rip + .Lx1705_8]
 jmp rax
.Lx1705_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1705_2
.Lx1705_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1705_2
.Lx1705_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1679_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1705_6]
 sub rsp, 8
 push rax
 jmp xchain1679_n17_α
.Lx1705_6:
 add rsp, 16
 jmp xchain1679_n12_af
 xchain1679_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1679_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1679_n19_α
xchain1679_n17_as:
 jmp xchain1679_n12_as
 xchain1679_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1679_n19_β
 jmp xchain1679_n20_β
xchain1679_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1679_n20_α
 jmp xchain1679_n16_β
 xchain1679_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1709_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1709_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1709_6]
 lea rdx, [rip + .Lx1709_7]
 jmp rax
.Lx1709_6:
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
 jmp .Lx1709_2
.Lx1709_7:
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
 jmp .Lx1709_2
.Lx1709_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1709_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1709_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1709_3]
 lea rdx, [rip + .Lx1709_4]
 jmp rax
.Lx1709_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1709_2
.Lx1709_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1709_2
.Lx1709_1:
 call rt_faildescr@PLT
.Lx1709_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1679_n20_af
 jmp xchain1679_n21_α
 xchain1679_n18_β:
 jmp xchain1679_n20_af
.Lx1709_0:
 .quad .Lx1709_0_s
.Lx1709_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1679_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1710_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1710_10
.Lx1710_9:
 xor eax, eax
.Lx1710_10:
 test rax, rax
 jz .Lx1710_0
 mov r8d, 0
 lea rcx, [rip + .Lx1710_4]
 lea rdx, [rip + .Lx1710_5]
 jmp rax
.Lx1710_4:
 jmp xchain1679_n17_as
.Lx1710_5:
 jmp xchain1679_n17_af
.Lx1710_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1710_2:
 test rax, rax
 je .Lx1710_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1710_7]
 lea rdx, [rip + .Lx1710_8]
 jmp rax
.Lx1710_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1710_2
.Lx1710_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1710_2
.Lx1710_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1679_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1710_6]
 sub rsp, 8
 push rax
 jmp xchain1679_n17_as
.Lx1710_6:
 add rsp, 16
 jmp xchain1679_n17_af
 xchain1679_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1679_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1679_n22_α
xchain1679_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1679_n13_α
 jmp xchain1679_n17_as
 xchain1679_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1679_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1679_n23_β
 cmp eax, 1
 je xchain1679_n24_β
 jmp xchain1679_n17_af
# IR_ASSIGN gva
 xchain1679_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055840], rax
 mov qword ptr [1879055848], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1679_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1679_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1679_n25_α
 xchain1679_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1679_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1679_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1679_n20_as
 xchain1679_n23_β:
 sub r12, 24
 jmp xchain1679_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1679_n24_α:
 mov rax, qword ptr [1879055840]
 mov rdx, qword ptr [1879055848]
 cmp eax, 3
 jne .Lx1718_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1718_10
.Lx1718_9:
 xor eax, eax
.Lx1718_10:
 test rax, rax
 jz .Lx1718_0
 mov r8d, 0
 lea rcx, [rip + .Lx1718_4]
 lea rdx, [rip + .Lx1718_5]
 jmp rax
.Lx1718_4:
 jmp xchain1679_n20_as
.Lx1718_5:
 jmp xchain1679_n20_af
.Lx1718_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S56]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1718_2:
 test rax, rax
 je .Lx1718_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1718_7]
 lea rdx, [rip + .Lx1718_8]
 jmp rax
.Lx1718_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1718_2
.Lx1718_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1718_2
.Lx1718_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1679_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1718_6]
 sub rsp, 8
 push rax
 jmp xchain1679_n20_as
.Lx1718_6:
 add rsp, 16
 jmp xchain1679_n20_af
 xchain1679_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1679_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1719_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1719_10
.Lx1719_9:
 xor eax, eax
.Lx1719_10:
 test rax, rax
 jz .Lx1719_0
 mov r8d, 0
 lea rcx, [rip + .Lx1719_4]
 lea rdx, [rip + .Lx1719_5]
 jmp rax
.Lx1719_4:
 jmp xchain1679_n23_α
.Lx1719_5:
 jmp xchain1679_n22_β
.Lx1719_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1719_2:
 test rax, rax
 je .Lx1719_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1719_7]
 lea rdx, [rip + .Lx1719_8]
 jmp rax
.Lx1719_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1719_2
.Lx1719_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1719_2
.Lx1719_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1679_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1719_6]
 sub rsp, 8
 push rax
 jmp xchain1679_n23_α
.Lx1719_6:
 add rsp, 16
 jmp xchain1679_n22_β
 xchain1679_n25_β:
 jmp qword ptr [rsp]
proc_PAT$66_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$66_γ
proc_PAT$66_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$66_attempt
8:
jmp proc_PAT$66_ω
proc_PAT$66_res:
add rsp, 8
pop rbp
proc_PAT$66_β:
jmp qword ptr [rbp + 784]
proc_PAT$66_γ:
push rbp
lea rax, [rip + proc_PAT$66_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$66_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$67_α
proc_PAT$67_α:
#=======================================================================================================================
    .global proc_PAT$67_α
    .global proc_PAT$67_β
    .global proc_PAT$67_γ
    .global proc_PAT$67_ω
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
proc_PAT$67_attempt:
proc_PAT$67_α_body:
lea rax, [rip + xchain1720_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1720_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1720_n1_α
 xchain1720_n0_β:
 add rsp, 16
 jmp proc_PAT$67_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1720_n1_α:
 jmp xchain1720_n3_α
xchain1720_n1_as:
 jmp xchain1720_n2_α
 xchain1720_n1_β:
 jmp xchain1720_n5_β
xchain1720_n1_af:
 jmp xchain1720_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1720_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$67_scanhit
 xchain1720_n2_β:
 sub r12, 24
 jmp xchain1720_n1_β
# IR_MATCH_LIT
 xchain1720_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1720_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1720_n1_af
 add r14d, 1
 jmp xchain1720_n4_α
 xchain1720_n3_β:
 sub r14d, 1
 jmp xchain1720_n1_af
# IR_MATCH_BAL
 xchain1720_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1720_n4_β:
.Lx1730_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1730_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1730_1
 add edx, 1
 jmp .Lx1730_2
.Lx1730_1:
 cmp esi, 41
 jne .Lx1730_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1730_3
.Lx1730_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1730_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1720_n5_α
.Lx1730_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1720_n3_β
# IR_MATCH_LIT
 xchain1720_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1720_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1720_n4_β
 add r14d, 1
 jmp xchain1720_n1_as
 xchain1720_n5_β:
 sub r14d, 1
 jmp xchain1720_n4_β
proc_PAT$67_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$67_γ
proc_PAT$67_scanfail:
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
jmp proc_PAT$67_attempt
8:
jmp proc_PAT$67_ω
proc_PAT$67_res:
add rsp, 8
pop rbp
proc_PAT$67_β:
jmp qword ptr [rbp + 160]
proc_PAT$67_γ:
push rbp
lea rax, [rip + proc_PAT$67_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$67_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$68_α
proc_PAT$68_α:
#=======================================================================================================================
    .global proc_PAT$68_α
    .global proc_PAT$68_β
    .global proc_PAT$68_γ
    .global proc_PAT$68_ω
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
proc_PAT$68_attempt:
proc_PAT$68_α_body:
lea rax, [rip + xchain1733_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1733_n0_α:
 mov rax, qword ptr [1879055872]
 mov rdx, qword ptr [1879055880]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1733_n1_α
# IR_COERCE_STRING
 xchain1733_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1733_n2_α
# IR_MATCH_SPAN
 xchain1733_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1738_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1738_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1738_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1738_0
.Lx1738_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1738_240
 add rsp, 16
 jmp proc_PAT$68_scanfail
.Lx1738_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$68_scanhit
 xchain1733_n2_β:
 xchain1733_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$68_scanfail
proc_PAT$68_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$68_γ
proc_PAT$68_scanfail:
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
jmp proc_PAT$68_attempt
8:
jmp proc_PAT$68_ω
proc_PAT$68_res:
add rsp, 8
pop rbp
proc_PAT$68_β:
jmp qword ptr [rbp + 112]
proc_PAT$68_γ:
push rbp
lea rax, [rip + proc_PAT$68_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$68_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$69_α
proc_PAT$69_α:
#=======================================================================================================================
    .global proc_PAT$69_α
    .global proc_PAT$69_β
    .global proc_PAT$69_γ
    .global proc_PAT$69_ω
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
proc_PAT$69_attempt:
proc_PAT$69_α_body:
lea rax, [rip + xchain1739_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1739_n0_α:
 mov rax, qword ptr [1879055904]
 mov rdx, qword ptr [1879055912]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1739_n1_α
 xchain1739_n0_β:
 jmp proc_PAT$69_scanfail
# IR_COERCE_STRING
 xchain1739_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1739_n2_α
 xchain1739_n1_β:
 jmp proc_PAT$69_scanfail
# IR_VAR
 xchain1739_n2_α:
 mov rax, qword ptr [1879055888]
 mov rdx, qword ptr [1879055896]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1739_n3_α
 xchain1739_n2_β:
 jmp proc_PAT$69_scanfail
# IR_COERCE_STRING
 xchain1739_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1739_n4_α
 xchain1739_n3_β:
 jmp proc_PAT$69_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1739_n4_α:
 jmp xchain1739_n5_α
xchain1739_n4_as:
 jmp proc_PAT$69_γ
 xchain1739_n4_β:
 jmp xchain1739_n6_β
xchain1739_n4_af:
 jmp proc_PAT$69_ω
# IR_MATCH_NOTANY
 xchain1739_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1739_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1739_n4_af
 add r14d, 1
 jmp xchain1739_n6_α
 xchain1739_n5_β:
 sub r14d, 1
 jmp xchain1739_n4_af
# IR_MATCH_BREAK
 xchain1739_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1750_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1750_240
 add rsp, 16
 jmp xchain1739_n5_β
.Lx1750_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1750_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1750_0
.Lx1750_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1739_n4_as
 xchain1739_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1739_n5_β
proc_PAT$69_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$69_γ
proc_PAT$69_scanfail:
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
jmp proc_PAT$69_attempt
8:
jmp proc_PAT$69_ω
proc_PAT$69_res:
add rsp, 8
pop rbp
proc_PAT$69_β:
jmp qword ptr [rbp + 224]
proc_PAT$69_γ:
push rbp
lea rax, [rip + proc_PAT$69_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$69_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$70_α
proc_PAT$70_α:
#=======================================================================================================================
    .global proc_PAT$70_α
    .global proc_PAT$70_β
    .global proc_PAT$70_γ
    .global proc_PAT$70_ω
  sub rsp, 848
  mov [rsp + 824], rcx
  mov [rsp + 832], rdx
  mov [rsp + 840], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 816
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 808], rsp
mov qword ptr [rbp + 816], r8
mov dword ptr [rbp + 808], r14d
proc_PAT$70_attempt:
proc_PAT$70_α_body:
lea rax, [rip + xchain1751_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1751_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1751_n1_α
xchain1751_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1751_n2_α
 cmp eax, 2
 je xchain1751_n4_α
 cmp eax, 3
 je xchain1751_n6_α
 cmp eax, 4
 je xchain1751_n7_α
 cmp eax, 5
 je xchain1751_n9_α
 jmp proc_PAT$70_γ
 xchain1751_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1751_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1751_n1_β
 cmp eax, 1
 je xchain1751_n3_β
 cmp eax, 2
 je xchain1751_n5_β
 cmp eax, 3
 je xchain1751_n6_β
 cmp eax, 4
 je xchain1751_n8_β
 cmp eax, 5
 je xchain1751_n9_β
 jmp proc_PAT$70_ω
# IR_MATCH_LIT
 xchain1751_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1751_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1751_n0_af
 add r14d, 1
 jmp xchain1751_n0_as
 xchain1751_n1_β:
 sub r14d, 1
 jmp xchain1751_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1751_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1751_n10_α
 xchain1751_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1751_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1751_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1751_n0_as
 xchain1751_n3_β:
 sub r12, 24
 jmp xchain1751_n10_β
# IR_LIT_STRING
 xchain1751_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1760_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1751_n11_α
 xchain1751_n4_β:
 jmp xchain1751_n0_af
.Lx1760_0:
 .quad .Lx1760_0_s
.Lx1760_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1751_n5_α:
 mov rax, qword ptr [1879055920]
 mov rdx, qword ptr [1879055928]
 cmp eax, 3
 jne .Lx1761_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1761_10
.Lx1761_9:
 xor eax, eax
.Lx1761_10:
 test rax, rax
 jz .Lx1761_0
 mov r8d, 0
 lea rcx, [rip + .Lx1761_4]
 lea rdx, [rip + .Lx1761_5]
 jmp rax
.Lx1761_4:
 jmp xchain1751_n0_as
.Lx1761_5:
 jmp xchain1751_n0_af
.Lx1761_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S57]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1761_2:
 test rax, rax
 je .Lx1761_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1761_7]
 lea rdx, [rip + .Lx1761_8]
 jmp rax
.Lx1761_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1761_2
.Lx1761_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1761_2
.Lx1761_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1751_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1761_6]
 sub rsp, 8
 push rax
 jmp xchain1751_n0_as
.Lx1761_6:
 add rsp, 16
 jmp xchain1751_n0_af
 xchain1751_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1751_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1751_n0_as
 xchain1751_n6_β:
 mov r14d, dword ptr [rbp + 292]
 mov rax, qword ptr [rbp + 304]
 sub rsp, 384
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rsp + 64], rax
 mov qword ptr [rsp + 72], rax
 mov qword ptr [rsp + 80], rax
 mov qword ptr [rsp + 88], rax
 mov qword ptr [rsp + 96], rax
 mov qword ptr [rsp + 104], rax
 mov qword ptr [rsp + 112], rax
 mov qword ptr [rsp + 120], rax
 mov qword ptr [rsp + 128], rax
 mov qword ptr [rsp + 136], rax
 mov qword ptr [rsp + 144], rax
 mov qword ptr [rsp + 152], rax
 mov qword ptr [rsp + 160], rax
 mov qword ptr [rsp + 168], rax
 mov qword ptr [rsp + 176], rax
 mov qword ptr [rsp + 184], rax
 mov qword ptr [rsp + 192], rax
 mov qword ptr [rsp + 200], rax
 mov qword ptr [rsp + 208], rax
 mov qword ptr [rsp + 216], rax
 mov qword ptr [rsp + 224], rax
 mov qword ptr [rsp + 232], rax
 mov qword ptr [rsp + 240], rax
 mov qword ptr [rsp + 248], rax
 mov qword ptr [rsp + 256], rax
 mov qword ptr [rsp + 264], rax
 mov qword ptr [rsp + 272], rax
 mov qword ptr [rsp + 280], rax
 mov qword ptr [rsp + 288], rax
 mov qword ptr [rsp + 296], rax
 mov qword ptr [rsp + 304], rax
 mov qword ptr [rsp + 312], rax
 mov qword ptr [rsp + 320], rax
 mov qword ptr [rsp + 328], rax
 mov qword ptr [rsp + 336], rax
 mov qword ptr [rsp + 344], rax
 mov qword ptr [rsp + 352], rax
 mov qword ptr [rsp + 360], rax
 mov qword ptr [rsp + 368], rax
 mov qword ptr [rsp + 376], rax
 mov qword ptr [rbp + 304], rsp
 mov rbp, rsp
 add rbp, -296
 jmp xchain1751_n12_α
xchain1751_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1751_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1751_n0_as
xchain1751_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1763_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1751_n12_β
.Lx1763_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1751_n0_af
 xchain1751_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1765_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1765_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1765_6]
 lea rdx, [rip + .Lx1765_7]
 jmp rax
.Lx1765_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1765_2
.Lx1765_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1765_2
.Lx1765_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1765_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1765_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1765_3]
 lea rdx, [rip + .Lx1765_4]
 jmp rax
.Lx1765_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1765_2
.Lx1765_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1765_2
.Lx1765_1:
 call rt_faildescr@PLT
.Lx1765_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1751_n0_af
 jmp xchain1751_n14_α
 xchain1751_n7_β:
 jmp xchain1751_n0_af
.Lx1765_0:
 .quad .Lx1765_0_s
.Lx1765_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1751_n8_α:
 mov rax, qword ptr [1879055952]
 mov rdx, qword ptr [1879055960]
 cmp eax, 3
 jne .Lx1766_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1766_10
.Lx1766_9:
 xor eax, eax
.Lx1766_10:
 test rax, rax
 jz .Lx1766_0
 mov r8d, 0
 lea rcx, [rip + .Lx1766_4]
 lea rdx, [rip + .Lx1766_5]
 jmp rax
.Lx1766_4:
 jmp xchain1751_n0_as
.Lx1766_5:
 jmp xchain1751_n0_af
.Lx1766_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S58]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1766_2:
 test rax, rax
 je .Lx1766_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1766_7]
 lea rdx, [rip + .Lx1766_8]
 jmp rax
.Lx1766_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1766_2
.Lx1766_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1766_2
.Lx1766_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1751_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1766_6]
 sub rsp, 8
 push rax
 jmp xchain1751_n0_as
.Lx1766_6:
 add rsp, 16
 jmp xchain1751_n0_af
 xchain1751_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1751_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1751_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1751_n0_af
 add r14d, 1
 jmp xchain1751_n0_as
 xchain1751_n9_β:
 sub r14d, 1
 jmp xchain1751_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1751_n10_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1769_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1769_10
.Lx1769_9:
 xor eax, eax
.Lx1769_10:
 test rax, rax
 jz .Lx1769_0
 mov r8d, 0
 lea rcx, [rip + .Lx1769_4]
 lea rdx, [rip + .Lx1769_5]
 jmp rax
.Lx1769_4:
 jmp xchain1751_n3_α
.Lx1769_5:
 jmp xchain1751_n2_β
.Lx1769_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1769_2:
 test rax, rax
 je .Lx1769_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1769_7]
 lea rdx, [rip + .Lx1769_8]
 jmp rax
.Lx1769_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1769_2
.Lx1769_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1769_2
.Lx1769_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1751_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1769_6]
 sub rsp, 8
 push rax
 jmp xchain1751_n3_α
.Lx1769_6:
 add rsp, 16
 jmp xchain1751_n2_β
 xchain1751_n10_β:
 jmp qword ptr [rsp]
 xchain1751_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1771_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1771_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1771_6]
 lea rdx, [rip + .Lx1771_7]
 jmp rax
.Lx1771_6:
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
 jmp .Lx1771_2
.Lx1771_7:
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
 jmp .Lx1771_2
.Lx1771_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1771_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1771_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1771_3]
 lea rdx, [rip + .Lx1771_4]
 jmp rax
.Lx1771_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1771_2
.Lx1771_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1771_2
.Lx1771_1:
 call rt_faildescr@PLT
.Lx1771_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1751_n0_af
 jmp xchain1751_n15_α
 xchain1751_n11_β:
 jmp xchain1751_n0_af
.Lx1771_0:
 .quad .Lx1771_0_s
.Lx1771_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1751_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1751_n16_α
xchain1751_n12_as:
 jmp xchain1751_n6_as
 xchain1751_n12_β:
 jmp xchain1751_n17_β
xchain1751_n12_af:
 jmp xchain1751_n6_af
# IR_LIT_STRING
 xchain1751_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1774_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1751_n18_α
 xchain1751_n13_β:
 jmp xchain1751_n20_af
.Lx1774_0:
 .quad .Lx1774_0_s
.Lx1774_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1751_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055952], rax
 mov qword ptr [1879055960], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1751_n8_α
# IR_ASSIGN gva
 xchain1751_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055920], rax
 mov qword ptr [1879055928], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1751_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1751_n16_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1777_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1777_10
.Lx1777_9:
 xor eax, eax
.Lx1777_10:
 test rax, rax
 jz .Lx1777_0
 mov r8d, 0
 lea rcx, [rip + .Lx1777_4]
 lea rdx, [rip + .Lx1777_5]
 jmp rax
.Lx1777_4:
 jmp xchain1751_n17_α
.Lx1777_5:
 jmp xchain1751_n12_af
.Lx1777_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1777_2:
 test rax, rax
 je .Lx1777_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1777_7]
 lea rdx, [rip + .Lx1777_8]
 jmp rax
.Lx1777_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1777_2
.Lx1777_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1777_2
.Lx1777_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1751_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1777_6]
 sub rsp, 8
 push rax
 jmp xchain1751_n17_α
.Lx1777_6:
 add rsp, 16
 jmp xchain1751_n12_af
 xchain1751_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1751_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1751_n19_α
xchain1751_n17_as:
 jmp xchain1751_n12_as
 xchain1751_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1751_n19_β
 jmp xchain1751_n20_β
xchain1751_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1751_n20_α
 jmp xchain1751_n16_β
 xchain1751_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1781_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1781_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1781_6]
 lea rdx, [rip + .Lx1781_7]
 jmp rax
.Lx1781_6:
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
 jmp .Lx1781_2
.Lx1781_7:
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
 jmp .Lx1781_2
.Lx1781_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1781_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1781_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1781_3]
 lea rdx, [rip + .Lx1781_4]
 jmp rax
.Lx1781_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1781_2
.Lx1781_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1781_2
.Lx1781_1:
 call rt_faildescr@PLT
.Lx1781_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1751_n20_af
 jmp xchain1751_n21_α
 xchain1751_n18_β:
 jmp xchain1751_n20_af
.Lx1781_0:
 .quad .Lx1781_0_s
.Lx1781_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1751_n19_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1782_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1782_10
.Lx1782_9:
 xor eax, eax
.Lx1782_10:
 test rax, rax
 jz .Lx1782_0
 mov r8d, 0
 lea rcx, [rip + .Lx1782_4]
 lea rdx, [rip + .Lx1782_5]
 jmp rax
.Lx1782_4:
 jmp xchain1751_n17_as
.Lx1782_5:
 jmp xchain1751_n17_af
.Lx1782_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1782_2:
 test rax, rax
 je .Lx1782_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1782_7]
 lea rdx, [rip + .Lx1782_8]
 jmp rax
.Lx1782_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1782_2
.Lx1782_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1782_2
.Lx1782_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1751_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1782_6]
 sub rsp, 8
 push rax
 jmp xchain1751_n17_as
.Lx1782_6:
 add rsp, 16
 jmp xchain1751_n17_af
 xchain1751_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1751_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1751_n22_α
xchain1751_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1751_n13_α
 jmp xchain1751_n17_as
 xchain1751_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1751_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1751_n23_β
 cmp eax, 1
 je xchain1751_n24_β
 jmp xchain1751_n17_af
# IR_ASSIGN gva
 xchain1751_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055936], rax
 mov qword ptr [1879055944], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1751_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1751_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1751_n25_α
 xchain1751_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1751_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1751_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1751_n20_as
 xchain1751_n23_β:
 sub r12, 24
 jmp xchain1751_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1751_n24_α:
 mov rax, qword ptr [1879055936]
 mov rdx, qword ptr [1879055944]
 cmp eax, 3
 jne .Lx1790_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1790_10
.Lx1790_9:
 xor eax, eax
.Lx1790_10:
 test rax, rax
 jz .Lx1790_0
 mov r8d, 0
 lea rcx, [rip + .Lx1790_4]
 lea rdx, [rip + .Lx1790_5]
 jmp rax
.Lx1790_4:
 jmp xchain1751_n20_as
.Lx1790_5:
 jmp xchain1751_n20_af
.Lx1790_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S59]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1790_2:
 test rax, rax
 je .Lx1790_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1790_7]
 lea rdx, [rip + .Lx1790_8]
 jmp rax
.Lx1790_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1790_2
.Lx1790_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1790_2
.Lx1790_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1751_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1790_6]
 sub rsp, 8
 push rax
 jmp xchain1751_n20_as
.Lx1790_6:
 add rsp, 16
 jmp xchain1751_n20_af
 xchain1751_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1751_n25_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1791_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1791_10
.Lx1791_9:
 xor eax, eax
.Lx1791_10:
 test rax, rax
 jz .Lx1791_0
 mov r8d, 0
 lea rcx, [rip + .Lx1791_4]
 lea rdx, [rip + .Lx1791_5]
 jmp rax
.Lx1791_4:
 jmp xchain1751_n23_α
.Lx1791_5:
 jmp xchain1751_n22_β
.Lx1791_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1791_2:
 test rax, rax
 je .Lx1791_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1791_7]
 lea rdx, [rip + .Lx1791_8]
 jmp rax
.Lx1791_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1791_2
.Lx1791_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1791_2
.Lx1791_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1751_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1791_6]
 sub rsp, 8
 push rax
 jmp xchain1751_n23_α
.Lx1791_6:
 add rsp, 16
 jmp xchain1751_n22_β
 xchain1751_n25_β:
 jmp qword ptr [rsp]
proc_PAT$70_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$70_γ
proc_PAT$70_scanfail:
cmp qword ptr [rbp + 816], 1
jne 8f
mov eax, dword ptr [rbp + 808]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 808], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$70_attempt
8:
jmp proc_PAT$70_ω
proc_PAT$70_res:
add rsp, 8
pop rbp
proc_PAT$70_β:
jmp qword ptr [rbp + 784]
proc_PAT$70_γ:
push rbp
lea rax, [rip + proc_PAT$70_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$70_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$71_α
proc_PAT$71_α:
#=======================================================================================================================
    .global proc_PAT$71_α
    .global proc_PAT$71_β
    .global proc_PAT$71_γ
    .global proc_PAT$71_ω
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
proc_PAT$71_attempt:
proc_PAT$71_α_body:
lea rax, [rip + xchain1792_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1792_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1792_n1_α
 xchain1792_n0_β:
 add rsp, 16
 jmp proc_PAT$71_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1792_n1_α:
 jmp xchain1792_n3_α
xchain1792_n1_as:
 jmp xchain1792_n2_α
 xchain1792_n1_β:
 jmp xchain1792_n5_β
xchain1792_n1_af:
 jmp xchain1792_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1792_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$71_scanhit
 xchain1792_n2_β:
 sub r12, 24
 jmp xchain1792_n1_β
# IR_MATCH_LIT
 xchain1792_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1792_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1792_n1_af
 add r14d, 1
 jmp xchain1792_n4_α
 xchain1792_n3_β:
 sub r14d, 1
 jmp xchain1792_n1_af
# IR_MATCH_BAL
 xchain1792_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1792_n4_β:
.Lx1802_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1802_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1802_1
 add edx, 1
 jmp .Lx1802_2
.Lx1802_1:
 cmp esi, 41
 jne .Lx1802_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1802_3
.Lx1802_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1802_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1792_n5_α
.Lx1802_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1792_n3_β
# IR_MATCH_LIT
 xchain1792_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1792_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1792_n4_β
 add r14d, 1
 jmp xchain1792_n1_as
 xchain1792_n5_β:
 sub r14d, 1
 jmp xchain1792_n4_β
proc_PAT$71_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$71_γ
proc_PAT$71_scanfail:
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
jmp proc_PAT$71_attempt
8:
jmp proc_PAT$71_ω
proc_PAT$71_res:
add rsp, 8
pop rbp
proc_PAT$71_β:
jmp qword ptr [rbp + 160]
proc_PAT$71_γ:
push rbp
lea rax, [rip + proc_PAT$71_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$71_ω:
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  mov esi, 13264
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
  .Lstartup_pname35: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname35]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname35]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname36: .string "PAT$1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname36]
  lea rsi, [rip + proc_PAT$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname36]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname37: .string "PAT$2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname37]
  lea rsi, [rip + proc_PAT$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname37]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname38: .string "PAT$3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname38]
  lea rsi, [rip + proc_PAT$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname38]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname39: .string "PAT$4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname39]
  lea rsi, [rip + proc_PAT$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname39]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname40: .string "PAT$5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname40]
  lea rsi, [rip + proc_PAT$5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname40]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname41: .string "PAT$6"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname41]
  lea rsi, [rip + proc_PAT$6_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname41]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname42: .string "PAT$7"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname42]
  lea rsi, [rip + proc_PAT$7_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname42]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname43: .string "PAT$8"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname43]
  lea rsi, [rip + proc_PAT$8_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname43]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname44: .string "PAT$9"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname44]
  lea rsi, [rip + proc_PAT$9_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname44]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname45: .string "PAT$10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname45]
  lea rsi, [rip + proc_PAT$10_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname45]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname46: .string "PAT$11"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname46]
  lea rsi, [rip + proc_PAT$11_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname46]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname47: .string "PAT$12"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname47]
  lea rsi, [rip + proc_PAT$12_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname47]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname48: .string "PAT$13"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname48]
  lea rsi, [rip + proc_PAT$13_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname48]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname49: .string "PAT$14"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname49]
  lea rsi, [rip + proc_PAT$14_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname49]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname50: .string "PAT$15"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname50]
  lea rsi, [rip + proc_PAT$15_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname50]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname51: .string "PAT$16"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname51]
  lea rsi, [rip + proc_PAT$16_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname51]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname52: .string "PAT$17"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname52]
  lea rsi, [rip + proc_PAT$17_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname52]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname53: .string "PAT$18"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname53]
  lea rsi, [rip + proc_PAT$18_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname53]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname54: .string "PAT$19"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname54]
  lea rsi, [rip + proc_PAT$19_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname54]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname55: .string "PAT$20"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname55]
  lea rsi, [rip + proc_PAT$20_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname55]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname56: .string "PAT$21"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname56]
  lea rsi, [rip + proc_PAT$21_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname56]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname57: .string "PAT$22"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname57]
  lea rsi, [rip + proc_PAT$22_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname57]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname58: .string "PAT$23"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname58]
  lea rsi, [rip + proc_PAT$23_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname58]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname59: .string "PAT$24"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname59]
  lea rsi, [rip + proc_PAT$24_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname59]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname60: .string "PAT$25"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname60]
  lea rsi, [rip + proc_PAT$25_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname60]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname61: .string "PAT$26"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname61]
  lea rsi, [rip + proc_PAT$26_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname61]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname62: .string "PAT$27"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname62]
  lea rsi, [rip + proc_PAT$27_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname62]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname63: .string "PAT$28"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname63]
  lea rsi, [rip + proc_PAT$28_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname63]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname64: .string "PAT$29"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname64]
  lea rsi, [rip + proc_PAT$29_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname64]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname65: .string "PAT$30"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname65]
  lea rsi, [rip + proc_PAT$30_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname65]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname66: .string "PAT$31"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname66]
  lea rsi, [rip + proc_PAT$31_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname66]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname67: .string "PAT$32"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname67]
  lea rsi, [rip + proc_PAT$32_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname67]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname68: .string "PAT$33"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname68]
  lea rsi, [rip + proc_PAT$33_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname68]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname69: .string "PAT$34"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname69]
  lea rsi, [rip + proc_PAT$34_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname69]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname70: .string "PAT$35"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname70]
  lea rsi, [rip + proc_PAT$35_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname70]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname71: .string "PAT$36"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname71]
  lea rsi, [rip + proc_PAT$36_α]
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
  .Lstartup_pname72: .string "PAT$37"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname72]
  lea rsi, [rip + proc_PAT$37_α]
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
  .Lstartup_pname73: .string "PAT$38"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname73]
  lea rsi, [rip + proc_PAT$38_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname74: .string "PAT$39"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname74]
  lea rsi, [rip + proc_PAT$39_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname75: .string "PAT$40"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname75]
  lea rsi, [rip + proc_PAT$40_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname76: .string "PAT$41"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname76]
  lea rsi, [rip + proc_PAT$41_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname77: .string "PAT$42"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname77]
  lea rsi, [rip + proc_PAT$42_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname78: .string "PAT$43"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname78]
  lea rsi, [rip + proc_PAT$43_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname79: .string "PAT$44"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname79]
  lea rsi, [rip + proc_PAT$44_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname80: .string "PAT$45"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname80]
  lea rsi, [rip + proc_PAT$45_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname81: .string "PAT$46"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname81]
  lea rsi, [rip + proc_PAT$46_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname82: .string "PAT$47"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname82]
  lea rsi, [rip + proc_PAT$47_α]
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
  .Lstartup_pname83: .string "PAT$48"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname83]
  lea rsi, [rip + proc_PAT$48_α]
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
  .Lstartup_pname84: .string "PAT$49"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname84]
  lea rsi, [rip + proc_PAT$49_α]
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
  .Lstartup_pname85: .string "PAT$50"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname85]
  lea rsi, [rip + proc_PAT$50_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname86: .string "PAT$51"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname86]
  lea rsi, [rip + proc_PAT$51_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname87: .string "PAT$52"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname87]
  lea rsi, [rip + proc_PAT$52_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname88: .string "PAT$53"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname88]
  lea rsi, [rip + proc_PAT$53_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname89: .string "PAT$54"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname89]
  lea rsi, [rip + proc_PAT$54_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname90: .string "PAT$55"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname90]
  lea rsi, [rip + proc_PAT$55_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname91: .string "PAT$56"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname91]
  lea rsi, [rip + proc_PAT$56_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname92: .string "PAT$57"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname92]
  lea rsi, [rip + proc_PAT$57_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname93: .string "PAT$58"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname93]
  lea rsi, [rip + proc_PAT$58_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname94: .string "PAT$59"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname94]
  lea rsi, [rip + proc_PAT$59_α]
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
  .Lstartup_pname95: .string "PAT$60"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname95]
  lea rsi, [rip + proc_PAT$60_α]
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
  .Lstartup_pname96: .string "PAT$61"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname96]
  lea rsi, [rip + proc_PAT$61_α]
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
  .Lstartup_pname97: .string "PAT$62"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname97]
  lea rsi, [rip + proc_PAT$62_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname98: .string "PAT$63"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname98]
  lea rsi, [rip + proc_PAT$63_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname99: .string "PAT$64"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname99]
  lea rsi, [rip + proc_PAT$64_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname100: .string "PAT$65"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname100]
  lea rsi, [rip + proc_PAT$65_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname101: .string "PAT$66"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname101]
  lea rsi, [rip + proc_PAT$66_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname102: .string "PAT$67"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname102]
  lea rsi, [rip + proc_PAT$67_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname103: .string "PAT$68"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname103]
  lea rsi, [rip + proc_PAT$68_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname104: .string "PAT$69"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname104]
  lea rsi, [rip + proc_PAT$69_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname105: .string "PAT$70"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname105]
  lea rsi, [rip + proc_PAT$70_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname106: .string "PAT$71"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname106]
  lea rsi, [rip + proc_PAT$71_α]
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
  .Lgvan45: .string "PATTMP$P0"
  .Lgvan46: .string "wrd"
  .Lgvan47: .string "PATTMP$P1"
  .Lgvan48: .string "PATTMP$P2"
  .Lgvan49: .string "spat"
  .Lgvan50: .string "item"
  .Lgvan51: .string "line"
  .Lgvan52: .string "src"
  .Lgvan53: .string "PATTMP$P3"
  .Lgvan54: .string "PATTMP$P4"
  .Lgvan55: .string "PATTMP$P5"
  .Lgvan56: .string "PATTMP$P6"
  .Lgvan57: .string "PATTMP$P7"
  .Lgvan58: .string "PATTMP$P8"
  .Lgvan59: .string "PATTMP$P9"
  .Lgvan60: .string "PATTMP$P10"
  .Lgvan61: .string "PATTMP$P11"
  .Lgvan62: .string "PATTMP$P12"
  .Lgvan63: .string "PATTMP$P13"
  .Lgvan64: .string "PATTMP$P14"
  .Lgvan65: .string "PATTMP$P15"
  .Lgvan66: .string "PATTMP$P16"
  .Lgvan67: .string "PATTMP$P17"
  .Lgvan68: .string "PATTMP$P18"
  .Lgvan69: .string "PATTMP$P19"
  .Lgvan70: .string "PATTMP$P20"
  .Lgvan71: .string "PATTMP$P21"
  .Lgvan72: .string "PATTMP$P22"
  .Lgvan73: .string "PATTMP$P23"
  .Lgvan74: .string "PATTMP$P24"
  .Lgvan75: .string "PATTMP$P25"
  .Lgvan76: .string "PATTMP$P26"
  .Lgvan77: .string "PATTMP$P27"
  .Lgvan78: .string "PATTMP$P28"
  .Lgvan79: .string "PATTMP$P29"
  .Lgvan80: .string "PATTMP$P30"
  .Lgvan81: .string "PATTMP$P31"
  .Lgvan82: .string "PATTMP$P32"
  .Lgvan83: .string "PATTMP$P33"
  .Lgvan84: .string "PATTMP$P34"
  .Lgvan85: .string "PATTMP$P35"
  .Lgvan86: .string "PATTMP$P36"
  .Lgvan87: .string "PATTMP$P37"
  .Lgvan88: .string "PATTMP$P38"
  .Lgvan89: .string "PATTMP$P39"
  .Lgvan90: .string "PATTMP$P40"
  .Lgvan91: .string "PATTMP$P41"
  .Lgvan92: .string "PATTMP$P42"
  .Lgvan93: .string "PATTMP$P43"
  .Lgvan94: .string "PATTMP$P44"
  .Lgvan95: .string "PATTMP$P45"
  .Lgvan96: .string "PATTMP$P46"
  .Lgvan97: .string "PATTMP$P47"
  .Lgvan98: .string "PATTMP$P48"
  .Lgvan99: .string "PATTMP$P49"
  .Lgvan100: .string "PATTMP$P50"
  .Lgvan101: .string "PATTMP$P51"
  .Lgvan102: .string "PATTMP$P52"
  .Lgvan103: .string "PATTMP$P53"
  .Lgvan104: .string "EXPR$0"
  .Lgvan105: .string "EXPR$1"
  .Lgvan106: .string "EXPR$2"
  .Lgvan107: .string "EXPR$3"
  .Lgvan108: .string "EXPR$4"
  .Lgvan109: .string "EXPR$5"
  .Lgvan110: .string "EXPR$6"
  .Lgvan111: .string "EXPR$7"
  .Lgvan112: .string "EXPR$8"
  .Lgvan113: .string "EXPR$9"
  .Lgvan114: .string "EXPR$10"
  .Lgvan115: .string "EXPR$11"
  .Lgvan116: .string "EXPR$12"
  .Lgvan117: .string "EXPR$13"
  .Lgvan118: .string "EXPR$14"
  .Lgvan119: .string "EXPR$15"
  .Lgvan120: .string "EXPR$16"
  .Lgvan121: .string "EXPR$17"
  .Lgvan122: .string "PAT$0$A0"
  .Lgvan123: .string "PAT$1$A0"
  .Lgvan124: .string "PAT$1$A1"
  .Lgvan125: .string "PATTMP$P54"
  .Lgvan126: .string "PATTMP$P55"
  .Lgvan127: .string "PATTMP$P56"
  .Lgvan128: .string "PAT$4$A0"
  .Lgvan129: .string "PAT$5$A0"
  .Lgvan130: .string "PAT$5$A1"
  .Lgvan131: .string "PATTMP$P57"
  .Lgvan132: .string "PATTMP$P58"
  .Lgvan133: .string "PATTMP$P59"
  .Lgvan134: .string "PAT$8$A0"
  .Lgvan135: .string "PAT$9$A0"
  .Lgvan136: .string "PAT$9$A1"
  .Lgvan137: .string "PATTMP$P60"
  .Lgvan138: .string "PATTMP$P61"
  .Lgvan139: .string "PATTMP$P62"
  .Lgvan140: .string "PAT$12$A0"
  .Lgvan141: .string "PAT$13$A0"
  .Lgvan142: .string "PAT$13$A1"
  .Lgvan143: .string "PATTMP$P63"
  .Lgvan144: .string "PATTMP$P64"
  .Lgvan145: .string "PATTMP$P65"
  .Lgvan146: .string "PAT$16$A0"
  .Lgvan147: .string "PAT$17$A0"
  .Lgvan148: .string "PAT$17$A1"
  .Lgvan149: .string "PATTMP$P66"
  .Lgvan150: .string "PATTMP$P67"
  .Lgvan151: .string "PATTMP$P68"
  .Lgvan152: .string "PAT$20$A0"
  .Lgvan153: .string "PAT$21$A0"
  .Lgvan154: .string "PAT$21$A1"
  .Lgvan155: .string "PATTMP$P69"
  .Lgvan156: .string "PATTMP$P70"
  .Lgvan157: .string "PATTMP$P71"
  .Lgvan158: .string "PAT$24$A0"
  .Lgvan159: .string "PAT$25$A0"
  .Lgvan160: .string "PAT$25$A1"
  .Lgvan161: .string "PATTMP$P72"
  .Lgvan162: .string "PATTMP$P73"
  .Lgvan163: .string "PATTMP$P74"
  .Lgvan164: .string "PAT$28$A0"
  .Lgvan165: .string "PAT$29$A0"
  .Lgvan166: .string "PAT$29$A1"
  .Lgvan167: .string "PATTMP$P75"
  .Lgvan168: .string "PATTMP$P76"
  .Lgvan169: .string "PATTMP$P77"
  .Lgvan170: .string "PAT$32$A0"
  .Lgvan171: .string "PAT$33$A0"
  .Lgvan172: .string "PAT$33$A1"
  .Lgvan173: .string "PATTMP$P78"
  .Lgvan174: .string "PATTMP$P79"
  .Lgvan175: .string "PATTMP$P80"
  .Lgvan176: .string "PAT$36$A0"
  .Lgvan177: .string "PAT$37$A0"
  .Lgvan178: .string "PAT$37$A1"
  .Lgvan179: .string "PATTMP$P81"
  .Lgvan180: .string "PATTMP$P82"
  .Lgvan181: .string "PATTMP$P83"
  .Lgvan182: .string "PAT$40$A0"
  .Lgvan183: .string "PAT$41$A0"
  .Lgvan184: .string "PAT$41$A1"
  .Lgvan185: .string "PATTMP$P84"
  .Lgvan186: .string "PATTMP$P85"
  .Lgvan187: .string "PATTMP$P86"
  .Lgvan188: .string "PAT$44$A0"
  .Lgvan189: .string "PAT$45$A0"
  .Lgvan190: .string "PAT$45$A1"
  .Lgvan191: .string "PATTMP$P87"
  .Lgvan192: .string "PATTMP$P88"
  .Lgvan193: .string "PATTMP$P89"
  .Lgvan194: .string "PAT$48$A0"
  .Lgvan195: .string "PAT$49$A0"
  .Lgvan196: .string "PAT$49$A1"
  .Lgvan197: .string "PATTMP$P90"
  .Lgvan198: .string "PATTMP$P91"
  .Lgvan199: .string "PATTMP$P92"
  .Lgvan200: .string "PAT$52$A0"
  .Lgvan201: .string "PAT$53$A0"
  .Lgvan202: .string "PAT$53$A1"
  .Lgvan203: .string "PATTMP$P93"
  .Lgvan204: .string "PATTMP$P94"
  .Lgvan205: .string "PATTMP$P95"
  .Lgvan206: .string "PAT$56$A0"
  .Lgvan207: .string "PAT$57$A0"
  .Lgvan208: .string "PAT$57$A1"
  .Lgvan209: .string "PATTMP$P96"
  .Lgvan210: .string "PATTMP$P97"
  .Lgvan211: .string "PATTMP$P98"
  .Lgvan212: .string "PAT$60$A0"
  .Lgvan213: .string "PAT$61$A0"
  .Lgvan214: .string "PAT$61$A1"
  .Lgvan215: .string "PATTMP$P99"
  .Lgvan216: .string "PATTMP$P100"
  .Lgvan217: .string "PATTMP$P101"
  .Lgvan218: .string "PAT$64$A0"
  .Lgvan219: .string "PAT$65$A0"
  .Lgvan220: .string "PAT$65$A1"
  .Lgvan221: .string "PATTMP$P102"
  .Lgvan222: .string "PATTMP$P103"
  .Lgvan223: .string "PATTMP$P104"
  .Lgvan224: .string "PAT$68$A0"
  .Lgvan225: .string "PAT$69$A0"
  .Lgvan226: .string "PAT$69$A1"
  .Lgvan227: .string "PATTMP$P105"
  .Lgvan228: .string "PATTMP$P106"
  .Lgvan229: .string "PATTMP$P107"
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
  .quad .Lgvan158
  .quad .Lgvan159
  .quad .Lgvan160
  .quad .Lgvan161
  .quad .Lgvan162
  .quad .Lgvan163
  .quad .Lgvan164
  .quad .Lgvan165
  .quad .Lgvan166
  .quad .Lgvan167
  .quad .Lgvan168
  .quad .Lgvan169
  .quad .Lgvan170
  .quad .Lgvan171
  .quad .Lgvan172
  .quad .Lgvan173
  .quad .Lgvan174
  .quad .Lgvan175
  .quad .Lgvan176
  .quad .Lgvan177
  .quad .Lgvan178
  .quad .Lgvan179
  .quad .Lgvan180
  .quad .Lgvan181
  .quad .Lgvan182
  .quad .Lgvan183
  .quad .Lgvan184
  .quad .Lgvan185
  .quad .Lgvan186
  .quad .Lgvan187
  .quad .Lgvan188
  .quad .Lgvan189
  .quad .Lgvan190
  .quad .Lgvan191
  .quad .Lgvan192
  .quad .Lgvan193
  .quad .Lgvan194
  .quad .Lgvan195
  .quad .Lgvan196
  .quad .Lgvan197
  .quad .Lgvan198
  .quad .Lgvan199
  .quad .Lgvan200
  .quad .Lgvan201
  .quad .Lgvan202
  .quad .Lgvan203
  .quad .Lgvan204
  .quad .Lgvan205
  .quad .Lgvan206
  .quad .Lgvan207
  .quad .Lgvan208
  .quad .Lgvan209
  .quad .Lgvan210
  .quad .Lgvan211
  .quad .Lgvan212
  .quad .Lgvan213
  .quad .Lgvan214
  .quad .Lgvan215
  .quad .Lgvan216
  .quad .Lgvan217
  .quad .Lgvan218
  .quad .Lgvan219
  .quad .Lgvan220
  .quad .Lgvan221
  .quad .Lgvan222
  .quad .Lgvan223
  .quad .Lgvan224
  .quad .Lgvan225
  .quad .Lgvan226
  .quad .Lgvan227
  .quad .Lgvan228
  .quad .Lgvan229
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 230
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 230
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
  mov qword ptr [rsp + 13256], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_KEYWORD_SNOBOL4_read
 xchain1805_n0_α:
 mov rdi, qword ptr [rip + .Lx1806_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain1805_n1_α
 xchain1805_n0_β:
 jmp xchain1805_n8_α
.Lx1806_0:
 .quad .Lx1806_0_s
.Lx1806_0_s:
 .string "ALPHABET"
# IR_MATCH_HEAD
 xchain1805_n1_α:
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
.Lx1808_0:
 mov r14d, dword ptr [rsp + 0]
 jmp xchain1805_n2_α
 xchain1805_n1_β:
 add dword ptr [rsp + 0], 1
 mov eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jg .Lx1808_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx1808_1
 jmp .Lx1808_0
.Lx1808_1:
 mov rax, qword ptr [rsp + 8]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 16]
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain1805_n8_α
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1805_n2_α:
 jmp xchain1805_n4_α
xchain1805_n2_as:
 jmp xchain1805_n3_α
 xchain1805_n2_β:
 jmp xchain1805_n7_β
xchain1805_n2_af:
 jmp xchain1805_n1_β
# IR_MATCH_RELEASE
 xchain1805_n3_α:
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
.Lx1812_1:
 test rax, rax
 je .Lx1812_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1812_3]
 lea rdx, [rip + .Lx1812_4]
 jmp rax
.Lx1812_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1812_1
.Lx1812_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1812_1
.Lx1812_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain1805_n8_α
# IR_LIT_INTEGER
 xchain1805_n4_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx1813_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain1805_n5_α
 xchain1805_n4_β:
 jmp xchain1805_n2_af
.Lx1813_0:
 .quad 10
# IR_MATCH_POS
 xchain1805_n5_α:
 mov rax, 10
 cmp r14d, eax
 jne xchain1805_n2_af
 jmp xchain1805_n6_α
 xchain1805_n5_β:
 jmp xchain1805_n2_af
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1805_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1805_n9_α
 xchain1805_n6_β:
 add rsp, 16
 jmp xchain1805_n2_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1805_n7_α:
 mov eax, dword ptr [rsp + 0]
 lea rcx, [rip + .S60]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1805_n2_as
 xchain1805_n7_β:
 sub r12, 24
 jmp xchain1805_n9_β
# IR_LIT_STRING
 xchain1805_n8_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx1819_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain1805_n10_α
 xchain1805_n8_β:
 jmp xchain1805_n11_α
.Lx1819_0:
 .quad .Lx1819_0_s
.Lx1819_0_s:
 .string "list(head,tail)"
# IR_MATCH_LEN
 xchain1805_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jle .Lx1820_240
 add rsp, 16
 jmp xchain1805_n2_af
.Lx1820_240:
 add r14d, 1
 jmp xchain1805_n7_α
 xchain1805_n9_β:
 sub r14d, 1
 add rsp, 16
 jmp xchain1805_n2_af
 xchain1805_n10_α:
# BOX IR_CALL DATA(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn1822: .string "DATA"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1822]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain1805_n11_α
 jmp xchain1805_n11_α
 xchain1805_n10_β:
 jmp xchain1805_n11_α
# IR_LIT_INTEGER
 xchain1805_n11_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx1823_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain1805_n12_α
 xchain1805_n11_β:
 jmp xchain1805_n13_α
.Lx1823_0:
 .quad 0
# IR_ASSIGN gva
 xchain1805_n12_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain1805_n13_α
 xchain1805_n12_β:
 jmp xchain1805_n13_α
 xchain1805_n13_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1826: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1826]
 lea rsi, [rbp + 480]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain1805_n15_α
 jmp xchain1805_n14_α
 xchain1805_n13_β:
 jmp xchain1805_n15_α
# IR_ASSIGN gva
 xchain1805_n14_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain1805_n15_α
 xchain1805_n14_β:
 jmp xchain1805_n15_α
 xchain1805_n15_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1829: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1829]
 lea rsi, [rbp + 528]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain1805_n17_α
 jmp xchain1805_n16_α
 xchain1805_n15_β:
 jmp xchain1805_n17_α
# IR_ASSIGN gva
 xchain1805_n16_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain1805_n17_α
 xchain1805_n16_β:
 jmp xchain1805_n17_α
 xchain1805_n17_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1832: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1832]
 lea rsi, [rbp + 576]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain1805_n19_α
 jmp xchain1805_n18_α
 xchain1805_n17_β:
 jmp xchain1805_n19_α
# IR_ASSIGN gva
 xchain1805_n18_α:
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain1805_n19_α
 xchain1805_n18_β:
 jmp xchain1805_n19_α
# IR_LIT_STRING
 xchain1805_n19_α:
 mov qword ptr [rbp + 11504], 1
 mov rax, qword ptr [rip + .Lx1834_0]
 mov qword ptr [rbp + 11512], rax
 jmp xchain1805_n20_α
 xchain1805_n19_β:
 jmp xchain1805_n22_α
.Lx1834_0:
 .quad .Lx1834_0_s
.Lx1834_0_s:
 .string " "
# IR_VAR
 xchain1805_n20_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11536], rax
 mov qword ptr [rbp + 11544], rdx
 jmp xchain1805_n21_α
 xchain1805_n20_β:
 jmp xchain1805_n22_α
 xchain1805_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11504]
 mov rsi, qword ptr [rbp + 11512]
 mov rdx, qword ptr [rbp + 11536]
 mov rcx, qword ptr [rbp + 11544]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain1805_n23_α
 xchain1805_n21_β:
 jmp xchain1805_n22_α
# IR_LIT_STRING
 xchain1805_n22_α:
 mov qword ptr [rbp + 11824], 1
 mov rax, qword ptr [rip + .Lx1837_0]
 mov qword ptr [rbp + 11832], rax
 jmp xchain1805_n24_α
 xchain1805_n22_β:
 jmp xchain1805_n27_α
.Lx1837_0:
 .quad .Lx1837_0_s
.Lx1837_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain1805_n23_α:
 mov rax, qword ptr [rbp + 11472]
 mov rdx, qword ptr [rbp + 11480]
 mov qword ptr [1879054240], rax
 mov qword ptr [1879054248], rdx
 mov qword ptr [rbp + 11456], rax
 mov qword ptr [rbp + 11464], rdx
 jmp xchain1805_n25_α
 xchain1805_n23_β:
 jmp xchain1805_n22_α
# IR_VAR
 xchain1805_n24_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11856], rax
 mov qword ptr [rbp + 11864], rdx
 jmp xchain1805_n26_α
 xchain1805_n24_β:
 jmp xchain1805_n27_α
# IR_LIT_STRING
 xchain1805_n25_α:
 mov qword ptr [rbp + 11424], 1
 mov rax, qword ptr [rip + .Lx1840_0]
 mov qword ptr [rbp + 11432], rax
 jmp xchain1805_n28_α
 xchain1805_n25_β:
 jmp xchain1805_n22_α
.Lx1840_0:
 .quad .Lx1840_0_s
.Lx1840_0_s:
 .string "PAT$0"
 xchain1805_n26_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11824]
 mov rsi, qword ptr [rbp + 11832]
 mov rdx, qword ptr [rbp + 11856]
 mov rcx, qword ptr [rbp + 11864]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11792], rax
 mov qword ptr [rbp + 11800], rdx
 jmp xchain1805_n29_α
 xchain1805_n26_β:
 jmp xchain1805_n27_α
# IR_LIT_STRING
 xchain1805_n27_α:
 mov qword ptr [rbp + 11952], 1
 mov rax, qword ptr [rip + .Lx1842_0]
 mov qword ptr [rbp + 11960], rax
 jmp xchain1805_n30_α
 xchain1805_n27_β:
 jmp xchain1805_n34_α
.Lx1842_0:
 .quad .Lx1842_0_s
.Lx1842_0_s:
 .string "PAT$2"
 xchain1805_n28_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11424] -> [zr+11392]
 mov rax, qword ptr [rbp + 11424]
 mov qword ptr [rbp + 11392], rax
 mov rax, qword ptr [rbp + 11432]
 mov qword ptr [rbp + 11400], rax
  .section .rodata
  .Lrkfn1844: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1844]
 lea rsi, [rbp + 11392]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11376], rax
 mov qword ptr [rbp + 11384], rdx
 cmp eax, 99
 je xchain1805_n22_α
 jmp xchain1805_n31_α
 xchain1805_n28_β:
 jmp xchain1805_n22_α
# IR_ASSIGN gva
 xchain1805_n29_α:
 mov rax, qword ptr [rbp + 11792]
 mov rdx, qword ptr [rbp + 11800]
 mov qword ptr [1879054272], rax
 mov qword ptr [1879054280], rdx
 mov qword ptr [rbp + 11776], rax
 mov qword ptr [rbp + 11784], rdx
 jmp xchain1805_n32_α
 xchain1805_n29_β:
 jmp xchain1805_n27_α
 xchain1805_n30_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11952] -> [zr+11920]
 mov rax, qword ptr [rbp + 11952]
 mov qword ptr [rbp + 11920], rax
 mov rax, qword ptr [rbp + 11960]
 mov qword ptr [rbp + 11928], rax
  .section .rodata
  .Lrkfn1847: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1847]
 lea rsi, [rbp + 11920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11904], rax
 mov qword ptr [rbp + 11912], rdx
 cmp eax, 99
 je xchain1805_n34_α
 jmp xchain1805_n33_α
 xchain1805_n30_β:
 jmp xchain1805_n34_α
# IR_ASSIGN gva
 xchain1805_n31_α:
 mov rax, qword ptr [rbp + 11376]
 mov rdx, qword ptr [rbp + 11384]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 jmp xchain1805_n22_α
 xchain1805_n31_β:
 jmp xchain1805_n22_α
# IR_LIT_STRING
 xchain1805_n32_α:
 mov qword ptr [rbp + 11712], 1
 mov rax, qword ptr [rip + .Lx1849_0]
 mov qword ptr [rbp + 11720], rax
 jmp xchain1805_n35_α
 xchain1805_n32_β:
 jmp xchain1805_n27_α
.Lx1849_0:
 .quad .Lx1849_0_s
.Lx1849_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain1805_n33_α:
 mov rax, qword ptr [rbp + 11904]
 mov rdx, qword ptr [rbp + 11912]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 11888], rax
 mov qword ptr [rbp + 11896], rdx
 jmp xchain1805_n34_α
 xchain1805_n33_β:
 jmp xchain1805_n34_α
# IR_LIT_STRING
 xchain1805_n34_α:
 mov qword ptr [rbp + 12048], 1
 mov rax, qword ptr [rip + .Lx1851_0]
 mov qword ptr [rbp + 12056], rax
 jmp xchain1805_n36_α
 xchain1805_n34_β:
 jmp xchain1805_n39_α
.Lx1851_0:
 .quad .Lx1851_0_s
.Lx1851_0_s:
 .string "PAT$3"
# IR_VAR
 xchain1805_n35_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11744], rax
 mov qword ptr [rbp + 11752], rdx
 jmp xchain1805_n37_α
 xchain1805_n35_β:
 jmp xchain1805_n27_α
 xchain1805_n36_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12048] -> [zr+12016]
 mov rax, qword ptr [rbp + 12048]
 mov qword ptr [rbp + 12016], rax
 mov rax, qword ptr [rbp + 12056]
 mov qword ptr [rbp + 12024], rax
  .section .rodata
  .Lrkfn1854: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1854]
 lea rsi, [rbp + 12016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 12000], rax
 mov qword ptr [rbp + 12008], rdx
 cmp eax, 99
 je xchain1805_n39_α
 jmp xchain1805_n38_α
 xchain1805_n36_β:
 jmp xchain1805_n39_α
 xchain1805_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11712]
 mov rsi, qword ptr [rbp + 11720]
 mov rdx, qword ptr [rbp + 11744]
 mov rcx, qword ptr [rbp + 11752]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11680], rax
 mov qword ptr [rbp + 11688], rdx
 jmp xchain1805_n40_α
 xchain1805_n37_β:
 jmp xchain1805_n27_α
# IR_ASSIGN gva
 xchain1805_n38_α:
 mov rax, qword ptr [rbp + 12000]
 mov rdx, qword ptr [rbp + 12008]
 mov qword ptr [1879053072], rax
 mov qword ptr [1879053080], rdx
 mov qword ptr [rbp + 11984], rax
 mov qword ptr [rbp + 11992], rdx
 jmp xchain1805_n39_α
 xchain1805_n38_β:
 jmp xchain1805_n39_α
# IR_VAR
 xchain1805_n39_α:
 mov rdi, qword ptr [rip + .Lx1857_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain1805_n42_α
 mov qword ptr [rbp + 12096], rax
 mov qword ptr [rbp + 12104], rdx
 jmp xchain1805_n41_α
 xchain1805_n39_β:
 jmp xchain1805_n42_α
.Lx1857_0:
 .quad .Lx1857_0_s
.Lx1857_0_s:
 .string "INPUT"
# IR_ASSIGN gva
 xchain1805_n40_α:
 mov rax, qword ptr [rbp + 11680]
 mov rdx, qword ptr [rbp + 11688]
 mov qword ptr [1879054256], rax
 mov qword ptr [1879054264], rdx
 mov qword ptr [rbp + 11664], rax
 mov qword ptr [rbp + 11672], rdx
 jmp xchain1805_n43_α
 xchain1805_n40_β:
 jmp xchain1805_n27_α
# IR_ASSIGN gva
 xchain1805_n41_α:
 mov rax, qword ptr [rbp + 12096]
 mov rdx, qword ptr [rbp + 12104]
 mov qword ptr [1879053104], rax
 mov qword ptr [1879053112], rdx
 mov qword ptr [rbp + 12080], rax
 mov qword ptr [rbp + 12088], rdx
 jmp xchain1805_n44_α
 xchain1805_n41_β:
 jmp xchain1805_n42_α
# IR_LIT_STRING
 xchain1805_n42_α:
 mov qword ptr [rbp + 12368], 1
 mov rax, qword ptr [rip + .Lx1860_0]
 mov qword ptr [rbp + 12376], rax
 jmp xchain1805_n45_α
 xchain1805_n42_β:
 jmp xchain1805_n49_α
.Lx1860_0:
 .quad .Lx1860_0_s
.Lx1860_0_s:
 .string "bank"
# IR_LIT_STRING
 xchain1805_n43_α:
 mov qword ptr [rbp + 11632], 1
 mov rax, qword ptr [rip + .Lx1861_0]
 mov qword ptr [rbp + 11640], rax
 jmp xchain1805_n46_α
 xchain1805_n43_β:
 jmp xchain1805_n27_α
.Lx1861_0:
 .quad .Lx1861_0_s
.Lx1861_0_s:
 .string "PAT$1"
# IR_VAR
 xchain1805_n44_α:
 mov rax, qword ptr [1879053120]
 mov rdx, qword ptr [1879053128]
 mov qword ptr [rbp + 12208], rax
 mov qword ptr [rbp + 12216], rdx
 jmp xchain1805_n47_α
 xchain1805_n44_β:
 jmp xchain1805_n39_α
 xchain1805_n45_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052448]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052456]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1864_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1864_5
 mov rax, qword ptr [rbp + 12368]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12376]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1864_6]
 lea rdx, [rip + .Lx1864_7]
 jmp rax
.Lx1864_6:
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
 jmp .Lx1864_2
.Lx1864_7:
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
 jmp .Lx1864_2
.Lx1864_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12368]
 mov rdx, qword ptr [rbp + 12376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1864_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1864_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1864_3]
 lea rdx, [rip + .Lx1864_4]
 jmp rax
.Lx1864_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1864_2
.Lx1864_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1864_2
.Lx1864_1:
 call rt_faildescr@PLT
.Lx1864_2:
 mov qword ptr [rbp + 12320], rax
 mov qword ptr [rbp + 12328], rdx
 cmp eax, 99
 je xchain1805_n49_α
 jmp xchain1805_n48_α
 xchain1805_n45_β:
 jmp xchain1805_n49_α
.Lx1864_0:
 .quad .Lx1864_0_s
.Lx1864_0_s:
 .string "init_list"
 xchain1805_n46_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11632] -> [zr+11600]
 mov rax, qword ptr [rbp + 11632]
 mov qword ptr [rbp + 11600], rax
 mov rax, qword ptr [rbp + 11640]
 mov qword ptr [rbp + 11608], rax
  .section .rodata
  .Lrkfn1866: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1866]
 lea rsi, [rbp + 11600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11584], rax
 mov qword ptr [rbp + 11592], rdx
 cmp eax, 99
 je xchain1805_n27_α
 jmp xchain1805_n50_α
 xchain1805_n46_β:
 jmp xchain1805_n27_α
# IR_VAR
 xchain1805_n47_α:
 mov rax, qword ptr [1879053104]
 mov rdx, qword ptr [1879053112]
 mov qword ptr [rbp + 12240], rax
 mov qword ptr [rbp + 12248], rdx
 jmp xchain1805_n51_α
 xchain1805_n47_β:
 jmp xchain1805_n39_α
# IR_ASSIGN gva
 xchain1805_n48_α:
 mov rax, qword ptr [rbp + 12320]
 mov rdx, qword ptr [rbp + 12328]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12304], rax
 mov qword ptr [rbp + 12312], rdx
 jmp xchain1805_n49_α
 xchain1805_n48_β:
 jmp xchain1805_n49_α
# IR_LIT_STRING
 xchain1805_n49_α:
 mov qword ptr [rbp + 12464], 1
 mov rax, qword ptr [rip + .Lx1869_0]
 mov qword ptr [rbp + 12472], rax
 jmp xchain1805_n52_α
 xchain1805_n49_β:
 jmp xchain1805_n55_α
.Lx1869_0:
 .quad .Lx1869_0_s
.Lx1869_0_s:
 .string "BANK"
# IR_ASSIGN gva
 xchain1805_n50_α:
 mov rax, qword ptr [rbp + 11584]
 mov rdx, qword ptr [rbp + 11592]
 mov qword ptr [1879052976], rax
 mov qword ptr [1879052984], rdx
 mov qword ptr [rbp + 11568], rax
 mov qword ptr [rbp + 11576], rdx
 jmp xchain1805_n27_α
 xchain1805_n50_β:
 jmp xchain1805_n27_α
 xchain1805_n51_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12208]
 mov rsi, qword ptr [rbp + 12216]
 mov rdx, qword ptr [rbp + 12240]
 mov rcx, qword ptr [rbp + 12248]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12176], rax
 mov qword ptr [rbp + 12184], rdx
 jmp xchain1805_n53_α
 xchain1805_n51_β:
 jmp xchain1805_n39_α
 xchain1805_n52_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1873_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1873_5
 mov rax, qword ptr [rbp + 12464]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12472]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1873_6]
 lea rdx, [rip + .Lx1873_7]
 jmp rax
.Lx1873_6:
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
 jmp .Lx1873_2
.Lx1873_7:
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
 jmp .Lx1873_2
.Lx1873_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12464]
 mov rdx, qword ptr [rbp + 12472]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1873_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1873_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1873_3]
 lea rdx, [rip + .Lx1873_4]
 jmp rax
.Lx1873_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1873_2
.Lx1873_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1873_2
.Lx1873_1:
 call rt_faildescr@PLT
.Lx1873_2:
 mov qword ptr [rbp + 12416], rax
 mov qword ptr [rbp + 12424], rdx
 cmp eax, 99
 je xchain1805_n55_α
 jmp xchain1805_n54_α
 xchain1805_n52_β:
 jmp xchain1805_n55_α
.Lx1873_0:
 .quad .Lx1873_0_s
.Lx1873_0_s:
 .string "stk_push_frame"
# IR_VAR
 xchain1805_n53_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 12272], rax
 mov qword ptr [rbp + 12280], rdx
 jmp xchain1805_n56_α
 xchain1805_n53_β:
 jmp xchain1805_n39_α
# IR_ASSIGN gva
 xchain1805_n54_α:
 mov rax, qword ptr [rbp + 12416]
 mov rdx, qword ptr [rbp + 12424]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12400], rax
 mov qword ptr [rbp + 12408], rdx
 jmp xchain1805_n55_α
 xchain1805_n54_β:
 jmp xchain1805_n55_α
# IR_VAR
 xchain1805_n55_α:
 mov rax, qword ptr [1879053120]
 mov rdx, qword ptr [1879053128]
 mov qword ptr [rbp + 12640], rax
 mov qword ptr [rbp + 12648], rdx
 jmp xchain1805_n57_α
 xchain1805_n55_β:
 jmp xchain1805_n58_α
 xchain1805_n56_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12176]
 mov rsi, qword ptr [rbp + 12184]
 mov rdx, qword ptr [rbp + 12272]
 mov rcx, qword ptr [rbp + 12280]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12144], rax
 mov qword ptr [rbp + 12152], rdx
 jmp xchain1805_n59_α
 xchain1805_n56_β:
 jmp xchain1805_n39_α
# IR_MATCH_HEAD
 xchain1805_n57_α:
 mov qword ptr [rbp + 12552], rbp
 mov rdi, qword ptr [rbp + 12640]
 mov rsi, qword ptr [rbp + 12648]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 12544], r12
 mov qword ptr [rbp + 12528], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 12520], rax
 mov dword ptr [rbp + 12512], 0
.Lx1879_0:
 mov r14d, dword ptr [rbp + 12512]
 jmp xchain1805_n60_α
 xchain1805_n57_β:
 add dword ptr [rbp + 12512], 1
 mov eax, dword ptr [rbp + 12512]
 cmp eax, r15d
 jg .Lx1879_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx1879_1
 jmp .Lx1879_0
.Lx1879_1:
 mov rax, qword ptr [rbp + 12520]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12528]
 mov r12, qword ptr [rbp + 12544]
 mov rbp, qword ptr [rbp + 12552]
 jmp xchain1805_n58_α
# IR_LIT_STRING
 xchain1805_n58_α:
 mov qword ptr [rbp + 13168], 1
 mov rax, qword ptr [rip + .Lx1880_0]
 mov qword ptr [rbp + 13176], rax
 jmp xchain1805_n61_α
 xchain1805_n58_β:
 jmp xchain1805_n64_α
.Lx1880_0:
 .quad .Lx1880_0_s
.Lx1880_0_s:
 .string "bank"
# IR_ASSIGN gva
 xchain1805_n59_α:
 mov rax, qword ptr [rbp + 12144]
 mov rdx, qword ptr [rbp + 12152]
 mov qword ptr [1879053120], rax
 mov qword ptr [1879053128], rdx
 mov qword ptr [rbp + 12128], rax
 mov qword ptr [rbp + 12136], rdx
 jmp xchain1805_n39_α
 xchain1805_n59_β:
 jmp xchain1805_n39_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1805_n60_α:
 mov rax, qword ptr [1879053072]
 mov rdx, qword ptr [1879053080]
 cmp eax, 3
 jne .Lx1882_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1882_10
.Lx1882_9:
 xor eax, eax
.Lx1882_10:
 test rax, rax
 jz .Lx1882_0
 mov r8d, 0
 lea rcx, [rip + .Lx1882_4]
 lea rdx, [rip + .Lx1882_5]
 jmp rax
.Lx1882_4:
 jmp xchain1805_n62_α
.Lx1882_5:
 jmp xchain1805_n57_β
.Lx1882_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S61]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1882_2:
 test rax, rax
 je .Lx1882_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1882_7]
 lea rdx, [rip + .Lx1882_8]
 jmp rax
.Lx1882_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1882_2
.Lx1882_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1882_2
.Lx1882_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1805_n57_β
 mov r14d, eax
 lea rax, [rip + .Lx1882_6]
 sub rsp, 8
 push rax
 jmp xchain1805_n62_α
.Lx1882_6:
 add rsp, 16
 jmp xchain1805_n57_β
 xchain1805_n60_β:
 jmp qword ptr [rsp]
 xchain1805_n61_α:
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
 mov rdi, qword ptr [rip + .Lx1884_0]
 mov esi, 2
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1884_5
 mov rax, qword ptr [rbp + 13168]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rbp + 13176]
 mov qword ptr [1879052440], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1884_6]
 lea rdx, [rip + .Lx1884_7]
 jmp rax
.Lx1884_6:
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
 jmp .Lx1884_2
.Lx1884_7:
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
 jmp .Lx1884_2
.Lx1884_5:
 add rsp, 48
 mov edi, 0
 mov rsi, qword ptr [rbp + 13168]
 mov rdx, qword ptr [rbp + 13176]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1884_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1884_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1884_3]
 lea rdx, [rip + .Lx1884_4]
 jmp rax
.Lx1884_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1884_2
.Lx1884_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1884_2
.Lx1884_1:
 call rt_faildescr@PLT
.Lx1884_2:
 mov qword ptr [rbp + 13120], rax
 mov qword ptr [rbp + 13128], rdx
 cmp eax, 99
 je xchain1805_n64_α
 jmp xchain1805_n63_α
 xchain1805_n61_β:
 jmp xchain1805_n64_α
.Lx1884_0:
 .quad .Lx1884_0_s
.Lx1884_0_s:
 .string "stk_pop_final"
# IR_MATCH_RELEASE
 xchain1805_n62_α:
 mov rax, qword ptr [rbp + 12520]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov qword ptr [rbp + 12536], r14
 mov rsp, qword ptr [rbp + 12528]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 12576]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx1886_1:
 test rax, rax
 je .Lx1886_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1886_3]
 lea rdx, [rip + .Lx1886_4]
 jmp rax
.Lx1886_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1886_1
.Lx1886_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1886_1
.Lx1886_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 12544]
 jmp xchain1805_n65_α
# IR_ASSIGN gva
 xchain1805_n63_α:
 mov rax, qword ptr [rbp + 13120]
 mov rdx, qword ptr [rbp + 13128]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13104], rax
 mov qword ptr [rbp + 13112], rdx
 jmp xchain1805_n64_α
 xchain1805_n63_β:
 jmp xchain1805_n64_α
 xchain1805_n64_α:
 sub rsp, 16
 mov rax, qword ptr [1879052800]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052808]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1889_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1889_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1889_6]
 lea rdx, [rip + .Lx1889_7]
 jmp rax
.Lx1889_6:
 mov rdi, qword ptr [1879052800]
 mov rsi, qword ptr [1879052808]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1889_2
.Lx1889_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1889_2
.Lx1889_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1889_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1889_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1889_3]
 lea rdx, [rip + .Lx1889_4]
 jmp rax
.Lx1889_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1889_2
.Lx1889_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1889_2
.Lx1889_1:
 call rt_faildescr@PLT
.Lx1889_2:
 mov qword ptr [rbp + 13216], rax
 mov qword ptr [rbp + 13224], rdx
 cmp eax, 99
 je main_γ
 jmp xchain1805_n66_α
 xchain1805_n64_β:
 jmp main_γ
.Lx1889_0:
 .quad .Lx1889_0_s
.Lx1889_0_s:
 .string "pp_bank"
# IR_LIT_STRING
 xchain1805_n65_α:
 mov qword ptr [rbp + 12576], 1
 mov rax, qword ptr [rip + .Lx1890_0]
 mov qword ptr [rbp + 12584], rax
 jmp xchain1805_n67_α
 xchain1805_n65_β:
 jmp xchain1805_n58_α
.Lx1890_0:
 .quad .Lx1890_0_s
.Lx1890_0_s:
 .string ""
# IR_ASSIGN gva
 xchain1805_n66_α:
 mov rax, qword ptr [rbp + 13216]
 mov rdx, qword ptr [rbp + 13224]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13200], rax
 mov qword ptr [rbp + 13208], rdx
 jmp main_γ
 xchain1805_n66_β:
 jmp main_γ
# IR_MATCH_REPLACE
 xchain1805_n67_α:
 mov rdi, qword ptr [rip + .Lx1893_0]
 mov rsi, qword ptr [rbp + 12640]
 mov rdx, qword ptr [rbp + 12648]
 mov ecx, dword ptr [rbp + 12512]
 mov r8, qword ptr [rbp + 12536]
 lea r9, [rbp + 12576]
 call rt_match_replace@PLT
 jmp .Lx1893_1
.Lx1893_0:
 .quad .Lx1893_0_s
.Lx1893_0_s:
 .string "src"
.Lx1893_1:
 mov rbp, qword ptr [rbp + 12552]
 jmp xchain1805_n68_α
# IR_LIT_STRING
 xchain1805_n68_α:
 mov qword ptr [rbp + 12736], 1
 mov rax, qword ptr [rip + .Lx1894_0]
 mov qword ptr [rbp + 12744], rax
 jmp xchain1805_n69_α
 xchain1805_n68_β:
 jmp xchain1805_n71_α
.Lx1894_0:
 .quad .Lx1894_0_s
.Lx1894_0_s:
 .string "ROOT"
 xchain1805_n69_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1896_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1896_5
 mov rax, qword ptr [rbp + 12736]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12744]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1896_6]
 lea rdx, [rip + .Lx1896_7]
 jmp rax
.Lx1896_6:
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
 jmp .Lx1896_2
.Lx1896_7:
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
 jmp .Lx1896_2
.Lx1896_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12736]
 mov rdx, qword ptr [rbp + 12744]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1896_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1896_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1896_3]
 lea rdx, [rip + .Lx1896_4]
 jmp rax
.Lx1896_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1896_2
.Lx1896_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1896_2
.Lx1896_1:
 call rt_faildescr@PLT
.Lx1896_2:
 mov qword ptr [rbp + 12688], rax
 mov qword ptr [rbp + 12696], rdx
 cmp eax, 99
 je xchain1805_n71_α
 jmp xchain1805_n70_α
 xchain1805_n69_β:
 jmp xchain1805_n71_α
.Lx1896_0:
 .quad .Lx1896_0_s
.Lx1896_0_s:
 .string "stk_push_frame"
# IR_ASSIGN gva
 xchain1805_n70_α:
 mov rax, qword ptr [rbp + 12688]
 mov rdx, qword ptr [rbp + 12696]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12672], rax
 mov qword ptr [rbp + 12680], rdx
 jmp xchain1805_n71_α
 xchain1805_n70_β:
 jmp xchain1805_n71_α
# IR_VAR
 xchain1805_n71_α:
 mov rax, qword ptr [1879053088]
 mov rdx, qword ptr [1879053096]
 mov qword ptr [rbp + 12864], rax
 mov qword ptr [rbp + 12872], rdx
 jmp xchain1805_n72_α
 xchain1805_n71_β:
 jmp xchain1805_n73_α
# IR_MATCH_HEAD
 xchain1805_n72_α:
 mov qword ptr [rbp + 12824], rbp
 mov rdi, qword ptr [rbp + 12864]
 mov rsi, qword ptr [rbp + 12872]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 12816], r12
 mov qword ptr [rbp + 12800], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 12792], rax
 mov dword ptr [rbp + 12784], 0
.Lx1900_0:
 mov r14d, dword ptr [rbp + 12784]
 jmp xchain1805_n74_α
 xchain1805_n72_β:
 add dword ptr [rbp + 12784], 1
 mov eax, dword ptr [rbp + 12784]
 cmp eax, r15d
 jg .Lx1900_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx1900_1
 jmp .Lx1900_0
.Lx1900_1:
 mov rax, qword ptr [rbp + 12792]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12800]
 mov r12, qword ptr [rbp + 12816]
 mov rbp, qword ptr [rbp + 12824]
 jmp xchain1805_n73_α
# IR_LIT_STRING
 xchain1805_n73_α:
 mov qword ptr [rbp + 12992], 1
 mov rax, qword ptr [rip + .Lx1901_0]
 mov qword ptr [rbp + 13000], rax
 jmp xchain1805_n75_α
 xchain1805_n73_β:
 jmp xchain1805_n78_α
.Lx1901_0:
 .quad .Lx1901_0_s
.Lx1901_0_s:
 .string "Parse failed on: "
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1805_n74_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx1902_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1902_10
.Lx1902_9:
 xor eax, eax
.Lx1902_10:
 test rax, rax
 jz .Lx1902_0
 mov r8d, 0
 lea rcx, [rip + .Lx1902_4]
 lea rdx, [rip + .Lx1902_5]
 jmp rax
.Lx1902_4:
 jmp xchain1805_n76_α
.Lx1902_5:
 jmp xchain1805_n72_β
.Lx1902_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1902_2:
 test rax, rax
 je .Lx1902_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1902_7]
 lea rdx, [rip + .Lx1902_8]
 jmp rax
.Lx1902_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1902_2
.Lx1902_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1902_2
.Lx1902_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1805_n72_β
 mov r14d, eax
 lea rax, [rip + .Lx1902_6]
 sub rsp, 8
 push rax
 jmp xchain1805_n76_α
.Lx1902_6:
 add rsp, 16
 jmp xchain1805_n72_β
 xchain1805_n74_β:
 jmp qword ptr [rsp]
# IR_VAR
 xchain1805_n75_α:
 mov rax, qword ptr [1879053088]
 mov rdx, qword ptr [1879053096]
 mov qword ptr [rbp + 13024], rax
 mov qword ptr [rbp + 13032], rdx
 jmp xchain1805_n77_α
 xchain1805_n75_β:
 jmp xchain1805_n78_α
# IR_MATCH_RELEASE
 xchain1805_n76_α:
 mov rax, qword ptr [rbp + 12792]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12800]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 12848]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx1905_1:
 test rax, rax
 je .Lx1905_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1905_3]
 lea rdx, [rip + .Lx1905_4]
 jmp rax
.Lx1905_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1905_1
.Lx1905_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1905_1
.Lx1905_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 12816]
 mov rbp, qword ptr [rbp + 12824]
 jmp xchain1805_n79_α
 xchain1805_n77_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12992]
 mov rsi, qword ptr [rbp + 13000]
 mov rdx, qword ptr [rbp + 13024]
 mov rcx, qword ptr [rbp + 13032]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12960], rax
 mov qword ptr [rbp + 12968], rdx
 jmp xchain1805_n80_α
 xchain1805_n77_β:
 jmp xchain1805_n78_α
 xchain1805_n78_α:
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
 mov rdi, qword ptr [rip + .Lx1908_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1908_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1908_6]
 lea rdx, [rip + .Lx1908_7]
 jmp rax
.Lx1908_6:
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
 jmp .Lx1908_2
.Lx1908_7:
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
 jmp .Lx1908_2
.Lx1908_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx1908_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1908_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1908_3]
 lea rdx, [rip + .Lx1908_4]
 jmp rax
.Lx1908_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1908_2
.Lx1908_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1908_2
.Lx1908_1:
 call rt_faildescr@PLT
.Lx1908_2:
 mov qword ptr [rbp + 13072], rax
 mov qword ptr [rbp + 13080], rdx
 cmp eax, 99
 je xchain1805_n55_α
 jmp xchain1805_n81_α
 xchain1805_n78_β:
 jmp xchain1805_n55_α
.Lx1908_0:
 .quad .Lx1908_0_s
.Lx1908_0_s:
 .string "stk_pop_into_parent"
 xchain1805_n79_α:
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
 mov rdi, qword ptr [rip + .Lx1910_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1910_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1910_6]
 lea rdx, [rip + .Lx1910_7]
 jmp rax
.Lx1910_6:
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
 jmp .Lx1910_2
.Lx1910_7:
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
 jmp .Lx1910_2
.Lx1910_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx1910_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1910_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1910_3]
 lea rdx, [rip + .Lx1910_4]
 jmp rax
.Lx1910_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1910_2
.Lx1910_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1910_2
.Lx1910_1:
 call rt_faildescr@PLT
.Lx1910_2:
 mov qword ptr [rbp + 12912], rax
 mov qword ptr [rbp + 12920], rdx
 cmp eax, 99
 je xchain1805_n55_α
 jmp xchain1805_n82_α
 xchain1805_n79_β:
 jmp xchain1805_n55_α
.Lx1910_0:
 .quad .Lx1910_0_s
.Lx1910_0_s:
 .string "stk_pop_into_parent"
# IR_ASSIGN global
 xchain1805_n80_α:
 mov rsi, qword ptr [rbp + 12960]
 mov rdx, qword ptr [rbp + 12968]
 mov rdi, qword ptr [rip + .Lx1911_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 12944], rax
 mov qword ptr [rbp + 12952], rdx
 jmp xchain1805_n78_α
 xchain1805_n80_β:
 jmp xchain1805_n78_α
.Lx1911_0:
 .quad .Lx1911_0_s
.Lx1911_0_s:
 .string "OUTPUT"
# IR_ASSIGN gva
 xchain1805_n81_α:
 mov rax, qword ptr [rbp + 13072]
 mov rdx, qword ptr [rbp + 13080]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13056], rax
 mov qword ptr [rbp + 13064], rdx
 jmp xchain1805_n55_α
 xchain1805_n81_β:
 jmp xchain1805_n55_α
# IR_ASSIGN gva
 xchain1805_n82_α:
 mov rax, qword ptr [rbp + 12912]
 mov rdx, qword ptr [rbp + 12920]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12896], rax
 mov qword ptr [rbp + 12904], rdx
 jmp xchain1805_n55_α
 xchain1805_n82_β:
 jmp xchain1805_n55_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 13256]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 13256]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "tag"
.S1: .string "PATTMP$P54"
.S2: .string "PATTMP$P56"
.S3: .string "word"
.S4: .string "delim"
.S5: .string "group"
.S6: .string "wrd"
.S7: .string "PATTMP$P55"
.S8: .string "item"
.S9: .string "PATTMP$P57"
.S10: .string "PATTMP$P59"
.S11: .string "PATTMP$P58"
.S12: .string "PATTMP$P60"
.S13: .string "PATTMP$P62"
.S14: .string "PATTMP$P61"
.S15: .string "PATTMP$P63"
.S16: .string "PATTMP$P65"
.S17: .string "PATTMP$P64"
.S18: .string "PATTMP$P66"
.S19: .string "PATTMP$P68"
.S20: .string "PATTMP$P67"
.S21: .string "PATTMP$P69"
.S22: .string "PATTMP$P71"
.S23: .string "PATTMP$P70"
.S24: .string "PATTMP$P72"
.S25: .string "PATTMP$P74"
.S26: .string "PATTMP$P73"
.S27: .string "PATTMP$P75"
.S28: .string "PATTMP$P77"
.S29: .string "PATTMP$P76"
.S30: .string "PATTMP$P78"
.S31: .string "PATTMP$P80"
.S32: .string "PATTMP$P79"
.S33: .string "PATTMP$P81"
.S34: .string "PATTMP$P83"
.S35: .string "PATTMP$P82"
.S36: .string "PATTMP$P84"
.S37: .string "PATTMP$P86"
.S38: .string "PATTMP$P85"
.S39: .string "PATTMP$P87"
.S40: .string "PATTMP$P89"
.S41: .string "PATTMP$P88"
.S42: .string "PATTMP$P90"
.S43: .string "PATTMP$P92"
.S44: .string "PATTMP$P91"
.S45: .string "PATTMP$P93"
.S46: .string "PATTMP$P95"
.S47: .string "PATTMP$P94"
.S48: .string "PATTMP$P96"
.S49: .string "PATTMP$P98"
.S50: .string "PATTMP$P97"
.S51: .string "PATTMP$P99"
.S52: .string "PATTMP$P101"
.S53: .string "PATTMP$P100"
.S54: .string "PATTMP$P102"
.S55: .string "PATTMP$P104"
.S56: .string "PATTMP$P103"
.S57: .string "PATTMP$P105"
.S58: .string "PATTMP$P107"
.S59: .string "PATTMP$P106"
.S60: .string "nl"
.S61: .string "spat"
.text
