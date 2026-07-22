  .intel_syntax noprefix
  .text
  .globl proc_stk_push_frame_α
proc_stk_push_frame_α:
#=======================================================================================================================
    .global proc_stk_push_frame_α
    .global proc_stk_push_frame_β
    .global proc_stk_push_frame_γ
    .global proc_stk_push_frame_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_stk_push_frame_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_stk_push_item_α
proc_stk_push_item_α:
#=======================================================================================================================
    .global proc_stk_push_item_α
    .global proc_stk_push_item_β
    .global proc_stk_push_item_γ
    .global proc_stk_push_item_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_stk_push_item_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
#=======================================================================================================================
    .global proc_stk_pop_into_parent_α
    .global proc_stk_pop_into_parent_β
    .global proc_stk_pop_into_parent_γ
    .global proc_stk_pop_into_parent_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_stk_pop_into_parent_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_stk_pop_final_α
proc_stk_pop_final_α:
#=======================================================================================================================
    .global proc_stk_pop_final_α
    .global proc_stk_pop_final_β
    .global proc_stk_pop_final_γ
    .global proc_stk_pop_final_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_stk_pop_final_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_init_list_α
proc_init_list_α:
#=======================================================================================================================
    .global proc_init_list_α
    .global proc_init_list_β
    .global proc_init_list_γ
    .global proc_init_list_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_init_list_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_Init_list_α
proc_Init_list_α:
#=======================================================================================================================
    .global proc_Init_list_α
    .global proc_Init_list_β
    .global proc_Init_list_γ
    .global proc_Init_list_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_Init_list_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_push_list_α
proc_push_list_α:
#=======================================================================================================================
    .global proc_push_list_α
    .global proc_push_list_β
    .global proc_push_list_γ
    .global proc_push_list_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_push_list_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_Push_list_α
proc_Push_list_α:
#=======================================================================================================================
    .global proc_Push_list_α
    .global proc_Push_list_β
    .global proc_Push_list_γ
    .global proc_Push_list_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_Push_list_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_push_item_α
proc_push_item_α:
#=======================================================================================================================
    .global proc_push_item_α
    .global proc_push_item_β
    .global proc_push_item_γ
    .global proc_push_item_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_push_item_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_Push_item_α
proc_Push_item_α:
#=======================================================================================================================
    .global proc_Push_item_α
    .global proc_Push_item_β
    .global proc_Push_item_γ
    .global proc_Push_item_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_Push_item_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_pop_list_α
proc_pop_list_α:
#=======================================================================================================================
    .global proc_pop_list_α
    .global proc_pop_list_β
    .global proc_pop_list_γ
    .global proc_pop_list_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_pop_list_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_Pop_list_α
proc_Pop_list_α:
#=======================================================================================================================
    .global proc_Pop_list_α
    .global proc_Pop_list_β
    .global proc_Pop_list_γ
    .global proc_Pop_list_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
proc_Pop_list_α_body:
# IR_LIT_STRING
 xchain205_n0_α:
 mov qword ptr [rbp + 5312], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain205_n1_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "PAT$60"
 xchain205_n1_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5312] -> [zr+5280]
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 5280], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 5288], rax
  .section .rodata
  .Lrkfn208: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn208]
 lea rsi, [rbp + 5280]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 cmp eax, 99
 je proc_Pop_list_γ
 jmp xchain205_n2_α
 xchain205_n1_β:
 jmp proc_Pop_list_γ
# IR_ASSIGN gva
 xchain205_n2_α:
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
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_Pop_list_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_pop_final_α
proc_pop_final_α:
#=======================================================================================================================
    .global proc_pop_final_α
    .global proc_pop_final_β
    .global proc_pop_final_γ
    .global proc_pop_final_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
proc_pop_final_α_body:
# IR_VAR
 xchain210_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 jmp xchain210_n1_α
 xchain210_n1_α:
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
 mov rdi, qword ptr [rip + .Lx213_0]
 mov esi, 2
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx213_5
 mov rax, qword ptr [rbp + 5408]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rbp + 5416]
 mov qword ptr [1879052440], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx213_6]
 lea rdx, [rip + .Lx213_7]
 jmp rax
.Lx213_6:
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
 jmp .Lx213_2
.Lx213_7:
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
 jmp .Lx213_2
.Lx213_5:
 add rsp, 48
 mov edi, 0
 mov rsi, qword ptr [rbp + 5408]
 mov rdx, qword ptr [rbp + 5416]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx213_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx213_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx213_3]
 lea rdx, [rip + .Lx213_4]
 jmp rax
.Lx213_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx213_2
.Lx213_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx213_2
.Lx213_1:
 call rt_faildescr@PLT
.Lx213_2:
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 cmp eax, 99
 je xchain210_n2_α
 jmp xchain210_n3_α
 xchain210_n1_β:
 jmp xchain210_n2_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "stk_pop_final"
# IR_LIT_STRING
 xchain210_n2_α:
 mov qword ptr [rbp + 5504], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 5512], rax
 jmp xchain210_n4_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain210_n3_α:
 mov rax, qword ptr [rbp + 5360]
 mov rdx, qword ptr [rbp + 5368]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 jmp xchain210_n2_α
 xchain210_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5504] -> [zr+5472]
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [rbp + 5480], rax
  .section .rodata
  .Lrkfn217: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn217]
 lea rsi, [rbp + 5472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5456], rax
 mov qword ptr [rbp + 5464], rdx
 cmp eax, 99
 je xchain210_n6_α
 jmp xchain210_n5_α
 xchain210_n4_β:
 jmp xchain210_n6_α
# IR_ASSIGN gva
 xchain210_n5_α:
 mov rax, qword ptr [rbp + 5456]
 mov rdx, qword ptr [rbp + 5464]
 mov qword ptr [1879052592], rax
 mov qword ptr [1879052600], rdx
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain210_n6_α
# IR_LIT_STRING
 xchain210_n6_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain210_n7_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string ""
 xchain210_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn221: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn221]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_pop_final_ω
 jmp proc_pop_final_γ
 xchain210_n7_β:
 jmp proc_pop_final_ω
proc_pop_final_res:
add rsp, 8
pop rbp
proc_pop_final_β:
jmp proc_pop_final_ω
proc_pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_pop_final_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_Pop_final_α
proc_Pop_final_α:
#=======================================================================================================================
    .global proc_Pop_final_α
    .global proc_Pop_final_β
    .global proc_Pop_final_γ
    .global proc_Pop_final_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
proc_Pop_final_α_body:
# IR_LIT_STRING
 xchain222_n0_α:
 mov qword ptr [rbp + 5664], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 5672], rax
 jmp xchain222_n1_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "epsilon . *pop_final("
# IR_VAR
 xchain222_n1_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 5696], rax
 mov qword ptr [rbp + 5704], rdx
 jmp xchain222_n2_α
 xchain222_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5664]
 mov rsi, qword ptr [rbp + 5672]
 mov rdx, qword ptr [rbp + 5696]
 mov rcx, qword ptr [rbp + 5704]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 jmp xchain222_n3_α
# IR_LIT_STRING
 xchain222_n3_α:
 mov qword ptr [rbp + 5728], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 5736], rax
 jmp xchain222_n4_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string ")"
 xchain222_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5632]
 mov rsi, qword ptr [rbp + 5640]
 mov rdx, qword ptr [rbp + 5728]
 mov rcx, qword ptr [rbp + 5736]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain222_n5_α
 xchain222_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5600] -> [zr+5568]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5576], rax
  .section .rodata
  .Lrkfn229: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn229]
 lea rsi, [rbp + 5568]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je proc_Pop_final_γ
 jmp xchain222_n6_α
 xchain222_n5_β:
 jmp proc_Pop_final_γ
# IR_ASSIGN gva
 xchain222_n6_α:
 mov rax, qword ptr [rbp + 5552]
 mov rdx, qword ptr [rbp + 5560]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 jmp proc_Pop_final_γ
proc_Pop_final_res:
add rsp, 8
pop rbp
proc_Pop_final_β:
jmp proc_Pop_final_ω
proc_Pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_Pop_final_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_node_repr_α
proc_node_repr_α:
#=======================================================================================================================
    .global proc_node_repr_α
    .global proc_node_repr_β
    .global proc_node_repr_γ
    .global proc_node_repr_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
proc_node_repr_α_body:
# IR_VAR
 xchain231_n0_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 5952], rax
 mov qword ptr [rbp + 5960], rdx
 jmp xchain231_n1_α
 xchain231_n1_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5952] -> [zr+5920]
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 5920], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 5928], rax
  .section .rodata
  .Lrkfn234: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn234]
 lea rsi, [rbp + 5920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5904], rax
 mov qword ptr [rbp + 5912], rdx
 cmp eax, 99
 je xchain231_n2_α
 jmp xchain231_n3_α
 xchain231_n1_β:
 jmp xchain231_n2_α
# IR_VAR
 xchain231_n2_α:
 mov rax, qword ptr [1879052848]
 mov rdx, qword ptr [1879052856]
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain231_n4_α
# IR_KEYWORD_SNOBOL4_read
 xchain231_n3_α:
 mov rdi, qword ptr [rip + .Lx236_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain231_n6_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "LCASE"
# IR_VAR
 xchain231_n4_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 jmp xchain231_n7_α
# IR_VAR
 xchain231_n5_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 jmp xchain231_n8_α
# IR_KEYWORD_SNOBOL4_read
 xchain231_n6_α:
 mov rdi, qword ptr [rip + .Lx239_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain231_n10_α
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "UCASE"
# IR_SUBSCRIPT x[i] variable
 xchain231_n7_α:
 mov rdi, qword ptr [rbp + 6240]
 mov rsi, qword ptr [rbp + 6248]
 mov rdx, qword ptr [rbp + 6272]
 mov rcx, qword ptr [rbp + 6280]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain231_n5_α
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 jmp xchain231_n11_α
# IR_VAR
 xchain231_n8_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain231_n12_α
# IR_LIT_STRING
 xchain231_n9_α:
 mov qword ptr [rbp + 6560], 1
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 6568], rax
 jmp xchain231_n13_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "('"
 xchain231_n10_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5904] -> [zr+5840]
 mov rax, qword ptr [rbp + 5904]
 mov qword ptr [rbp + 5840], rax
 mov rax, qword ptr [rbp + 5912]
 mov qword ptr [rbp + 5848], rax
# marshal arg1 = producer-box slot [zr+5984] -> [zr+5856]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 5864], rax
# marshal arg2 = producer-box slot [zr+6000] -> [zr+5872]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5872], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5880], rax
  .section .rodata
  .Lrkfn244: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn244]
 lea rsi, [rbp + 5840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 cmp eax, 99
 je xchain231_n2_α
 jmp xchain231_n14_α
 xchain231_n10_β:
 jmp xchain231_n2_α
# IR_DEREF variable -> value
 xchain231_n11_α:
 mov rdi, qword ptr [rbp + 6304]
 mov rsi, qword ptr [rbp + 6312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain231_n5_α
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 jmp xchain231_n15_α
# IR_SUBSCRIPT x[i] variable
 xchain231_n12_α:
 mov rdi, qword ptr [rbp + 6368]
 mov rsi, qword ptr [rbp + 6376]
 mov rdx, qword ptr [rbp + 6400]
 mov rcx, qword ptr [rbp + 6408]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain231_n9_α
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain231_n16_α
# IR_VAR
 xchain231_n13_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain231_n17_α
# IR_LIT_STRING
 xchain231_n14_α:
 mov qword ptr [rbp + 6016], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 6024], rax
 jmp xchain231_n19_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "STRING"
# IR_ASSIGN gva
 xchain231_n15_α:
 mov rax, qword ptr [rbp + 6336]
 mov rdx, qword ptr [rbp + 6344]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 jmp xchain231_n5_α
# IR_DEREF variable -> value
 xchain231_n16_α:
 mov rdi, qword ptr [rbp + 6432]
 mov rsi, qword ptr [rbp + 6440]
 call rt_deref@PLT
 cmp eax, 99
 je xchain231_n9_α
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 jmp xchain231_n20_α
 xchain231_n17_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6560]
 mov rsi, qword ptr [rbp + 6568]
 mov rdx, qword ptr [rbp + 6592]
 mov rcx, qword ptr [rbp + 6600]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6528], rax
 mov qword ptr [rbp + 6536], rdx
 jmp xchain231_n21_α
# IR_LIT_INTEGER
 xchain231_n18_α:
 mov qword ptr [rbp + 6672], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 6680], rax
 jmp xchain231_n22_α
.Lx252_0:
 .quad 0
 xchain231_n19_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5824] -> [zr+5776]
 mov rax, qword ptr [rbp + 5824]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 5784], rax
# marshal arg1 = producer-box slot [zr+6016] -> [zr+5792]
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 5800], rax
  .section .rodata
  .Lrkfn254: .string "IDENT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn254]
 lea rsi, [rbp + 5776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 cmp eax, 99
 je xchain231_n2_α
 jmp xchain231_n23_α
 xchain231_n19_β:
 jmp xchain231_n2_α
# IR_ASSIGN gva
 xchain231_n20_α:
 mov rax, qword ptr [rbp + 6464]
 mov rdx, qword ptr [rbp + 6472]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 jmp xchain231_n9_α
# IR_LIT_STRING
 xchain231_n21_α:
 mov qword ptr [rbp + 6624], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 6632], rax
 jmp xchain231_n24_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "'"
# IR_ASSIGN gva
 xchain231_n22_α:
 mov rax, qword ptr [rbp + 6672]
 mov rdx, qword ptr [rbp + 6680]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 jmp xchain231_n25_α
# IR_LIT_STRING
 xchain231_n23_α:
 mov qword ptr [rbp + 6128], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 6136], rax
 jmp xchain231_n26_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "'"
 xchain231_n24_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6528]
 mov rsi, qword ptr [rbp + 6536]
 mov rdx, qword ptr [rbp + 6624]
 mov rcx, qword ptr [rbp + 6632]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 jmp xchain231_n27_α
# IR_VAR
 xchain231_n25_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain231_n28_α
# IR_VAR
 xchain231_n26_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain231_n30_α
# IR_ASSIGN gva
 xchain231_n27_α:
 mov rax, qword ptr [rbp + 6496]
 mov rdx, qword ptr [rbp + 6504]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain231_n18_α
# IR_VAR
 xchain231_n28_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain231_n31_α
# IR_VAR
 xchain231_n29_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 7488], rax
 mov qword ptr [rbp + 7496], rdx
 jmp xchain231_n32_α
 xchain231_n30_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6128]
 mov rsi, qword ptr [rbp + 6136]
 mov rdx, qword ptr [rbp + 6160]
 mov rcx, qword ptr [rbp + 6168]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 jmp xchain231_n33_α
# IR_COERCE_NUMERIC
 xchain231_n31_α:
 mov eax, dword ptr [rbp + 6880]
 cmp eax, 7
 je .Lx267_1
 cmp eax, 6
 jne .Lx267_0
 mov eax, dword ptr [rbp + 6848]
 cmp eax, 6
 jne .Lx267_0
.Lx267_1:
 mov rax, qword ptr [rbp + 6880]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6888]
 mov qword ptr [rbp + 6824], rax
 jmp xchain231_n34_α
.Lx267_0:
 lea rdi, [rbp + 6880]
 lea rsi, [rbp + 6848]
 lea rdx, [rbp + 6816]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain231_n34_α
# IR_LIT_STRING
 xchain231_n32_α:
 mov qword ptr [rbp + 7520], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 7528], rax
 jmp xchain231_n35_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string ")"
# IR_LIT_STRING
 xchain231_n33_α:
 mov qword ptr [rbp + 6192], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 6200], rax
 jmp xchain231_n36_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "'"
# IR_COERCE_NUMERIC
 xchain231_n34_α:
 mov eax, dword ptr [rbp + 6848]
 cmp eax, 7
 je .Lx271_1
 cmp eax, 6
 jne .Lx271_0
 mov eax, dword ptr [rbp + 6880]
 cmp eax, 6
 jne .Lx271_0
.Lx271_1:
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6784], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6792], rax
 jmp xchain231_n37_α
.Lx271_0:
 lea rdi, [rbp + 6848]
 lea rsi, [rbp + 6880]
 lea rdx, [rbp + 6784]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain231_n37_α
 xchain231_n35_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7488]
 mov rsi, qword ptr [rbp + 7496]
 mov rdx, qword ptr [rbp + 7520]
 mov rcx, qword ptr [rbp + 7528]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 jmp xchain231_n38_α
 xchain231_n36_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6096]
 mov rsi, qword ptr [rbp + 6104]
 mov rdx, qword ptr [rbp + 6192]
 mov rcx, qword ptr [rbp + 6200]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 jmp xchain231_n39_α
# IR_CMP_TEST
 xchain231_n37_α:
 lea rdi, [rbp + 6816]
 lea rsi, [rbp + 6784]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain231_n29_α
 mov qword ptr [rbp + 6752], 0
 mov qword ptr [rbp + 6760], 0
 jmp xchain231_n40_α
# IR_ASSIGN gva
 xchain231_n38_α:
 mov rax, qword ptr [rbp + 7456]
 mov rdx, qword ptr [rbp + 7464]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 7440], rax
 mov qword ptr [rbp + 7448], rdx
 jmp proc_node_repr_γ
# IR_ASSIGN gva
 xchain231_n39_α:
 mov rax, qword ptr [rbp + 6064]
 mov rdx, qword ptr [rbp + 6072]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 jmp proc_node_repr_γ
# IR_VAR
 xchain231_n40_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 jmp xchain231_n41_α
# IR_LIT_INTEGER
 xchain231_n41_α:
 mov qword ptr [rbp + 6976], 6
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [rbp + 6984], rax
 jmp xchain231_n42_α
.Lx279_0:
 .quad 1
 xchain231_n42_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 6944]
 cmp eax, 100
 je .Lx280_0
 mov eax, dword ptr [rbp + 6944]
 cmp eax, 6
 jne .Lx280_2
.Lx280_1:
 mov rax, qword ptr [rbp + 6952]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 6912], 6
 mov qword ptr [rbp + 6920], rax
 jmp xchain231_n43_α
.Lx280_0:
 mov rdi, qword ptr [rbp + 6944]
 mov rsi, qword ptr [rbp + 6952]
 mov rdx, qword ptr [rbp + 6976]
 mov rcx, qword ptr [rbp + 6984]
 mov r8d, 0
 lea r9, [rbp + 6912]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain231_n43_α
.Lx280_2:
 mov rdi, qword ptr [rbp + 6944]
 mov rsi, qword ptr [rbp + 6952]
 mov rdx, qword ptr [rbp + 6976]
 mov rcx, qword ptr [rbp + 6984]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain231_n29_α
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 jmp xchain231_n43_α
 xchain231_n42_β:
 jmp xchain231_n29_α
 xchain231_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6752]
 mov rsi, qword ptr [rbp + 6760]
 mov rdx, qword ptr [rbp + 6912]
 mov rcx, qword ptr [rbp + 6920]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain231_n44_α
# IR_ASSIGN gva
 xchain231_n44_α:
 mov rax, qword ptr [rbp + 6720]
 mov rdx, qword ptr [rbp + 6728]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 jmp xchain231_n45_α
# IR_VAR
 xchain231_n45_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 jmp xchain231_n46_α
# IR_LIT_STRING
 xchain231_n46_α:
 mov qword ptr [rbp + 7120], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 7128], rax
 jmp xchain231_n48_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string ", "
# IR_VAR
 xchain231_n47_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 jmp xchain231_n49_α
 xchain231_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7088]
 mov rsi, qword ptr [rbp + 7096]
 mov rdx, qword ptr [rbp + 7120]
 mov rcx, qword ptr [rbp + 7128]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7056], rax
 mov qword ptr [rbp + 7064], rdx
 jmp xchain231_n50_α
# IR_ASSIGN gva
 xchain231_n49_α:
 mov rax, qword ptr [rbp + 7408]
 mov rdx, qword ptr [rbp + 7416]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 7392], rax
 mov qword ptr [rbp + 7400], rdx
 jmp xchain231_n25_α
# IR_VAR
 xchain231_n50_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 jmp xchain231_n51_α
# IR_VAR
 xchain231_n51_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 jmp xchain231_n52_α
# IR_SUBSCRIPT x[i] variable
 xchain231_n52_α:
 mov rdi, qword ptr [rbp + 7200]
 mov rsi, qword ptr [rbp + 7208]
 mov rdx, qword ptr [rbp + 7232]
 mov rcx, qword ptr [rbp + 7240]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain231_n47_α
 mov qword ptr [rbp + 7264], rax
 mov qword ptr [rbp + 7272], rdx
 jmp xchain231_n53_α
# IR_DEREF variable -> value
 xchain231_n53_α:
 mov rdi, qword ptr [rbp + 7264]
 mov rsi, qword ptr [rbp + 7272]
 call rt_deref@PLT
 cmp eax, 99
 je xchain231_n47_α
 mov qword ptr [rbp + 7296], rax
 mov qword ptr [rbp + 7304], rdx
 jmp xchain231_n54_α
# IR_VAR
 xchain231_n54_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 jmp xchain231_n55_α
# IR_SUBSCRIPT x[i] variable
 xchain231_n55_α:
 mov rdi, qword ptr [rbp + 7296]
 mov rsi, qword ptr [rbp + 7304]
 mov rdx, qword ptr [rbp + 7312]
 mov rcx, qword ptr [rbp + 7320]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain231_n47_α
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 jmp xchain231_n56_α
# IR_DEREF variable -> value
 xchain231_n56_α:
 mov rdi, qword ptr [rbp + 7344]
 mov rsi, qword ptr [rbp + 7352]
 call rt_deref@PLT
 cmp eax, 99
 je xchain231_n47_α
 mov qword ptr [rbp + 7376], rax
 mov qword ptr [rbp + 7384], rdx
 jmp xchain231_n57_α
 xchain231_n57_α:
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
 mov rdi, qword ptr [rip + .Lx296_0]
 mov esi, 6
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx296_5
 mov rax, qword ptr [rbp + 7376]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 7384]
 mov qword ptr [1879052648], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx296_6]
 lea rdx, [rip + .Lx296_7]
 jmp rax
.Lx296_6:
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
 jmp .Lx296_2
.Lx296_7:
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
 jmp .Lx296_2
.Lx296_5:
 add rsp, 112
 mov edi, 0
 mov rsi, qword ptr [rbp + 7376]
 mov rdx, qword ptr [rbp + 7384]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx296_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx296_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx296_3]
 lea rdx, [rip + .Lx296_4]
 jmp rax
.Lx296_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx296_2
.Lx296_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx296_2
.Lx296_1:
 call rt_faildescr@PLT
.Lx296_2:
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain231_n47_α
 jmp xchain231_n58_α
 xchain231_n57_β:
 jmp xchain231_n47_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "node_repr"
 xchain231_n58_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7056]
 mov rsi, qword ptr [rbp + 7064]
 mov rdx, qword ptr [rbp + 7152]
 mov rcx, qword ptr [rbp + 7160]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7024], rax
 mov qword ptr [rbp + 7032], rdx
 jmp xchain231_n59_α
# IR_ASSIGN gva
 xchain231_n59_α:
 mov rax, qword ptr [rbp + 7024]
 mov rdx, qword ptr [rbp + 7032]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 7008], rax
 mov qword ptr [rbp + 7016], rdx
 jmp xchain231_n47_α
proc_node_repr_res:
add rsp, 8
pop rbp
proc_node_repr_β:
jmp proc_node_repr_ω
proc_node_repr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_node_repr_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_pp_node_α
proc_pp_node_α:
#=======================================================================================================================
    .global proc_pp_node_α
    .global proc_pp_node_β
    .global proc_pp_node_γ
    .global proc_pp_node_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
proc_pp_node_α_body:
# IR_VAR
 xchain299_n0_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain299_n1_α
 xchain299_n1_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7744] -> [zr+7712]
 mov rax, qword ptr [rbp + 7744]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7752]
 mov qword ptr [rbp + 7720], rax
  .section .rodata
  .Lrkfn302: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn302]
 lea rsi, [rbp + 7712]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7696], rax
 mov qword ptr [rbp + 7704], rdx
 cmp eax, 99
 je xchain299_n2_α
 jmp xchain299_n3_α
 xchain299_n1_β:
 jmp xchain299_n2_α
# IR_VAR
 xchain299_n2_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 8304], rax
 mov qword ptr [rbp + 8312], rdx
 jmp xchain299_n4_α
# IR_KEYWORD_SNOBOL4_read
 xchain299_n3_α:
 mov rdi, qword ptr [rip + .Lx304_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
 jmp xchain299_n6_α
.Lx304_0:
 .quad .Lx304_0_s
.Lx304_0_s:
 .string "LCASE"
 xchain299_n4_α:
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
 mov rdi, qword ptr [rip + .Lx306_0]
 mov esi, 6
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx306_5
 mov rax, qword ptr [rbp + 8304]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 8312]
 mov qword ptr [1879052648], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx306_6]
 lea rdx, [rip + .Lx306_7]
 jmp rax
.Lx306_6:
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
 jmp .Lx306_2
.Lx306_7:
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
 jmp .Lx306_2
.Lx306_5:
 add rsp, 112
 mov edi, 0
 mov rsi, qword ptr [rbp + 8304]
 mov rdx, qword ptr [rbp + 8312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx306_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx306_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx306_3]
 lea rdx, [rip + .Lx306_4]
 jmp rax
.Lx306_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx306_2
.Lx306_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx306_2
.Lx306_1:
 call rt_faildescr@PLT
.Lx306_2:
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 cmp eax, 99
 je xchain299_n5_α
 jmp xchain299_n7_α
 xchain299_n4_β:
 jmp xchain299_n5_α
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "node_repr"
# IR_LIT_STRING
 xchain299_n5_α:
 mov qword ptr [rbp + 8416], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 8424], rax
 jmp xchain299_n8_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string " "
# IR_KEYWORD_SNOBOL4_read
 xchain299_n6_α:
 mov rdi, qword ptr [rip + .Lx308_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 7792], rax
 mov qword ptr [rbp + 7800], rdx
 jmp xchain299_n9_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "UCASE"
# IR_ASSIGN gva
 xchain299_n7_α:
 mov rax, qword ptr [rbp + 8256]
 mov rdx, qword ptr [rbp + 8264]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain299_n5_α
# IR_VAR
 xchain299_n8_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 jmp xchain299_n10_α
 xchain299_n9_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7696] -> [zr+7632]
 mov rax, qword ptr [rbp + 7696]
 mov qword ptr [rbp + 7632], rax
 mov rax, qword ptr [rbp + 7704]
 mov qword ptr [rbp + 7640], rax
# marshal arg1 = producer-box slot [zr+7776] -> [zr+7648]
 mov rax, qword ptr [rbp + 7776]
 mov qword ptr [rbp + 7648], rax
 mov rax, qword ptr [rbp + 7784]
 mov qword ptr [rbp + 7656], rax
# marshal arg2 = producer-box slot [zr+7792] -> [zr+7664]
 mov rax, qword ptr [rbp + 7792]
 mov qword ptr [rbp + 7664], rax
 mov rax, qword ptr [rbp + 7800]
 mov qword ptr [rbp + 7672], rax
  .section .rodata
  .Lrkfn312: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn312]
 lea rsi, [rbp + 7632]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7616], rax
 mov qword ptr [rbp + 7624], rdx
 cmp eax, 99
 je xchain299_n2_α
 jmp xchain299_n12_α
 xchain299_n9_β:
 jmp xchain299_n2_α
 xchain299_n10_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8416] -> [zr+8368]
 mov rax, qword ptr [rbp + 8416]
 mov qword ptr [rbp + 8368], rax
 mov rax, qword ptr [rbp + 8424]
 mov qword ptr [rbp + 8376], rax
# marshal arg1 = producer-box slot [zr+8448] -> [zr+8384]
 mov rax, qword ptr [rbp + 8448]
 mov qword ptr [rbp + 8384], rax
 mov rax, qword ptr [rbp + 8456]
 mov qword ptr [rbp + 8392], rax
  .section .rodata
  .Lrkfn314: .string "DUPL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn314]
 lea rsi, [rbp + 8368]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 cmp eax, 99
 je xchain299_n11_α
 jmp xchain299_n13_α
 xchain299_n10_β:
 jmp xchain299_n11_α
# IR_LIT_INTEGER
 xchain299_n11_α:
 mov qword ptr [rbp + 8720], 6
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 8728], rax
 jmp xchain299_n14_α
.Lx315_0:
 .quad 80
# IR_LIT_STRING
 xchain299_n12_α:
 mov qword ptr [rbp + 7808], 1
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 7816], rax
 jmp xchain299_n15_α
.Lx316_0:
 .quad .Lx316_0_s
.Lx316_0_s:
 .string "STRING"
# IR_ASSIGN gva
 xchain299_n13_α:
 mov rax, qword ptr [rbp + 8352]
 mov rdx, qword ptr [rbp + 8360]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 8336], rax
 mov qword ptr [rbp + 8344], rdx
 jmp xchain299_n11_α
# IR_VAR
 xchain299_n14_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 jmp xchain299_n16_α
 xchain299_n15_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7616] -> [zr+7568]
 mov rax, qword ptr [rbp + 7616]
 mov qword ptr [rbp + 7568], rax
 mov rax, qword ptr [rbp + 7624]
 mov qword ptr [rbp + 7576], rax
# marshal arg1 = producer-box slot [zr+7808] -> [zr+7584]
 mov rax, qword ptr [rbp + 7808]
 mov qword ptr [rbp + 7584], rax
 mov rax, qword ptr [rbp + 7816]
 mov qword ptr [rbp + 7592], rax
  .section .rodata
  .Lrkfn320: .string "IDENT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn320]
 lea rsi, [rbp + 7568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7552], rax
 mov qword ptr [rbp + 7560], rdx
 cmp eax, 99
 je xchain299_n2_α
 jmp xchain299_n18_α
 xchain299_n15_β:
 jmp xchain299_n2_α
# IR_VAR
 xchain299_n16_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 8688], rax
 mov qword ptr [rbp + 8696], rdx
 jmp xchain299_n19_α
# IR_VAR
 xchain299_n17_α:
 mov rax, qword ptr [1879052848]
 mov rdx, qword ptr [1879052856]
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 jmp xchain299_n20_α
# IR_LIT_STRING
 xchain299_n18_α:
 mov qword ptr [rbp + 8048], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain299_n22_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string " "
 xchain299_n19_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8688] -> [zr+8656]
 mov rax, qword ptr [rbp + 8688]
 mov qword ptr [rbp + 8656], rax
 mov rax, qword ptr [rbp + 8696]
 mov qword ptr [rbp + 8664], rax
  .section .rodata
  .Lrkfn325: .string "SIZE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn325]
 lea rsi, [rbp + 8656]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 cmp eax, 99
 je xchain299_n17_α
 jmp xchain299_n23_α
 xchain299_n19_β:
 jmp xchain299_n17_α
# IR_VAR
 xchain299_n20_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 8976], rax
 mov qword ptr [rbp + 8984], rdx
 jmp xchain299_n24_α
# IR_VAR
 xchain299_n21_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 jmp xchain299_n25_α
# IR_VAR
 xchain299_n22_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 jmp xchain299_n27_α
 xchain299_n23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 8608]
 cmp eax, 100
 je .Lx329_0
 mov eax, dword ptr [rbp + 8640]
 cmp eax, 100
 je .Lx329_0
 mov eax, dword ptr [rbp + 8608]
 cmp eax, 6
 jne .Lx329_2
 mov eax, dword ptr [rbp + 8640]
 cmp eax, 6
 jne .Lx329_2
.Lx329_1:
 mov rax, qword ptr [rbp + 8616]
 mov rcx, qword ptr [rbp + 8648]
 add rax, rcx
 mov qword ptr [rbp + 8576], 6
 mov qword ptr [rbp + 8584], rax
 jmp xchain299_n28_α
.Lx329_0:
 mov rdi, qword ptr [rbp + 8608]
 mov rsi, qword ptr [rbp + 8616]
 mov rdx, qword ptr [rbp + 8640]
 mov rcx, qword ptr [rbp + 8648]
 mov r8d, 0
 lea r9, [rbp + 8576]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain299_n28_α
.Lx329_2:
 mov rdi, qword ptr [rbp + 8608]
 mov rsi, qword ptr [rbp + 8616]
 mov rdx, qword ptr [rbp + 8640]
 mov rcx, qword ptr [rbp + 8648]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain299_n17_α
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
 jmp xchain299_n28_α
 xchain299_n23_β:
 jmp xchain299_n17_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n24_α:
 mov rdi, qword ptr [rbp + 8944]
 mov rsi, qword ptr [rbp + 8952]
 mov rdx, qword ptr [rbp + 8976]
 mov rcx, qword ptr [rbp + 8984]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain299_n21_α
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
 jmp xchain299_n29_α
# IR_VAR
 xchain299_n25_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 9104], rax
 mov qword ptr [rbp + 9112], rdx
 jmp xchain299_n30_α
# IR_VAR
 xchain299_n26_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 9328], rax
 mov qword ptr [rbp + 9336], rdx
 jmp xchain299_n31_α
 xchain299_n27_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8048] -> [zr+8000]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 8000], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 8008], rax
# marshal arg1 = producer-box slot [zr+8080] -> [zr+8016]
 mov rax, qword ptr [rbp + 8080]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 8088]
 mov qword ptr [rbp + 8024], rax
  .section .rodata
  .Lrkfn334: .string "DUPL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn334]
 lea rsi, [rbp + 8000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7984], rax
 mov qword ptr [rbp + 7992], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp xchain299_n33_α
 xchain299_n27_β:
 jmp proc_pp_node_γ
# IR_COERCE_NUMERIC
 xchain299_n28_α:
 mov eax, dword ptr [rbp + 8720]
 cmp eax, 7
 je .Lx336_1
 cmp eax, 6
 jne .Lx336_0
 mov eax, dword ptr [rbp + 8576]
 cmp eax, 6
 jne .Lx336_0
.Lx336_1:
 mov rax, qword ptr [rbp + 8720]
 mov qword ptr [rbp + 8544], rax
 mov rax, qword ptr [rbp + 8728]
 mov qword ptr [rbp + 8552], rax
 jmp xchain299_n34_α
.Lx336_0:
 lea rdi, [rbp + 8720]
 lea rsi, [rbp + 8576]
 lea rdx, [rbp + 8544]
 mov rcx, 111
 call rt_coerce_num2_d@PLT
 jmp xchain299_n34_α
# IR_DEREF variable -> value
 xchain299_n29_α:
 mov rdi, qword ptr [rbp + 9008]
 mov rsi, qword ptr [rbp + 9016]
 call rt_deref@PLT
 cmp eax, 99
 je xchain299_n21_α
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain299_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n30_α:
 mov rdi, qword ptr [rbp + 9072]
 mov rsi, qword ptr [rbp + 9080]
 mov rdx, qword ptr [rbp + 9104]
 mov rcx, qword ptr [rbp + 9112]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain299_n26_α
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 jmp xchain299_n36_α
# IR_LIT_STRING
 xchain299_n31_α:
 mov qword ptr [rbp + 9360], 1
 mov rax, qword ptr [rip + .Lx339_0]
 mov qword ptr [rbp + 9368], rax
 jmp xchain299_n37_α
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "( "
# IR_LIT_INTEGER
 xchain299_n32_α:
 mov qword ptr [rbp + 9504], 6
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [rbp + 9512], rax
 jmp xchain299_n38_α
.Lx340_0:
 .quad 0
# IR_LIT_STRING
 xchain299_n33_α:
 mov qword ptr [rbp + 8112], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 8120], rax
 jmp xchain299_n39_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "'"
# IR_COERCE_NUMERIC
 xchain299_n34_α:
 mov eax, dword ptr [rbp + 8576]
 cmp eax, 7
 je .Lx343_1
 cmp eax, 6
 jne .Lx343_0
 mov eax, dword ptr [rbp + 8720]
 cmp eax, 6
 jne .Lx343_0
.Lx343_1:
 mov rax, qword ptr [rbp + 8576]
 mov qword ptr [rbp + 8512], rax
 mov rax, qword ptr [rbp + 8584]
 mov qword ptr [rbp + 8520], rax
 jmp xchain299_n40_α
.Lx343_0:
 lea rdi, [rbp + 8576]
 lea rsi, [rbp + 8720]
 lea rdx, [rbp + 8512]
 mov rcx, 112
 call rt_coerce_num2_d@PLT
 jmp xchain299_n40_α
# IR_ASSIGN gva
 xchain299_n35_α:
 mov rax, qword ptr [rbp + 9040]
 mov rdx, qword ptr [rbp + 9048]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 8928], rax
 mov qword ptr [rbp + 8936], rdx
 jmp xchain299_n21_α
# IR_DEREF variable -> value
 xchain299_n36_α:
 mov rdi, qword ptr [rbp + 9136]
 mov rsi, qword ptr [rbp + 9144]
 call rt_deref@PLT
 cmp eax, 99
 je xchain299_n26_α
 mov qword ptr [rbp + 9168], rax
 mov qword ptr [rbp + 9176], rdx
 jmp xchain299_n41_α
 xchain299_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9328]
 mov rsi, qword ptr [rbp + 9336]
 mov rdx, qword ptr [rbp + 9360]
 mov rcx, qword ptr [rbp + 9368]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9296], rax
 mov qword ptr [rbp + 9304], rdx
 jmp xchain299_n42_α
# IR_ASSIGN gva
 xchain299_n38_α:
 mov rax, qword ptr [rbp + 9504]
 mov rdx, qword ptr [rbp + 9512]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 9488], rax
 mov qword ptr [rbp + 9496], rdx
 jmp xchain299_n43_α
 xchain299_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7984]
 mov rsi, qword ptr [rbp + 7992]
 mov rdx, qword ptr [rbp + 8112]
 mov rcx, qword ptr [rbp + 8120]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 jmp xchain299_n44_α
# IR_CMP_TEST
 xchain299_n40_α:
 lea rdi, [rbp + 8544]
 lea rsi, [rbp + 8512]
 call rt_cmp_d@PLT
 test eax, eax
 jle xchain299_n17_α
 mov qword ptr [rbp + 8480], 0
 mov qword ptr [rbp + 8488], 0
 jmp xchain299_n45_α
# IR_ASSIGN gva
 xchain299_n41_α:
 mov rax, qword ptr [rbp + 9168]
 mov rdx, qword ptr [rbp + 9176]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 9056], rax
 mov qword ptr [rbp + 9064], rdx
 jmp xchain299_n26_α
# IR_LIT_STRING
 xchain299_n42_α:
 mov qword ptr [rbp + 9392], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 9400], rax
 jmp xchain299_n46_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "'"
# IR_VAR
 xchain299_n43_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 9712], rax
 mov qword ptr [rbp + 9720], rdx
 jmp xchain299_n47_α
# IR_VAR
 xchain299_n44_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 8144], rax
 mov qword ptr [rbp + 8152], rdx
 jmp xchain299_n48_α
# IR_VAR
 xchain299_n45_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 8832], rax
 mov qword ptr [rbp + 8840], rdx
 jmp xchain299_n49_α
 xchain299_n46_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9296]
 mov rsi, qword ptr [rbp + 9304]
 mov rdx, qword ptr [rbp + 9392]
 mov rcx, qword ptr [rbp + 9400]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9264], rax
 mov qword ptr [rbp + 9272], rdx
 jmp xchain299_n50_α
# IR_VAR
 xchain299_n47_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 jmp xchain299_n51_α
 xchain299_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7952]
 mov rsi, qword ptr [rbp + 7960]
 mov rdx, qword ptr [rbp + 8144]
 mov rcx, qword ptr [rbp + 8152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7920], rax
 mov qword ptr [rbp + 7928], rdx
 jmp xchain299_n52_α
# IR_VAR
 xchain299_n49_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 8864], rax
 mov qword ptr [rbp + 8872], rdx
 jmp xchain299_n53_α
# IR_VAR
 xchain299_n50_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 9424], rax
 mov qword ptr [rbp + 9432], rdx
 jmp xchain299_n54_α
# IR_COERCE_NUMERIC
 xchain299_n51_α:
 mov eax, dword ptr [rbp + 9712]
 cmp eax, 7
 je .Lx362_1
 cmp eax, 6
 jne .Lx362_0
 mov eax, dword ptr [rbp + 9680]
 cmp eax, 6
 jne .Lx362_0
.Lx362_1:
 mov rax, qword ptr [rbp + 9712]
 mov qword ptr [rbp + 9648], rax
 mov rax, qword ptr [rbp + 9720]
 mov qword ptr [rbp + 9656], rax
 jmp xchain299_n55_α
.Lx362_0:
 lea rdi, [rbp + 9712]
 lea rsi, [rbp + 9680]
 lea rdx, [rbp + 9648]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain299_n55_α
# IR_LIT_STRING
 xchain299_n52_α:
 mov qword ptr [rbp + 8176], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [rbp + 8184], rax
 jmp xchain299_n56_α
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "'"
 xchain299_n53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8832]
 mov rsi, qword ptr [rbp + 8840]
 mov rdx, qword ptr [rbp + 8864]
 mov rcx, qword ptr [rbp + 8872]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 jmp xchain299_n57_α
 xchain299_n54_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9264]
 mov rsi, qword ptr [rbp + 9272]
 mov rdx, qword ptr [rbp + 9424]
 mov rcx, qword ptr [rbp + 9432]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 jmp xchain299_n58_α
# IR_COERCE_NUMERIC
 xchain299_n55_α:
 mov eax, dword ptr [rbp + 9680]
 cmp eax, 7
 je .Lx367_1
 cmp eax, 6
 jne .Lx367_0
 mov eax, dword ptr [rbp + 9712]
 cmp eax, 6
 jne .Lx367_0
.Lx367_1:
 mov rax, qword ptr [rbp + 9680]
 mov qword ptr [rbp + 9616], rax
 mov rax, qword ptr [rbp + 9688]
 mov qword ptr [rbp + 9624], rax
 jmp xchain299_n59_α
.Lx367_0:
 lea rdi, [rbp + 9680]
 lea rsi, [rbp + 9712]
 lea rdx, [rbp + 9616]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain299_n59_α
 xchain299_n56_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7920]
 mov rsi, qword ptr [rbp + 7928]
 mov rdx, qword ptr [rbp + 8176]
 mov rcx, qword ptr [rbp + 8184]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7888], rax
 mov qword ptr [rbp + 7896], rdx
 jmp xchain299_n60_α
# IR_VAR
 xchain299_n57_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 8896], rax
 mov qword ptr [rbp + 8904], rdx
 jmp xchain299_n61_α
# IR_LIT_STRING
 xchain299_n58_α:
 mov qword ptr [rbp + 9456], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [rbp + 9464], rax
 jmp xchain299_n62_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "',"
# IR_CMP_TEST
 xchain299_n59_α:
 lea rdi, [rbp + 9648]
 lea rsi, [rbp + 9616]
 call rt_cmp_d@PLT
 test eax, eax
 jns proc_pp_node_γ
 mov qword ptr [rbp + 9584], 0
 mov qword ptr [rbp + 9592], 0
 jmp xchain299_n63_α
# IR_VAR
 xchain299_n60_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 jmp xchain299_n64_α
 xchain299_n61_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8800]
 mov rsi, qword ptr [rbp + 8808]
 mov rdx, qword ptr [rbp + 8896]
 mov rcx, qword ptr [rbp + 8904]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8768], rax
 mov qword ptr [rbp + 8776], rdx
 jmp xchain299_n65_α
 xchain299_n62_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9232]
 mov rsi, qword ptr [rbp + 9240]
 mov rdx, qword ptr [rbp + 9456]
 mov rcx, qword ptr [rbp + 9464]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain299_n66_α
# IR_VAR
 xchain299_n63_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 9776], rax
 mov qword ptr [rbp + 9784], rdx
 jmp xchain299_n67_α
 xchain299_n64_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7888]
 mov rsi, qword ptr [rbp + 7896]
 mov rdx, qword ptr [rbp + 8208]
 mov rcx, qword ptr [rbp + 8216]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7856], rax
 mov qword ptr [rbp + 7864], rdx
 jmp xchain299_n68_α
# IR_ASSIGN global
 xchain299_n65_α:
 mov rsi, qword ptr [rbp + 8768]
 mov rdx, qword ptr [rbp + 8776]
 mov rdi, qword ptr [rip + .Lx378_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 jmp proc_pp_node_γ
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "OUTPUT"
# IR_ASSIGN global
 xchain299_n66_α:
 mov rsi, qword ptr [rbp + 9200]
 mov rdx, qword ptr [rbp + 9208]
 mov rdi, qword ptr [rip + .Lx379_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 9184], rax
 mov qword ptr [rbp + 9192], rdx
 jmp xchain299_n32_α
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "OUTPUT"
# IR_LIT_INTEGER
 xchain299_n67_α:
 mov qword ptr [rbp + 9808], 6
 mov rax, qword ptr [rip + .Lx380_0]
 mov qword ptr [rbp + 9816], rax
 jmp xchain299_n69_α
.Lx380_0:
 .quad 1
# IR_ASSIGN global
 xchain299_n68_α:
 mov rsi, qword ptr [rbp + 7856]
 mov rdx, qword ptr [rbp + 7864]
 mov rdi, qword ptr [rip + .Lx381_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp proc_pp_node_γ
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "OUTPUT"
 xchain299_n69_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 9776]
 cmp eax, 100
 je .Lx382_0
 mov eax, dword ptr [rbp + 9776]
 cmp eax, 6
 jne .Lx382_2
.Lx382_1:
 mov rax, qword ptr [rbp + 9784]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 9744], 6
 mov qword ptr [rbp + 9752], rax
 jmp xchain299_n70_α
.Lx382_0:
 mov rdi, qword ptr [rbp + 9776]
 mov rsi, qword ptr [rbp + 9784]
 mov rdx, qword ptr [rbp + 9808]
 mov rcx, qword ptr [rbp + 9816]
 mov r8d, 0
 lea r9, [rbp + 9744]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain299_n70_α
.Lx382_2:
 mov rdi, qword ptr [rbp + 9776]
 mov rsi, qword ptr [rbp + 9784]
 mov rdx, qword ptr [rbp + 9808]
 mov rcx, qword ptr [rbp + 9816]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 9744], rax
 mov qword ptr [rbp + 9752], rdx
 jmp xchain299_n70_α
 xchain299_n69_β:
 jmp proc_pp_node_γ
 xchain299_n70_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9584]
 mov rsi, qword ptr [rbp + 9592]
 mov rdx, qword ptr [rbp + 9744]
 mov rcx, qword ptr [rbp + 9752]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 jmp xchain299_n71_α
# IR_ASSIGN gva
 xchain299_n71_α:
 mov rax, qword ptr [rbp + 9552]
 mov rdx, qword ptr [rbp + 9560]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 9536], rax
 mov qword ptr [rbp + 9544], rdx
 jmp xchain299_n72_α
# IR_VAR
 xchain299_n72_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10016], rax
 mov qword ptr [rbp + 10024], rdx
 jmp xchain299_n73_α
# IR_VAR
 xchain299_n73_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 9984], rax
 mov qword ptr [rbp + 9992], rdx
 jmp xchain299_n75_α
# IR_VAR
 xchain299_n74_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 10608], rax
 mov qword ptr [rbp + 10616], rdx
 jmp xchain299_n76_α
# IR_COERCE_NUMERIC
 xchain299_n75_α:
 mov eax, dword ptr [rbp + 10016]
 cmp eax, 7
 je .Lx389_1
 cmp eax, 6
 jne .Lx389_0
 mov eax, dword ptr [rbp + 9984]
 cmp eax, 6
 jne .Lx389_0
.Lx389_1:
 mov rax, qword ptr [rbp + 10016]
 mov qword ptr [rbp + 9952], rax
 mov rax, qword ptr [rbp + 10024]
 mov qword ptr [rbp + 9960], rax
 jmp xchain299_n77_α
.Lx389_0:
 lea rdi, [rbp + 10016]
 lea rsi, [rbp + 9984]
 lea rdx, [rbp + 9952]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain299_n77_α
# IR_VAR
 xchain299_n76_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 10640], rax
 mov qword ptr [rbp + 10648], rdx
 jmp xchain299_n78_α
# IR_COERCE_NUMERIC
 xchain299_n77_α:
 mov eax, dword ptr [rbp + 9984]
 cmp eax, 7
 je .Lx392_1
 cmp eax, 6
 jne .Lx392_0
 mov eax, dword ptr [rbp + 10016]
 cmp eax, 6
 jne .Lx392_0
.Lx392_1:
 mov rax, qword ptr [rbp + 9984]
 mov qword ptr [rbp + 9920], rax
 mov rax, qword ptr [rbp + 9992]
 mov qword ptr [rbp + 9928], rax
 jmp xchain299_n79_α
.Lx392_0:
 lea rdi, [rbp + 9984]
 lea rsi, [rbp + 10016]
 lea rdx, [rbp + 9920]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain299_n79_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n78_α:
 mov rdi, qword ptr [rbp + 10608]
 mov rsi, qword ptr [rbp + 10616]
 mov rdx, qword ptr [rbp + 10640]
 mov rcx, qword ptr [rbp + 10648]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 jmp xchain299_n80_α
# IR_CMP_TEST
 xchain299_n79_α:
 lea rdi, [rbp + 9952]
 lea rsi, [rbp + 9920]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain299_n74_α
 mov qword ptr [rbp + 9888], 0
 mov qword ptr [rbp + 9896], 0
 jmp xchain299_n81_α
# IR_DEREF variable -> value
 xchain299_n80_α:
 mov rdi, qword ptr [rbp + 10672]
 mov rsi, qword ptr [rbp + 10680]
 call rt_deref@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10704], rax
 mov qword ptr [rbp + 10712], rdx
 jmp xchain299_n82_α
# IR_VAR
 xchain299_n81_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10048], rax
 mov qword ptr [rbp + 10056], rdx
 jmp xchain299_n83_α
# IR_VAR
 xchain299_n82_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10720], rax
 mov qword ptr [rbp + 10728], rdx
 jmp xchain299_n84_α
 xchain299_n83_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9888]
 mov rsi, qword ptr [rbp + 9896]
 mov rdx, qword ptr [rbp + 10048]
 mov rcx, qword ptr [rbp + 10056]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9856], rax
 mov qword ptr [rbp + 9864], rdx
 jmp xchain299_n85_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n84_α:
 mov rdi, qword ptr [rbp + 10704]
 mov rsi, qword ptr [rbp + 10712]
 mov rdx, qword ptr [rbp + 10720]
 mov rcx, qword ptr [rbp + 10728]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10752], rax
 mov qword ptr [rbp + 10760], rdx
 jmp xchain299_n86_α
# IR_ASSIGN gva
 xchain299_n85_α:
 mov rax, qword ptr [rbp + 9856]
 mov rdx, qword ptr [rbp + 9864]
 mov qword ptr [1879052784], rax
 mov qword ptr [1879052792], rdx
 mov qword ptr [rbp + 9840], rax
 mov qword ptr [rbp + 9848], rdx
 jmp xchain299_n87_α
# IR_DEREF variable -> value
 xchain299_n86_α:
 mov rdi, qword ptr [rbp + 10752]
 mov rsi, qword ptr [rbp + 10760]
 call rt_deref@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10784], rax
 mov qword ptr [rbp + 10792], rdx
 jmp xchain299_n88_α
# IR_VAR
 xchain299_n87_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 10160], rax
 mov qword ptr [rbp + 10168], rdx
 jmp xchain299_n89_α
# IR_VAR
 xchain299_n88_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 10832], rax
 mov qword ptr [rbp + 10840], rdx
 jmp xchain299_n91_α
# IR_VAR
 xchain299_n89_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 10192], rax
 mov qword ptr [rbp + 10200], rdx
 jmp xchain299_n92_α
# IR_VAR
 xchain299_n90_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10496], rax
 mov qword ptr [rbp + 10504], rdx
 jmp xchain299_n93_α
# IR_LIT_INTEGER
 xchain299_n91_α:
 mov qword ptr [rbp + 10864], 6
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 10872], rax
 jmp xchain299_n94_α
.Lx407_0:
 .quad 2
# IR_SUBSCRIPT x[i] variable
 xchain299_n92_α:
 mov rdi, qword ptr [rbp + 10160]
 mov rsi, qword ptr [rbp + 10168]
 mov rdx, qword ptr [rbp + 10192]
 mov rcx, qword ptr [rbp + 10200]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 10224], rax
 mov qword ptr [rbp + 10232], rdx
 jmp xchain299_n95_α
# IR_ASSIGN gva
 xchain299_n93_α:
 mov rax, qword ptr [rbp + 10496]
 mov rdx, qword ptr [rbp + 10504]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 10480], rax
 mov qword ptr [rbp + 10488], rdx
 jmp xchain299_n43_α
 xchain299_n94_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10832]
 cmp eax, 100
 je .Lx410_0
 mov eax, dword ptr [rbp + 10832]
 cmp eax, 6
 jne .Lx410_2
.Lx410_1:
 mov rax, qword ptr [rbp + 10840]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 10800], 6
 mov qword ptr [rbp + 10808], rax
 jmp xchain299_n96_α
.Lx410_0:
 mov rdi, qword ptr [rbp + 10832]
 mov rsi, qword ptr [rbp + 10840]
 mov rdx, qword ptr [rbp + 10864]
 mov rcx, qword ptr [rbp + 10872]
 mov r8d, 0
 lea r9, [rbp + 10800]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain299_n96_α
.Lx410_2:
 mov rdi, qword ptr [rbp + 10832]
 mov rsi, qword ptr [rbp + 10840]
 mov rdx, qword ptr [rbp + 10864]
 mov rcx, qword ptr [rbp + 10872]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10800], rax
 mov qword ptr [rbp + 10808], rdx
 jmp xchain299_n96_α
 xchain299_n94_β:
 jmp proc_pp_node_γ
# IR_DEREF variable -> value
 xchain299_n95_α:
 mov rdi, qword ptr [rbp + 10224]
 mov rsi, qword ptr [rbp + 10232]
 call rt_deref@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 10256], rax
 mov qword ptr [rbp + 10264], rdx
 jmp xchain299_n97_α
# IR_LIT_STRING
 xchain299_n96_α:
 mov qword ptr [rbp + 10928], 1
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 10936], rax
 jmp xchain299_n98_α
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string ")"
# IR_VAR
 xchain299_n97_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10272], rax
 mov qword ptr [rbp + 10280], rdx
 jmp xchain299_n99_α
# IR_VAR
 xchain299_n98_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 10960], rax
 mov qword ptr [rbp + 10968], rdx
 jmp xchain299_n100_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n99_α:
 mov rdi, qword ptr [rbp + 10256]
 mov rsi, qword ptr [rbp + 10264]
 mov rdx, qword ptr [rbp + 10272]
 mov rcx, qword ptr [rbp + 10280]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 10304], rax
 mov qword ptr [rbp + 10312], rdx
 jmp xchain299_n101_α
 xchain299_n100_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 10928]
 mov rsi, qword ptr [rbp + 10936]
 mov rdx, qword ptr [rbp + 10960]
 mov rcx, qword ptr [rbp + 10968]
 call str_concat_d@PLT
 mov qword ptr [rbp + 10896], rax
 mov qword ptr [rbp + 10904], rdx
 jmp xchain299_n102_α
# IR_DEREF variable -> value
 xchain299_n101_α:
 mov rdi, qword ptr [rbp + 10304]
 mov rsi, qword ptr [rbp + 10312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 10336], rax
 mov qword ptr [rbp + 10344], rdx
 jmp xchain299_n103_α
 xchain299_n102_α:
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
 mov rdi, qword ptr [rip + .Lx419_0]
 mov esi, 9
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx419_5
 mov rax, qword ptr [rbp + 10784]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 10792]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rbp + 10800]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 10808]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 10896]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 10904]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx419_6]
 lea rdx, [rip + .Lx419_7]
 jmp rax
.Lx419_6:
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
 jmp .Lx419_2
.Lx419_7:
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
 jmp .Lx419_2
.Lx419_5:
 add rsp, 160
 mov edi, 0
 mov rsi, qword ptr [rbp + 10784]
 mov rdx, qword ptr [rbp + 10792]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10800]
 mov rdx, qword ptr [rbp + 10808]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 10896]
 mov rdx, qword ptr [rbp + 10904]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx419_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx419_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx419_3]
 lea rdx, [rip + .Lx419_4]
 jmp rax
.Lx419_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx419_2
.Lx419_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx419_2
.Lx419_1:
 call rt_faildescr@PLT
.Lx419_2:
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp proc_pp_node_γ
 xchain299_n102_β:
 jmp proc_pp_node_γ
.Lx419_0:
 .quad .Lx419_0_s
.Lx419_0_s:
 .string "pp_node"
# IR_VAR
 xchain299_n103_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 jmp xchain299_n104_α
# IR_LIT_INTEGER
 xchain299_n104_α:
 mov qword ptr [rbp + 10416], 6
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 10424], rax
 jmp xchain299_n105_α
.Lx421_0:
 .quad 2
 xchain299_n105_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10384]
 cmp eax, 100
 je .Lx422_0
 mov eax, dword ptr [rbp + 10384]
 cmp eax, 6
 jne .Lx422_2
.Lx422_1:
 mov rax, qword ptr [rbp + 10392]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 10352], 6
 mov qword ptr [rbp + 10360], rax
 jmp xchain299_n106_α
.Lx422_0:
 mov rdi, qword ptr [rbp + 10384]
 mov rsi, qword ptr [rbp + 10392]
 mov rdx, qword ptr [rbp + 10416]
 mov rcx, qword ptr [rbp + 10424]
 mov r8d, 0
 lea r9, [rbp + 10352]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain299_n106_α
.Lx422_2:
 mov rdi, qword ptr [rbp + 10384]
 mov rsi, qword ptr [rbp + 10392]
 mov rdx, qword ptr [rbp + 10416]
 mov rcx, qword ptr [rbp + 10424]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 10352], rax
 mov qword ptr [rbp + 10360], rdx
 jmp xchain299_n106_α
 xchain299_n105_β:
 jmp xchain299_n90_α
# IR_LIT_STRING
 xchain299_n106_α:
 mov qword ptr [rbp + 10448], 1
 mov rax, qword ptr [rip + .Lx423_0]
 mov qword ptr [rbp + 10456], rax
 jmp xchain299_n107_α
.Lx423_0:
 .quad .Lx423_0_s
.Lx423_0_s:
 .string ","
 xchain299_n107_α:
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
 mov rdi, qword ptr [rip + .Lx425_0]
 mov esi, 9
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx425_5
 mov rax, qword ptr [rbp + 10336]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 10344]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rbp + 10352]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 10360]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 10448]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 10456]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx425_6]
 lea rdx, [rip + .Lx425_7]
 jmp rax
.Lx425_6:
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
 jmp .Lx425_2
.Lx425_7:
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
 jmp .Lx425_2
.Lx425_5:
 add rsp, 160
 mov edi, 0
 mov rsi, qword ptr [rbp + 10336]
 mov rdx, qword ptr [rbp + 10344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10352]
 mov rdx, qword ptr [rbp + 10360]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 10448]
 mov rdx, qword ptr [rbp + 10456]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx425_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx425_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx425_3]
 lea rdx, [rip + .Lx425_4]
 jmp rax
.Lx425_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx425_2
.Lx425_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx425_2
.Lx425_1:
 call rt_faildescr@PLT
.Lx425_2:
 mov qword ptr [rbp + 10080], rax
 mov qword ptr [rbp + 10088], rdx
 cmp eax, 99
 je xchain299_n90_α
 jmp xchain299_n90_α
 xchain299_n107_β:
 jmp xchain299_n90_α
.Lx425_0:
 .quad .Lx425_0_s
.Lx425_0_s:
 .string "pp_node"
proc_pp_node_res:
add rsp, 8
pop rbp
proc_pp_node_β:
jmp proc_pp_node_ω
proc_pp_node_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_pp_node_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
  .globl proc_pp_bank_α
proc_pp_bank_α:
#=======================================================================================================================
    .global proc_pp_bank_α
    .global proc_pp_bank_β
    .global proc_pp_bank_γ
    .global proc_pp_bank_ω
  sub rsp, 13200
  mov [rsp + 13176], rcx
  mov [rsp + 13184], rdx
  mov [rsp + 13192], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 13168
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 13160], rsp
proc_pp_bank_α_body:
# IR_VAR
 xchain426_n0_α:
 mov rax, qword ptr [1879052928]
 mov rdx, qword ptr [1879052936]
 mov qword ptr [rbp + 11072], rax
 mov qword ptr [rbp + 11080], rdx
 jmp xchain426_n1_α
# IR_LIT_INTEGER
 xchain426_n1_α:
 mov qword ptr [rbp + 11104], 6
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [rbp + 11112], rax
 jmp xchain426_n3_α
.Lx428_0:
 .quad 0
# IR_LIT_STRING
 xchain426_n2_α:
 mov qword ptr [rbp + 11232], 1
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 11240], rax
 jmp xchain426_n4_α
.Lx429_0:
 .quad .Lx429_0_s
.Lx429_0_s:
 .string "dummy"
# IR_LIT_STRING
 xchain426_n3_α:
 mov qword ptr [rbp + 11136], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [rbp + 11144], rax
 jmp xchain426_n5_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string ""
 xchain426_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11232] -> [zr+11200]
 mov rax, qword ptr [rbp + 11232]
 mov qword ptr [rbp + 11200], rax
 mov rax, qword ptr [rbp + 11240]
 mov qword ptr [rbp + 11208], rax
  .section .rodata
  .Lrkfn432: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn432]
 lea rsi, [rbp + 11200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11184], rax
 mov qword ptr [rbp + 11192], rdx
 cmp eax, 99
 je proc_pp_bank_γ
 jmp xchain426_n6_α
 xchain426_n4_β:
 jmp proc_pp_bank_γ
 xchain426_n5_α:
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
 mov rdi, qword ptr [rip + .Lx434_0]
 mov esi, 9
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx434_5
 mov rax, qword ptr [rbp + 11072]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 11080]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rbp + 11104]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 11112]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 11136]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 11144]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx434_6]
 lea rdx, [rip + .Lx434_7]
 jmp rax
.Lx434_6:
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
 jmp .Lx434_2
.Lx434_7:
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
 jmp .Lx434_2
.Lx434_5:
 add rsp, 160
 mov edi, 0
 mov rsi, qword ptr [rbp + 11072]
 mov rdx, qword ptr [rbp + 11080]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 11104]
 mov rdx, qword ptr [rbp + 11112]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 11136]
 mov rdx, qword ptr [rbp + 11144]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx434_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx434_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx434_3]
 lea rdx, [rip + .Lx434_4]
 jmp rax
.Lx434_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx434_2
.Lx434_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx434_2
.Lx434_1:
 call rt_faildescr@PLT
.Lx434_2:
 mov qword ptr [rbp + 10992], rax
 mov qword ptr [rbp + 11000], rdx
 cmp eax, 99
 je xchain426_n2_α
 jmp xchain426_n2_α
 xchain426_n5_β:
 jmp xchain426_n2_α
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
 .string "pp_node"
# IR_ASSIGN gva
 xchain426_n6_α:
 mov rax, qword ptr [rbp + 11184]
 mov rdx, qword ptr [rbp + 11192]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 11168], rax
 mov qword ptr [rbp + 11176], rdx
 jmp proc_pp_bank_γ
proc_pp_bank_res:
add rsp, 8
pop rbp
proc_pp_bank_β:
jmp proc_pp_bank_ω
proc_pp_bank_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 13176]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
jmp rax
proc_pp_bank_ω:
mov rax, [rbp + 13184]
lea rsp, [rbp + 13200]
mov rbp, [rbp + 13192]
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
 xchain436_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx438_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx438_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx438_6]
 lea rdx, [rip + .Lx438_7]
 jmp rax
.Lx438_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx438_2
.Lx438_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx438_2
.Lx438_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx438_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx438_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx438_3]
 lea rdx, [rip + .Lx438_4]
 jmp rax
.Lx438_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx438_2
.Lx438_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx438_2
.Lx438_1:
 call rt_faildescr@PLT
.Lx438_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$0_ω
 jmp xchain436_n1_α
 xchain436_n0_β:
 jmp proc_EXPR$0_ω
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain436_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053936], rax
 mov qword ptr [1879053944], rdx
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
 xchain440_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx442_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx442_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx442_6]
 lea rdx, [rip + .Lx442_7]
 jmp rax
.Lx442_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx442_2
.Lx442_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx442_2
.Lx442_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx442_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx442_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx442_3]
 lea rdx, [rip + .Lx442_4]
 jmp rax
.Lx442_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx442_2
.Lx442_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx442_2
.Lx442_1:
 call rt_faildescr@PLT
.Lx442_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$1_ω
 jmp xchain440_n1_α
 xchain440_n0_β:
 jmp proc_EXPR$1_ω
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain440_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053952], rax
 mov qword ptr [1879053960], rdx
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
 xchain444_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx446_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx446_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx446_6]
 lea rdx, [rip + .Lx446_7]
 jmp rax
.Lx446_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx446_2
.Lx446_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx446_2
.Lx446_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx446_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx446_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx446_3]
 lea rdx, [rip + .Lx446_4]
 jmp rax
.Lx446_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx446_2
.Lx446_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx446_2
.Lx446_1:
 call rt_faildescr@PLT
.Lx446_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$2_ω
 jmp xchain444_n1_α
 xchain444_n0_β:
 jmp proc_EXPR$2_ω
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain444_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053968], rax
 mov qword ptr [1879053976], rdx
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
 xchain448_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx450_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx450_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx450_6]
 lea rdx, [rip + .Lx450_7]
 jmp rax
.Lx450_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx450_2
.Lx450_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx450_2
.Lx450_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx450_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx450_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx450_3]
 lea rdx, [rip + .Lx450_4]
 jmp rax
.Lx450_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx450_2
.Lx450_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx450_2
.Lx450_1:
 call rt_faildescr@PLT
.Lx450_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$3_ω
 jmp xchain448_n1_α
 xchain448_n0_β:
 jmp proc_EXPR$3_ω
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain448_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053984], rax
 mov qword ptr [1879053992], rdx
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
 xchain452_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx454_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx454_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx454_6]
 lea rdx, [rip + .Lx454_7]
 jmp rax
.Lx454_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx454_2
.Lx454_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx454_2
.Lx454_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx454_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx454_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx454_3]
 lea rdx, [rip + .Lx454_4]
 jmp rax
.Lx454_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx454_2
.Lx454_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx454_2
.Lx454_1:
 call rt_faildescr@PLT
.Lx454_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$4_ω
 jmp xchain452_n1_α
 xchain452_n0_β:
 jmp proc_EXPR$4_ω
.Lx454_0:
 .quad .Lx454_0_s
.Lx454_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain452_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054000], rax
 mov qword ptr [1879054008], rdx
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
 xchain456_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx458_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx458_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx458_6]
 lea rdx, [rip + .Lx458_7]
 jmp rax
.Lx458_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx458_2
.Lx458_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx458_2
.Lx458_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx458_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx458_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx458_3]
 lea rdx, [rip + .Lx458_4]
 jmp rax
.Lx458_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx458_2
.Lx458_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx458_2
.Lx458_1:
 call rt_faildescr@PLT
.Lx458_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$5_ω
 jmp xchain456_n1_α
 xchain456_n0_β:
 jmp proc_EXPR$5_ω
.Lx458_0:
 .quad .Lx458_0_s
.Lx458_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain456_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054016], rax
 mov qword ptr [1879054024], rdx
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
 xchain460_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx462_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx462_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx462_6]
 lea rdx, [rip + .Lx462_7]
 jmp rax
.Lx462_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx462_2
.Lx462_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx462_2
.Lx462_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx462_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx462_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx462_3]
 lea rdx, [rip + .Lx462_4]
 jmp rax
.Lx462_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx462_2
.Lx462_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx462_2
.Lx462_1:
 call rt_faildescr@PLT
.Lx462_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$6_ω
 jmp xchain460_n1_α
 xchain460_n0_β:
 jmp proc_EXPR$6_ω
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain460_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054032], rax
 mov qword ptr [1879054040], rdx
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
 xchain464_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx466_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx466_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx466_6]
 lea rdx, [rip + .Lx466_7]
 jmp rax
.Lx466_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx466_2
.Lx466_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx466_2
.Lx466_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx466_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx466_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx466_3]
 lea rdx, [rip + .Lx466_4]
 jmp rax
.Lx466_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx466_2
.Lx466_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx466_2
.Lx466_1:
 call rt_faildescr@PLT
.Lx466_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$7_ω
 jmp xchain464_n1_α
 xchain464_n0_β:
 jmp proc_EXPR$7_ω
.Lx466_0:
 .quad .Lx466_0_s
.Lx466_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain464_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054048], rax
 mov qword ptr [1879054056], rdx
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
 xchain468_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx470_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx470_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx470_6]
 lea rdx, [rip + .Lx470_7]
 jmp rax
.Lx470_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx470_2
.Lx470_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx470_2
.Lx470_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx470_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx470_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx470_3]
 lea rdx, [rip + .Lx470_4]
 jmp rax
.Lx470_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx470_2
.Lx470_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx470_2
.Lx470_1:
 call rt_faildescr@PLT
.Lx470_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$8_ω
 jmp xchain468_n1_α
 xchain468_n0_β:
 jmp proc_EXPR$8_ω
.Lx470_0:
 .quad .Lx470_0_s
.Lx470_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain468_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054064], rax
 mov qword ptr [1879054072], rdx
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
 xchain472_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx474_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx474_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx474_6]
 lea rdx, [rip + .Lx474_7]
 jmp rax
.Lx474_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx474_2
.Lx474_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx474_2
.Lx474_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx474_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx474_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx474_3]
 lea rdx, [rip + .Lx474_4]
 jmp rax
.Lx474_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx474_2
.Lx474_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx474_2
.Lx474_1:
 call rt_faildescr@PLT
.Lx474_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$9_ω
 jmp xchain472_n1_α
 xchain472_n0_β:
 jmp proc_EXPR$9_ω
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain472_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054080], rax
 mov qword ptr [1879054088], rdx
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
 xchain476_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx478_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx478_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx478_6]
 lea rdx, [rip + .Lx478_7]
 jmp rax
.Lx478_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx478_2
.Lx478_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx478_2
.Lx478_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx478_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx478_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx478_3]
 lea rdx, [rip + .Lx478_4]
 jmp rax
.Lx478_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx478_2
.Lx478_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx478_2
.Lx478_1:
 call rt_faildescr@PLT
.Lx478_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$10_ω
 jmp xchain476_n1_α
 xchain476_n0_β:
 jmp proc_EXPR$10_ω
.Lx478_0:
 .quad .Lx478_0_s
.Lx478_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain476_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054096], rax
 mov qword ptr [1879054104], rdx
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
 xchain480_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx482_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx482_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx482_6]
 lea rdx, [rip + .Lx482_7]
 jmp rax
.Lx482_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx482_2
.Lx482_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx482_2
.Lx482_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx482_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx482_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx482_3]
 lea rdx, [rip + .Lx482_4]
 jmp rax
.Lx482_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx482_2
.Lx482_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx482_2
.Lx482_1:
 call rt_faildescr@PLT
.Lx482_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$11_ω
 jmp xchain480_n1_α
 xchain480_n0_β:
 jmp proc_EXPR$11_ω
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain480_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054112], rax
 mov qword ptr [1879054120], rdx
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
 xchain484_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx486_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx486_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx486_6]
 lea rdx, [rip + .Lx486_7]
 jmp rax
.Lx486_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx486_2
.Lx486_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx486_2
.Lx486_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx486_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx486_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx486_3]
 lea rdx, [rip + .Lx486_4]
 jmp rax
.Lx486_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx486_2
.Lx486_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx486_2
.Lx486_1:
 call rt_faildescr@PLT
.Lx486_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$12_ω
 jmp xchain484_n1_α
 xchain484_n0_β:
 jmp proc_EXPR$12_ω
.Lx486_0:
 .quad .Lx486_0_s
.Lx486_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain484_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054128], rax
 mov qword ptr [1879054136], rdx
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
 xchain488_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx490_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx490_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx490_6]
 lea rdx, [rip + .Lx490_7]
 jmp rax
.Lx490_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx490_2
.Lx490_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx490_2
.Lx490_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx490_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx490_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx490_3]
 lea rdx, [rip + .Lx490_4]
 jmp rax
.Lx490_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx490_2
.Lx490_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx490_2
.Lx490_1:
 call rt_faildescr@PLT
.Lx490_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$13_ω
 jmp xchain488_n1_α
 xchain488_n0_β:
 jmp proc_EXPR$13_ω
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain488_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054144], rax
 mov qword ptr [1879054152], rdx
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
 xchain492_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx494_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx494_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx494_6]
 lea rdx, [rip + .Lx494_7]
 jmp rax
.Lx494_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx494_2
.Lx494_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx494_2
.Lx494_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx494_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx494_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx494_3]
 lea rdx, [rip + .Lx494_4]
 jmp rax
.Lx494_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx494_2
.Lx494_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx494_2
.Lx494_1:
 call rt_faildescr@PLT
.Lx494_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$14_ω
 jmp xchain492_n1_α
 xchain492_n0_β:
 jmp proc_EXPR$14_ω
.Lx494_0:
 .quad .Lx494_0_s
.Lx494_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain492_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054160], rax
 mov qword ptr [1879054168], rdx
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
 xchain496_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx498_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx498_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx498_6]
 lea rdx, [rip + .Lx498_7]
 jmp rax
.Lx498_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx498_2
.Lx498_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx498_2
.Lx498_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx498_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx498_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx498_3]
 lea rdx, [rip + .Lx498_4]
 jmp rax
.Lx498_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx498_2
.Lx498_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx498_2
.Lx498_1:
 call rt_faildescr@PLT
.Lx498_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$15_ω
 jmp xchain496_n1_α
 xchain496_n0_β:
 jmp proc_EXPR$15_ω
.Lx498_0:
 .quad .Lx498_0_s
.Lx498_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain496_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054176], rax
 mov qword ptr [1879054184], rdx
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
 xchain500_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx502_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx502_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx502_6]
 lea rdx, [rip + .Lx502_7]
 jmp rax
.Lx502_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx502_2
.Lx502_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx502_2
.Lx502_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx502_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx502_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx502_3]
 lea rdx, [rip + .Lx502_4]
 jmp rax
.Lx502_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx502_2
.Lx502_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx502_2
.Lx502_1:
 call rt_faildescr@PLT
.Lx502_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$16_ω
 jmp xchain500_n1_α
 xchain500_n0_β:
 jmp proc_EXPR$16_ω
.Lx502_0:
 .quad .Lx502_0_s
.Lx502_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain500_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054192], rax
 mov qword ptr [1879054200], rdx
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
 xchain504_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx506_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx506_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx506_6]
 lea rdx, [rip + .Lx506_7]
 jmp rax
.Lx506_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx506_2
.Lx506_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052568], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx506_2
.Lx506_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx506_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx506_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx506_3]
 lea rdx, [rip + .Lx506_4]
 jmp rax
.Lx506_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx506_2
.Lx506_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx506_2
.Lx506_1:
 call rt_faildescr@PLT
.Lx506_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$17_ω
 jmp xchain504_n1_α
 xchain504_n0_β:
 jmp proc_EXPR$17_ω
.Lx506_0:
 .quad .Lx506_0_s
.Lx506_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain504_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054208], rax
 mov qword ptr [1879054216], rdx
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
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$0_attempt:
proc_PAT$0_α_body:
lea rax, [rip + xchain508_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain508_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain508_n1_α
 xchain508_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$0_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain508_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx511_0
 mov r8d, 0
 lea rcx, [rip + .Lx511_4]
 lea rdx, [rip + .Lx511_5]
 jmp rax
.Lx511_4:
 jmp xchain508_n2_α
.Lx511_5:
 jmp xchain508_n0_β
.Lx511_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx511_2:
 test rax, rax
 je .Lx511_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx511_7]
 lea rdx, [rip + .Lx511_8]
 jmp rax
.Lx511_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx511_2
.Lx511_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx511_2
.Lx511_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain508_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx511_6]
 sub rsp, 8
 push rax
 jmp xchain508_n2_α
.Lx511_6:
 add rsp, 16
 jmp xchain508_n0_β
 xchain508_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain508_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S1]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$0_scanhit
 xchain508_n2_β:
 sub r12, 24
 jmp xchain508_n1_β
proc_PAT$0_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$0_γ
proc_PAT$0_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$0_attempt
8:
jmp proc_PAT$0_ω
proc_PAT$0_res:
add rsp, 8
pop rbp
proc_PAT$0_β:
jmp qword ptr [rbp + 96]
proc_PAT$0_γ:
push rbp
lea rax, [rip + proc_PAT$0_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$0_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$1_α
proc_PAT$1_α:
#=======================================================================================================================
    .global proc_PAT$1_α
    .global proc_PAT$1_β
    .global proc_PAT$1_γ
    .global proc_PAT$1_ω
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
proc_PAT$1_attempt:
proc_PAT$1_α_body:
lea rax, [rip + xchain514_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain514_n0_α:
 mov rax, qword ptr [1879054224]
 mov rdx, qword ptr [1879054232]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain514_n1_α
# IR_COERCE_STRING
 xchain514_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain514_n2_α
# IR_MATCH_SPAN
 xchain514_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx519_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx519_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx519_1
 add dword ptr [rsp + 0], 1
 jmp .Lx519_0
.Lx519_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx519_240
 add rsp, 16
 jmp proc_PAT$1_scanfail
.Lx519_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$1_scanhit
 xchain514_n2_β:
 xchain514_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$1_scanfail
proc_PAT$1_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$1_γ
proc_PAT$1_scanfail:
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
jmp proc_PAT$1_attempt
8:
jmp proc_PAT$1_ω
proc_PAT$1_res:
add rsp, 8
pop rbp
proc_PAT$1_β:
jmp qword ptr [rbp + 112]
proc_PAT$1_γ:
push rbp
lea rax, [rip + proc_PAT$1_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$1_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$2_α
proc_PAT$2_α:
#=======================================================================================================================
    .global proc_PAT$2_α
    .global proc_PAT$2_β
    .global proc_PAT$2_γ
    .global proc_PAT$2_ω
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
proc_PAT$2_attempt:
proc_PAT$2_α_body:
lea rax, [rip + xchain520_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain520_n0_α:
 mov rax, qword ptr [1879054256]
 mov rdx, qword ptr [1879054264]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain520_n1_α
 xchain520_n0_β:
 jmp proc_PAT$2_scanfail
# IR_COERCE_STRING
 xchain520_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain520_n2_α
 xchain520_n1_β:
 jmp proc_PAT$2_scanfail
# IR_VAR
 xchain520_n2_α:
 mov rax, qword ptr [1879054240]
 mov rdx, qword ptr [1879054248]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain520_n3_α
 xchain520_n2_β:
 jmp proc_PAT$2_scanfail
# IR_COERCE_STRING
 xchain520_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain520_n4_α
 xchain520_n3_β:
 jmp proc_PAT$2_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain520_n4_α:
 jmp xchain520_n5_α
xchain520_n4_as:
 jmp proc_PAT$2_γ
 xchain520_n4_β:
 jmp xchain520_n6_β
xchain520_n4_af:
 jmp proc_PAT$2_ω
# IR_MATCH_NOTANY
 xchain520_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain520_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain520_n4_af
 add r14d, 1
 jmp xchain520_n6_α
 xchain520_n5_β:
 sub r14d, 1
 jmp xchain520_n4_af
# IR_MATCH_BREAK
 xchain520_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx531_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx531_240
 add rsp, 16
 jmp xchain520_n5_β
.Lx531_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx531_1
 add dword ptr [rsp + 0], 1
 jmp .Lx531_0
.Lx531_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain520_n4_as
 xchain520_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain520_n5_β
proc_PAT$2_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$2_γ
proc_PAT$2_scanfail:
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
jmp proc_PAT$2_attempt
8:
jmp proc_PAT$2_ω
proc_PAT$2_res:
add rsp, 8
pop rbp
proc_PAT$2_β:
jmp qword ptr [rbp + 224]
proc_PAT$2_γ:
push rbp
lea rax, [rip + proc_PAT$2_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$2_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$3_α
proc_PAT$3_α:
#=======================================================================================================================
    .global proc_PAT$3_α
    .global proc_PAT$3_β
    .global proc_PAT$3_γ
    .global proc_PAT$3_ω
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
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + xchain532_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain532_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain532_n1_α
xchain532_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain532_n2_α
 cmp eax, 2
 je xchain532_n4_α
 cmp eax, 3
 je xchain532_n6_α
 cmp eax, 4
 je xchain532_n7_α
 cmp eax, 5
 je xchain532_n9_α
 jmp proc_PAT$3_γ
 xchain532_n0_β:
 mov dword ptr [rbp + 36], 6
xchain532_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain532_n1_β
 cmp eax, 1
 je xchain532_n3_β
 cmp eax, 2
 je xchain532_n5_β
 cmp eax, 3
 je xchain532_n6_β
 cmp eax, 4
 je xchain532_n8_β
 cmp eax, 5
 je xchain532_n9_β
 jmp proc_PAT$3_ω
# IR_MATCH_LIT
 xchain532_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain532_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain532_n0_af
 add r14d, 1
 jmp xchain532_n0_as
 xchain532_n1_β:
 sub r14d, 1
 jmp xchain532_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain532_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain532_n10_α
 xchain532_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain532_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain532_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain532_n0_as
 xchain532_n3_β:
 sub r12, 24
 jmp xchain532_n10_β
# IR_LIT_STRING
 xchain532_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain532_n11_α
 xchain532_n4_β:
 jmp xchain532_n0_af
.Lx541_0:
 .quad .Lx541_0_s
.Lx541_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain532_n5_α:
 mov rax, qword ptr [1879054272]
 mov rdx, qword ptr [1879054280]
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
 jmp xchain532_n0_as
.Lx542_5:
 jmp xchain532_n0_af
.Lx542_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
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
 js xchain532_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx542_6]
 sub rsp, 8
 push rax
 jmp xchain532_n0_as
.Lx542_6:
 add rsp, 16
 jmp xchain532_n0_af
 xchain532_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain532_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain532_n0_as
 xchain532_n6_β:
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
 jmp xchain532_n12_α
xchain532_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain532_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain532_n0_as
xchain532_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx544_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain532_n12_β
.Lx544_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain532_n0_af
 xchain532_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx546_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx546_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx546_6]
 lea rdx, [rip + .Lx546_7]
 jmp rax
.Lx546_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx546_2
.Lx546_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx546_2
.Lx546_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx546_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx546_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx546_3]
 lea rdx, [rip + .Lx546_4]
 jmp rax
.Lx546_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx546_2
.Lx546_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx546_2
.Lx546_1:
 call rt_faildescr@PLT
.Lx546_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain532_n0_af
 jmp xchain532_n14_α
 xchain532_n7_β:
 jmp xchain532_n0_af
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain532_n8_α:
 mov rax, qword ptr [1879054304]
 mov rdx, qword ptr [1879054312]
 cmp eax, 3
 jne .Lx547_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx547_10
.Lx547_9:
 xor eax, eax
.Lx547_10:
 test rax, rax
 jz .Lx547_0
 mov r8d, 0
 lea rcx, [rip + .Lx547_4]
 lea rdx, [rip + .Lx547_5]
 jmp rax
.Lx547_4:
 jmp xchain532_n0_as
.Lx547_5:
 jmp xchain532_n0_af
.Lx547_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx547_2:
 test rax, rax
 je .Lx547_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx547_7]
 lea rdx, [rip + .Lx547_8]
 jmp rax
.Lx547_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx547_2
.Lx547_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx547_2
.Lx547_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain532_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx547_6]
 sub rsp, 8
 push rax
 jmp xchain532_n0_as
.Lx547_6:
 add rsp, 16
 jmp xchain532_n0_af
 xchain532_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain532_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain532_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain532_n0_af
 add r14d, 1
 jmp xchain532_n0_as
 xchain532_n9_β:
 sub r14d, 1
 jmp xchain532_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain532_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx550_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx550_10
.Lx550_9:
 xor eax, eax
.Lx550_10:
 test rax, rax
 jz .Lx550_0
 mov r8d, 0
 lea rcx, [rip + .Lx550_4]
 lea rdx, [rip + .Lx550_5]
 jmp rax
.Lx550_4:
 jmp xchain532_n3_α
.Lx550_5:
 jmp xchain532_n2_β
.Lx550_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx550_2:
 test rax, rax
 je .Lx550_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx550_7]
 lea rdx, [rip + .Lx550_8]
 jmp rax
.Lx550_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx550_2
.Lx550_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx550_2
.Lx550_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain532_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx550_6]
 sub rsp, 8
 push rax
 jmp xchain532_n3_α
.Lx550_6:
 add rsp, 16
 jmp xchain532_n2_β
 xchain532_n10_β:
 jmp qword ptr [rsp]
 xchain532_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx552_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx552_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx552_6]
 lea rdx, [rip + .Lx552_7]
 jmp rax
.Lx552_6:
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
 jmp .Lx552_2
.Lx552_7:
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
 jmp .Lx552_2
.Lx552_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx552_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx552_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx552_3]
 lea rdx, [rip + .Lx552_4]
 jmp rax
.Lx552_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx552_2
.Lx552_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx552_2
.Lx552_1:
 call rt_faildescr@PLT
.Lx552_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain532_n0_af
 jmp xchain532_n15_α
 xchain532_n11_β:
 jmp xchain532_n0_af
.Lx552_0:
 .quad .Lx552_0_s
.Lx552_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain532_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain532_n16_α
xchain532_n12_as:
 jmp xchain532_n6_as
 xchain532_n12_β:
 jmp xchain532_n17_β
xchain532_n12_af:
 jmp xchain532_n6_af
# IR_LIT_STRING
 xchain532_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx555_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain532_n18_α
 xchain532_n13_β:
 jmp xchain532_n20_af
.Lx555_0:
 .quad .Lx555_0_s
.Lx555_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain532_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054304], rax
 mov qword ptr [1879054312], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain532_n8_α
# IR_ASSIGN gva
 xchain532_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054272], rax
 mov qword ptr [1879054280], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain532_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain532_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
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
 jmp xchain532_n17_α
.Lx558_5:
 jmp xchain532_n12_af
.Lx558_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
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
 js xchain532_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx558_6]
 sub rsp, 8
 push rax
 jmp xchain532_n17_α
.Lx558_6:
 add rsp, 16
 jmp xchain532_n12_af
 xchain532_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain532_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain532_n19_α
xchain532_n17_as:
 jmp xchain532_n12_as
 xchain532_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain532_n19_β
 jmp xchain532_n20_β
xchain532_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain532_n20_α
 jmp xchain532_n16_β
 xchain532_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx562_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx562_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx562_6]
 lea rdx, [rip + .Lx562_7]
 jmp rax
.Lx562_6:
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
 jmp .Lx562_2
.Lx562_7:
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
 jmp .Lx562_2
.Lx562_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx562_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx562_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx562_3]
 lea rdx, [rip + .Lx562_4]
 jmp rax
.Lx562_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx562_2
.Lx562_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx562_2
.Lx562_1:
 call rt_faildescr@PLT
.Lx562_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain532_n20_af
 jmp xchain532_n21_α
 xchain532_n18_β:
 jmp xchain532_n20_af
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain532_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx563_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx563_10
.Lx563_9:
 xor eax, eax
.Lx563_10:
 test rax, rax
 jz .Lx563_0
 mov r8d, 0
 lea rcx, [rip + .Lx563_4]
 lea rdx, [rip + .Lx563_5]
 jmp rax
.Lx563_4:
 jmp xchain532_n17_as
.Lx563_5:
 jmp xchain532_n17_af
.Lx563_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx563_2:
 test rax, rax
 je .Lx563_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx563_7]
 lea rdx, [rip + .Lx563_8]
 jmp rax
.Lx563_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx563_2
.Lx563_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx563_2
.Lx563_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain532_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx563_6]
 sub rsp, 8
 push rax
 jmp xchain532_n17_as
.Lx563_6:
 add rsp, 16
 jmp xchain532_n17_af
 xchain532_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain532_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain532_n22_α
xchain532_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain532_n13_α
 jmp xchain532_n17_as
 xchain532_n20_β:
 mov dword ptr [rbp + 468], 2
xchain532_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain532_n23_β
 cmp eax, 1
 je xchain532_n24_β
 jmp xchain532_n17_af
# IR_ASSIGN gva
 xchain532_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054288], rax
 mov qword ptr [1879054296], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain532_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain532_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain532_n25_α
 xchain532_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain532_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain532_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain532_n20_as
 xchain532_n23_β:
 sub r12, 24
 jmp xchain532_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain532_n24_α:
 mov rax, qword ptr [1879054288]
 mov rdx, qword ptr [1879054296]
 cmp eax, 3
 jne .Lx571_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx571_10
.Lx571_9:
 xor eax, eax
.Lx571_10:
 test rax, rax
 jz .Lx571_0
 mov r8d, 0
 lea rcx, [rip + .Lx571_4]
 lea rdx, [rip + .Lx571_5]
 jmp rax
.Lx571_4:
 jmp xchain532_n20_as
.Lx571_5:
 jmp xchain532_n20_af
.Lx571_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S9]
 xor esi, esi
 call rt_defer_open@PLT
.Lx571_2:
 test rax, rax
 je .Lx571_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx571_7]
 lea rdx, [rip + .Lx571_8]
 jmp rax
.Lx571_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx571_2
.Lx571_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx571_2
.Lx571_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain532_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx571_6]
 sub rsp, 8
 push rax
 jmp xchain532_n20_as
.Lx571_6:
 add rsp, 16
 jmp xchain532_n20_af
 xchain532_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain532_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx572_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx572_10
.Lx572_9:
 xor eax, eax
.Lx572_10:
 test rax, rax
 jz .Lx572_0
 mov r8d, 0
 lea rcx, [rip + .Lx572_4]
 lea rdx, [rip + .Lx572_5]
 jmp rax
.Lx572_4:
 jmp xchain532_n23_α
.Lx572_5:
 jmp xchain532_n22_β
.Lx572_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx572_2:
 test rax, rax
 je .Lx572_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx572_7]
 lea rdx, [rip + .Lx572_8]
 jmp rax
.Lx572_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx572_2
.Lx572_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx572_2
.Lx572_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain532_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx572_6]
 sub rsp, 8
 push rax
 jmp xchain532_n23_α
.Lx572_6:
 add rsp, 16
 jmp xchain532_n22_β
 xchain532_n25_β:
 jmp qword ptr [rsp]
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
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
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 784]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$4_α
proc_PAT$4_α:
#=======================================================================================================================
    .global proc_PAT$4_α
    .global proc_PAT$4_β
    .global proc_PAT$4_γ
    .global proc_PAT$4_ω
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
proc_PAT$4_attempt:
proc_PAT$4_α_body:
lea rax, [rip + xchain573_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain573_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain573_n1_α
 xchain573_n0_β:
 add rsp, 16
 jmp proc_PAT$4_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain573_n1_α:
 jmp xchain573_n3_α
xchain573_n1_as:
 jmp xchain573_n2_α
 xchain573_n1_β:
 jmp xchain573_n5_β
xchain573_n1_af:
 jmp xchain573_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain573_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$4_scanhit
 xchain573_n2_β:
 sub r12, 24
 jmp xchain573_n1_β
# IR_MATCH_LIT
 xchain573_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain573_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain573_n1_af
 add r14d, 1
 jmp xchain573_n4_α
 xchain573_n3_β:
 sub r14d, 1
 jmp xchain573_n1_af
# IR_MATCH_BAL
 xchain573_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain573_n4_β:
.Lx583_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx583_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx583_1
 add edx, 1
 jmp .Lx583_2
.Lx583_1:
 cmp esi, 41
 jne .Lx583_2
 sub edx, 1
 cmp edx, 0
 jl .Lx583_3
.Lx583_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx583_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain573_n5_α
.Lx583_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain573_n3_β
# IR_MATCH_LIT
 xchain573_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain573_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain573_n4_β
 add r14d, 1
 jmp xchain573_n1_as
 xchain573_n5_β:
 sub r14d, 1
 jmp xchain573_n4_β
proc_PAT$4_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$4_γ
proc_PAT$4_scanfail:
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
jmp proc_PAT$4_attempt
8:
jmp proc_PAT$4_ω
proc_PAT$4_res:
add rsp, 8
pop rbp
proc_PAT$4_β:
jmp qword ptr [rbp + 160]
proc_PAT$4_γ:
push rbp
lea rax, [rip + proc_PAT$4_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$4_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$5_α
proc_PAT$5_α:
#=======================================================================================================================
    .global proc_PAT$5_α
    .global proc_PAT$5_β
    .global proc_PAT$5_γ
    .global proc_PAT$5_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$5_attempt:
proc_PAT$5_α_body:
lea rax, [rip + xchain586_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain586_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain586_n1_α
 xchain586_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$5_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain586_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx589_0
 mov r8d, 0
 lea rcx, [rip + .Lx589_4]
 lea rdx, [rip + .Lx589_5]
 jmp rax
.Lx589_4:
 jmp xchain586_n2_α
.Lx589_5:
 jmp xchain586_n0_β
.Lx589_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx589_2:
 test rax, rax
 je .Lx589_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx589_7]
 lea rdx, [rip + .Lx589_8]
 jmp rax
.Lx589_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx589_2
.Lx589_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx589_2
.Lx589_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain586_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx589_6]
 sub rsp, 8
 push rax
 jmp xchain586_n2_α
.Lx589_6:
 add rsp, 16
 jmp xchain586_n0_β
 xchain586_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain586_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S11]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$5_scanhit
 xchain586_n2_β:
 sub r12, 24
 jmp xchain586_n1_β
proc_PAT$5_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$5_γ
proc_PAT$5_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$5_attempt
8:
jmp proc_PAT$5_ω
proc_PAT$5_res:
add rsp, 8
pop rbp
proc_PAT$5_β:
jmp qword ptr [rbp + 96]
proc_PAT$5_γ:
push rbp
lea rax, [rip + proc_PAT$5_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$5_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
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
lea rax, [rip + xchain592_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain592_n0_α:
 mov rax, qword ptr [1879054320]
 mov rdx, qword ptr [1879054328]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain592_n1_α
# IR_COERCE_STRING
 xchain592_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain592_n2_α
# IR_MATCH_SPAN
 xchain592_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx597_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx597_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx597_1
 add dword ptr [rsp + 0], 1
 jmp .Lx597_0
.Lx597_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx597_240
 add rsp, 16
 jmp proc_PAT$6_scanfail
.Lx597_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$6_scanhit
 xchain592_n2_β:
 xchain592_n2_β:
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
lea rax, [rip + xchain598_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain598_n0_α:
 mov rax, qword ptr [1879054352]
 mov rdx, qword ptr [1879054360]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain598_n1_α
 xchain598_n0_β:
 jmp proc_PAT$7_scanfail
# IR_COERCE_STRING
 xchain598_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain598_n2_α
 xchain598_n1_β:
 jmp proc_PAT$7_scanfail
# IR_VAR
 xchain598_n2_α:
 mov rax, qword ptr [1879054336]
 mov rdx, qword ptr [1879054344]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain598_n3_α
 xchain598_n2_β:
 jmp proc_PAT$7_scanfail
# IR_COERCE_STRING
 xchain598_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain598_n4_α
 xchain598_n3_β:
 jmp proc_PAT$7_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain598_n4_α:
 jmp xchain598_n5_α
xchain598_n4_as:
 jmp proc_PAT$7_γ
 xchain598_n4_β:
 jmp xchain598_n6_β
xchain598_n4_af:
 jmp proc_PAT$7_ω
# IR_MATCH_NOTANY
 xchain598_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain598_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain598_n4_af
 add r14d, 1
 jmp xchain598_n6_α
 xchain598_n5_β:
 sub r14d, 1
 jmp xchain598_n4_af
# IR_MATCH_BREAK
 xchain598_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx609_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx609_240
 add rsp, 16
 jmp xchain598_n5_β
.Lx609_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx609_1
 add dword ptr [rsp + 0], 1
 jmp .Lx609_0
.Lx609_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain598_n4_as
 xchain598_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain598_n5_β
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
proc_PAT$8_attempt:
proc_PAT$8_α_body:
lea rax, [rip + xchain610_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain610_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain610_n1_α
xchain610_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain610_n2_α
 cmp eax, 2
 je xchain610_n4_α
 cmp eax, 3
 je xchain610_n6_α
 cmp eax, 4
 je xchain610_n7_α
 cmp eax, 5
 je xchain610_n9_α
 jmp proc_PAT$8_γ
 xchain610_n0_β:
 mov dword ptr [rbp + 36], 6
xchain610_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain610_n1_β
 cmp eax, 1
 je xchain610_n3_β
 cmp eax, 2
 je xchain610_n5_β
 cmp eax, 3
 je xchain610_n6_β
 cmp eax, 4
 je xchain610_n8_β
 cmp eax, 5
 je xchain610_n9_β
 jmp proc_PAT$8_ω
# IR_MATCH_LIT
 xchain610_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain610_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain610_n0_af
 add r14d, 1
 jmp xchain610_n0_as
 xchain610_n1_β:
 sub r14d, 1
 jmp xchain610_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain610_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain610_n10_α
 xchain610_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain610_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain610_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain610_n0_as
 xchain610_n3_β:
 sub r12, 24
 jmp xchain610_n10_β
# IR_LIT_STRING
 xchain610_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx619_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain610_n11_α
 xchain610_n4_β:
 jmp xchain610_n0_af
.Lx619_0:
 .quad .Lx619_0_s
.Lx619_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain610_n5_α:
 mov rax, qword ptr [1879054368]
 mov rdx, qword ptr [1879054376]
 cmp eax, 3
 jne .Lx620_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx620_10
.Lx620_9:
 xor eax, eax
.Lx620_10:
 test rax, rax
 jz .Lx620_0
 mov r8d, 0
 lea rcx, [rip + .Lx620_4]
 lea rdx, [rip + .Lx620_5]
 jmp rax
.Lx620_4:
 jmp xchain610_n0_as
.Lx620_5:
 jmp xchain610_n0_af
.Lx620_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S12]
 xor esi, esi
 call rt_defer_open@PLT
.Lx620_2:
 test rax, rax
 je .Lx620_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx620_7]
 lea rdx, [rip + .Lx620_8]
 jmp rax
.Lx620_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx620_2
.Lx620_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx620_2
.Lx620_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain610_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx620_6]
 sub rsp, 8
 push rax
 jmp xchain610_n0_as
.Lx620_6:
 add rsp, 16
 jmp xchain610_n0_af
 xchain610_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain610_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain610_n0_as
 xchain610_n6_β:
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
 jmp xchain610_n12_α
xchain610_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain610_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain610_n0_as
xchain610_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx622_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain610_n12_β
.Lx622_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain610_n0_af
 xchain610_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx624_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx624_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx624_6]
 lea rdx, [rip + .Lx624_7]
 jmp rax
.Lx624_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx624_2
.Lx624_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx624_2
.Lx624_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx624_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx624_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx624_3]
 lea rdx, [rip + .Lx624_4]
 jmp rax
.Lx624_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx624_2
.Lx624_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx624_2
.Lx624_1:
 call rt_faildescr@PLT
.Lx624_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain610_n0_af
 jmp xchain610_n14_α
 xchain610_n7_β:
 jmp xchain610_n0_af
.Lx624_0:
 .quad .Lx624_0_s
.Lx624_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain610_n8_α:
 mov rax, qword ptr [1879054400]
 mov rdx, qword ptr [1879054408]
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
 jmp xchain610_n0_as
.Lx625_5:
 jmp xchain610_n0_af
.Lx625_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S13]
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
 js xchain610_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx625_6]
 sub rsp, 8
 push rax
 jmp xchain610_n0_as
.Lx625_6:
 add rsp, 16
 jmp xchain610_n0_af
 xchain610_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain610_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain610_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain610_n0_af
 add r14d, 1
 jmp xchain610_n0_as
 xchain610_n9_β:
 sub r14d, 1
 jmp xchain610_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain610_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx628_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx628_10
.Lx628_9:
 xor eax, eax
.Lx628_10:
 test rax, rax
 jz .Lx628_0
 mov r8d, 0
 lea rcx, [rip + .Lx628_4]
 lea rdx, [rip + .Lx628_5]
 jmp rax
.Lx628_4:
 jmp xchain610_n3_α
.Lx628_5:
 jmp xchain610_n2_β
.Lx628_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx628_2:
 test rax, rax
 je .Lx628_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx628_7]
 lea rdx, [rip + .Lx628_8]
 jmp rax
.Lx628_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx628_2
.Lx628_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx628_2
.Lx628_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain610_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx628_6]
 sub rsp, 8
 push rax
 jmp xchain610_n3_α
.Lx628_6:
 add rsp, 16
 jmp xchain610_n2_β
 xchain610_n10_β:
 jmp qword ptr [rsp]
 xchain610_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx630_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx630_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx630_6]
 lea rdx, [rip + .Lx630_7]
 jmp rax
.Lx630_6:
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
 jmp .Lx630_2
.Lx630_7:
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
 jmp .Lx630_2
.Lx630_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx630_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx630_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx630_3]
 lea rdx, [rip + .Lx630_4]
 jmp rax
.Lx630_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx630_2
.Lx630_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx630_2
.Lx630_1:
 call rt_faildescr@PLT
.Lx630_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain610_n0_af
 jmp xchain610_n15_α
 xchain610_n11_β:
 jmp xchain610_n0_af
.Lx630_0:
 .quad .Lx630_0_s
.Lx630_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain610_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain610_n16_α
xchain610_n12_as:
 jmp xchain610_n6_as
 xchain610_n12_β:
 jmp xchain610_n17_β
xchain610_n12_af:
 jmp xchain610_n6_af
# IR_LIT_STRING
 xchain610_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx633_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain610_n18_α
 xchain610_n13_β:
 jmp xchain610_n20_af
.Lx633_0:
 .quad .Lx633_0_s
.Lx633_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain610_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054400], rax
 mov qword ptr [1879054408], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain610_n8_α
# IR_ASSIGN gva
 xchain610_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054368], rax
 mov qword ptr [1879054376], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain610_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain610_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx636_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx636_10
.Lx636_9:
 xor eax, eax
.Lx636_10:
 test rax, rax
 jz .Lx636_0
 mov r8d, 0
 lea rcx, [rip + .Lx636_4]
 lea rdx, [rip + .Lx636_5]
 jmp rax
.Lx636_4:
 jmp xchain610_n17_α
.Lx636_5:
 jmp xchain610_n12_af
.Lx636_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx636_2:
 test rax, rax
 je .Lx636_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx636_7]
 lea rdx, [rip + .Lx636_8]
 jmp rax
.Lx636_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx636_2
.Lx636_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx636_2
.Lx636_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain610_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx636_6]
 sub rsp, 8
 push rax
 jmp xchain610_n17_α
.Lx636_6:
 add rsp, 16
 jmp xchain610_n12_af
 xchain610_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain610_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain610_n19_α
xchain610_n17_as:
 jmp xchain610_n12_as
 xchain610_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain610_n19_β
 jmp xchain610_n20_β
xchain610_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain610_n20_α
 jmp xchain610_n16_β
 xchain610_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx640_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx640_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx640_6]
 lea rdx, [rip + .Lx640_7]
 jmp rax
.Lx640_6:
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
 jmp .Lx640_2
.Lx640_7:
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
 jmp .Lx640_2
.Lx640_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx640_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx640_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx640_3]
 lea rdx, [rip + .Lx640_4]
 jmp rax
.Lx640_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx640_2
.Lx640_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx640_2
.Lx640_1:
 call rt_faildescr@PLT
.Lx640_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain610_n20_af
 jmp xchain610_n21_α
 xchain610_n18_β:
 jmp xchain610_n20_af
.Lx640_0:
 .quad .Lx640_0_s
.Lx640_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain610_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx641_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx641_10
.Lx641_9:
 xor eax, eax
.Lx641_10:
 test rax, rax
 jz .Lx641_0
 mov r8d, 0
 lea rcx, [rip + .Lx641_4]
 lea rdx, [rip + .Lx641_5]
 jmp rax
.Lx641_4:
 jmp xchain610_n17_as
.Lx641_5:
 jmp xchain610_n17_af
.Lx641_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx641_2:
 test rax, rax
 je .Lx641_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx641_7]
 lea rdx, [rip + .Lx641_8]
 jmp rax
.Lx641_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx641_2
.Lx641_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx641_2
.Lx641_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain610_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx641_6]
 sub rsp, 8
 push rax
 jmp xchain610_n17_as
.Lx641_6:
 add rsp, 16
 jmp xchain610_n17_af
 xchain610_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain610_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain610_n22_α
xchain610_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain610_n13_α
 jmp xchain610_n17_as
 xchain610_n20_β:
 mov dword ptr [rbp + 468], 2
xchain610_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain610_n23_β
 cmp eax, 1
 je xchain610_n24_β
 jmp xchain610_n17_af
# IR_ASSIGN gva
 xchain610_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054384], rax
 mov qword ptr [1879054392], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain610_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain610_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain610_n25_α
 xchain610_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain610_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain610_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain610_n20_as
 xchain610_n23_β:
 sub r12, 24
 jmp xchain610_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain610_n24_α:
 mov rax, qword ptr [1879054384]
 mov rdx, qword ptr [1879054392]
 cmp eax, 3
 jne .Lx649_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx649_10
.Lx649_9:
 xor eax, eax
.Lx649_10:
 test rax, rax
 jz .Lx649_0
 mov r8d, 0
 lea rcx, [rip + .Lx649_4]
 lea rdx, [rip + .Lx649_5]
 jmp rax
.Lx649_4:
 jmp xchain610_n20_as
.Lx649_5:
 jmp xchain610_n20_af
.Lx649_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S14]
 xor esi, esi
 call rt_defer_open@PLT
.Lx649_2:
 test rax, rax
 je .Lx649_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx649_7]
 lea rdx, [rip + .Lx649_8]
 jmp rax
.Lx649_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx649_2
.Lx649_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx649_2
.Lx649_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain610_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx649_6]
 sub rsp, 8
 push rax
 jmp xchain610_n20_as
.Lx649_6:
 add rsp, 16
 jmp xchain610_n20_af
 xchain610_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain610_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx650_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx650_10
.Lx650_9:
 xor eax, eax
.Lx650_10:
 test rax, rax
 jz .Lx650_0
 mov r8d, 0
 lea rcx, [rip + .Lx650_4]
 lea rdx, [rip + .Lx650_5]
 jmp rax
.Lx650_4:
 jmp xchain610_n23_α
.Lx650_5:
 jmp xchain610_n22_β
.Lx650_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx650_2:
 test rax, rax
 je .Lx650_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx650_7]
 lea rdx, [rip + .Lx650_8]
 jmp rax
.Lx650_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx650_2
.Lx650_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx650_2
.Lx650_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain610_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx650_6]
 sub rsp, 8
 push rax
 jmp xchain610_n23_α
.Lx650_6:
 add rsp, 16
 jmp xchain610_n22_β
 xchain610_n25_β:
 jmp qword ptr [rsp]
proc_PAT$8_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$8_γ
proc_PAT$8_scanfail:
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
jmp proc_PAT$8_attempt
8:
jmp proc_PAT$8_ω
proc_PAT$8_res:
add rsp, 8
pop rbp
proc_PAT$8_β:
jmp qword ptr [rbp + 784]
proc_PAT$8_γ:
push rbp
lea rax, [rip + proc_PAT$8_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$8_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$9_α
proc_PAT$9_α:
#=======================================================================================================================
    .global proc_PAT$9_α
    .global proc_PAT$9_β
    .global proc_PAT$9_γ
    .global proc_PAT$9_ω
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
proc_PAT$9_attempt:
proc_PAT$9_α_body:
lea rax, [rip + xchain651_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain651_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain651_n1_α
 xchain651_n0_β:
 add rsp, 16
 jmp proc_PAT$9_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain651_n1_α:
 jmp xchain651_n3_α
xchain651_n1_as:
 jmp xchain651_n2_α
 xchain651_n1_β:
 jmp xchain651_n5_β
xchain651_n1_af:
 jmp xchain651_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain651_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$9_scanhit
 xchain651_n2_β:
 sub r12, 24
 jmp xchain651_n1_β
# IR_MATCH_LIT
 xchain651_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain651_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain651_n1_af
 add r14d, 1
 jmp xchain651_n4_α
 xchain651_n3_β:
 sub r14d, 1
 jmp xchain651_n1_af
# IR_MATCH_BAL
 xchain651_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain651_n4_β:
.Lx661_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx661_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx661_1
 add edx, 1
 jmp .Lx661_2
.Lx661_1:
 cmp esi, 41
 jne .Lx661_2
 sub edx, 1
 cmp edx, 0
 jl .Lx661_3
.Lx661_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx661_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain651_n5_α
.Lx661_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain651_n3_β
# IR_MATCH_LIT
 xchain651_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain651_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain651_n4_β
 add r14d, 1
 jmp xchain651_n1_as
 xchain651_n5_β:
 sub r14d, 1
 jmp xchain651_n4_β
proc_PAT$9_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$9_γ
proc_PAT$9_scanfail:
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
jmp proc_PAT$9_attempt
8:
jmp proc_PAT$9_ω
proc_PAT$9_res:
add rsp, 8
pop rbp
proc_PAT$9_β:
jmp qword ptr [rbp + 160]
proc_PAT$9_γ:
push rbp
lea rax, [rip + proc_PAT$9_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$9_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$10_α
proc_PAT$10_α:
#=======================================================================================================================
    .global proc_PAT$10_α
    .global proc_PAT$10_β
    .global proc_PAT$10_γ
    .global proc_PAT$10_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$10_attempt:
proc_PAT$10_α_body:
lea rax, [rip + xchain664_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain664_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain664_n1_α
 xchain664_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$10_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain664_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx667_0
 mov r8d, 0
 lea rcx, [rip + .Lx667_4]
 lea rdx, [rip + .Lx667_5]
 jmp rax
.Lx667_4:
 jmp xchain664_n2_α
.Lx667_5:
 jmp xchain664_n0_β
.Lx667_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx667_2:
 test rax, rax
 je .Lx667_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx667_7]
 lea rdx, [rip + .Lx667_8]
 jmp rax
.Lx667_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx667_2
.Lx667_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx667_2
.Lx667_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain664_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx667_6]
 sub rsp, 8
 push rax
 jmp xchain664_n2_α
.Lx667_6:
 add rsp, 16
 jmp xchain664_n0_β
 xchain664_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain664_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S15]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$10_scanhit
 xchain664_n2_β:
 sub r12, 24
 jmp xchain664_n1_β
proc_PAT$10_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$10_γ
proc_PAT$10_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$10_attempt
8:
jmp proc_PAT$10_ω
proc_PAT$10_res:
add rsp, 8
pop rbp
proc_PAT$10_β:
jmp qword ptr [rbp + 96]
proc_PAT$10_γ:
push rbp
lea rax, [rip + proc_PAT$10_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$10_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$11_α
proc_PAT$11_α:
#=======================================================================================================================
    .global proc_PAT$11_α
    .global proc_PAT$11_β
    .global proc_PAT$11_γ
    .global proc_PAT$11_ω
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
proc_PAT$11_attempt:
proc_PAT$11_α_body:
lea rax, [rip + xchain670_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain670_n0_α:
 mov rax, qword ptr [1879054416]
 mov rdx, qword ptr [1879054424]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain670_n1_α
# IR_COERCE_STRING
 xchain670_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain670_n2_α
# IR_MATCH_SPAN
 xchain670_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx675_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx675_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx675_1
 add dword ptr [rsp + 0], 1
 jmp .Lx675_0
.Lx675_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx675_240
 add rsp, 16
 jmp proc_PAT$11_scanfail
.Lx675_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$11_scanhit
 xchain670_n2_β:
 xchain670_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$11_scanfail
proc_PAT$11_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$11_γ
proc_PAT$11_scanfail:
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
jmp proc_PAT$11_attempt
8:
jmp proc_PAT$11_ω
proc_PAT$11_res:
add rsp, 8
pop rbp
proc_PAT$11_β:
jmp qword ptr [rbp + 112]
proc_PAT$11_γ:
push rbp
lea rax, [rip + proc_PAT$11_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$11_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$12_α
proc_PAT$12_α:
#=======================================================================================================================
    .global proc_PAT$12_α
    .global proc_PAT$12_β
    .global proc_PAT$12_γ
    .global proc_PAT$12_ω
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
proc_PAT$12_attempt:
proc_PAT$12_α_body:
lea rax, [rip + xchain676_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain676_n0_α:
 mov rax, qword ptr [1879054448]
 mov rdx, qword ptr [1879054456]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain676_n1_α
 xchain676_n0_β:
 jmp proc_PAT$12_scanfail
# IR_COERCE_STRING
 xchain676_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain676_n2_α
 xchain676_n1_β:
 jmp proc_PAT$12_scanfail
# IR_VAR
 xchain676_n2_α:
 mov rax, qword ptr [1879054432]
 mov rdx, qword ptr [1879054440]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain676_n3_α
 xchain676_n2_β:
 jmp proc_PAT$12_scanfail
# IR_COERCE_STRING
 xchain676_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain676_n4_α
 xchain676_n3_β:
 jmp proc_PAT$12_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain676_n4_α:
 jmp xchain676_n5_α
xchain676_n4_as:
 jmp proc_PAT$12_γ
 xchain676_n4_β:
 jmp xchain676_n6_β
xchain676_n4_af:
 jmp proc_PAT$12_ω
# IR_MATCH_NOTANY
 xchain676_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain676_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain676_n4_af
 add r14d, 1
 jmp xchain676_n6_α
 xchain676_n5_β:
 sub r14d, 1
 jmp xchain676_n4_af
# IR_MATCH_BREAK
 xchain676_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx687_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx687_240
 add rsp, 16
 jmp xchain676_n5_β
.Lx687_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx687_1
 add dword ptr [rsp + 0], 1
 jmp .Lx687_0
.Lx687_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain676_n4_as
 xchain676_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain676_n5_β
proc_PAT$12_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$12_γ
proc_PAT$12_scanfail:
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
jmp proc_PAT$12_attempt
8:
jmp proc_PAT$12_ω
proc_PAT$12_res:
add rsp, 8
pop rbp
proc_PAT$12_β:
jmp qword ptr [rbp + 224]
proc_PAT$12_γ:
push rbp
lea rax, [rip + proc_PAT$12_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$12_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$13_α
proc_PAT$13_α:
#=======================================================================================================================
    .global proc_PAT$13_α
    .global proc_PAT$13_β
    .global proc_PAT$13_γ
    .global proc_PAT$13_ω
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
proc_PAT$13_attempt:
proc_PAT$13_α_body:
lea rax, [rip + xchain688_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain688_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain688_n1_α
xchain688_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain688_n2_α
 cmp eax, 2
 je xchain688_n4_α
 cmp eax, 3
 je xchain688_n6_α
 cmp eax, 4
 je xchain688_n7_α
 cmp eax, 5
 je xchain688_n9_α
 jmp proc_PAT$13_γ
 xchain688_n0_β:
 mov dword ptr [rbp + 36], 6
xchain688_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain688_n1_β
 cmp eax, 1
 je xchain688_n3_β
 cmp eax, 2
 je xchain688_n5_β
 cmp eax, 3
 je xchain688_n6_β
 cmp eax, 4
 je xchain688_n8_β
 cmp eax, 5
 je xchain688_n9_β
 jmp proc_PAT$13_ω
# IR_MATCH_LIT
 xchain688_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain688_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain688_n0_af
 add r14d, 1
 jmp xchain688_n0_as
 xchain688_n1_β:
 sub r14d, 1
 jmp xchain688_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain688_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain688_n10_α
 xchain688_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain688_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain688_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain688_n0_as
 xchain688_n3_β:
 sub r12, 24
 jmp xchain688_n10_β
# IR_LIT_STRING
 xchain688_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx697_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain688_n11_α
 xchain688_n4_β:
 jmp xchain688_n0_af
.Lx697_0:
 .quad .Lx697_0_s
.Lx697_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain688_n5_α:
 mov rax, qword ptr [1879054464]
 mov rdx, qword ptr [1879054472]
 cmp eax, 3
 jne .Lx698_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx698_10
.Lx698_9:
 xor eax, eax
.Lx698_10:
 test rax, rax
 jz .Lx698_0
 mov r8d, 0
 lea rcx, [rip + .Lx698_4]
 lea rdx, [rip + .Lx698_5]
 jmp rax
.Lx698_4:
 jmp xchain688_n0_as
.Lx698_5:
 jmp xchain688_n0_af
.Lx698_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S16]
 xor esi, esi
 call rt_defer_open@PLT
.Lx698_2:
 test rax, rax
 je .Lx698_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx698_7]
 lea rdx, [rip + .Lx698_8]
 jmp rax
.Lx698_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx698_2
.Lx698_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx698_2
.Lx698_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain688_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx698_6]
 sub rsp, 8
 push rax
 jmp xchain688_n0_as
.Lx698_6:
 add rsp, 16
 jmp xchain688_n0_af
 xchain688_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain688_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain688_n0_as
 xchain688_n6_β:
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
 jmp xchain688_n12_α
xchain688_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain688_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain688_n0_as
xchain688_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx700_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain688_n12_β
.Lx700_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain688_n0_af
 xchain688_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx702_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx702_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx702_6]
 lea rdx, [rip + .Lx702_7]
 jmp rax
.Lx702_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx702_2
.Lx702_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx702_2
.Lx702_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx702_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx702_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx702_3]
 lea rdx, [rip + .Lx702_4]
 jmp rax
.Lx702_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx702_2
.Lx702_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx702_2
.Lx702_1:
 call rt_faildescr@PLT
.Lx702_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain688_n0_af
 jmp xchain688_n14_α
 xchain688_n7_β:
 jmp xchain688_n0_af
.Lx702_0:
 .quad .Lx702_0_s
.Lx702_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain688_n8_α:
 mov rax, qword ptr [1879054496]
 mov rdx, qword ptr [1879054504]
 cmp eax, 3
 jne .Lx703_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx703_10
.Lx703_9:
 xor eax, eax
.Lx703_10:
 test rax, rax
 jz .Lx703_0
 mov r8d, 0
 lea rcx, [rip + .Lx703_4]
 lea rdx, [rip + .Lx703_5]
 jmp rax
.Lx703_4:
 jmp xchain688_n0_as
.Lx703_5:
 jmp xchain688_n0_af
.Lx703_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S17]
 xor esi, esi
 call rt_defer_open@PLT
.Lx703_2:
 test rax, rax
 je .Lx703_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx703_7]
 lea rdx, [rip + .Lx703_8]
 jmp rax
.Lx703_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx703_2
.Lx703_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx703_2
.Lx703_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain688_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx703_6]
 sub rsp, 8
 push rax
 jmp xchain688_n0_as
.Lx703_6:
 add rsp, 16
 jmp xchain688_n0_af
 xchain688_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain688_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain688_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain688_n0_af
 add r14d, 1
 jmp xchain688_n0_as
 xchain688_n9_β:
 sub r14d, 1
 jmp xchain688_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain688_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx706_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx706_10
.Lx706_9:
 xor eax, eax
.Lx706_10:
 test rax, rax
 jz .Lx706_0
 mov r8d, 0
 lea rcx, [rip + .Lx706_4]
 lea rdx, [rip + .Lx706_5]
 jmp rax
.Lx706_4:
 jmp xchain688_n3_α
.Lx706_5:
 jmp xchain688_n2_β
.Lx706_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx706_2:
 test rax, rax
 je .Lx706_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx706_7]
 lea rdx, [rip + .Lx706_8]
 jmp rax
.Lx706_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx706_2
.Lx706_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx706_2
.Lx706_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain688_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx706_6]
 sub rsp, 8
 push rax
 jmp xchain688_n3_α
.Lx706_6:
 add rsp, 16
 jmp xchain688_n2_β
 xchain688_n10_β:
 jmp qword ptr [rsp]
 xchain688_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx708_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx708_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx708_6]
 lea rdx, [rip + .Lx708_7]
 jmp rax
.Lx708_6:
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
 jmp .Lx708_2
.Lx708_7:
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
 jmp .Lx708_2
.Lx708_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx708_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx708_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx708_3]
 lea rdx, [rip + .Lx708_4]
 jmp rax
.Lx708_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx708_2
.Lx708_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx708_2
.Lx708_1:
 call rt_faildescr@PLT
.Lx708_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain688_n0_af
 jmp xchain688_n15_α
 xchain688_n11_β:
 jmp xchain688_n0_af
.Lx708_0:
 .quad .Lx708_0_s
.Lx708_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain688_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain688_n16_α
xchain688_n12_as:
 jmp xchain688_n6_as
 xchain688_n12_β:
 jmp xchain688_n17_β
xchain688_n12_af:
 jmp xchain688_n6_af
# IR_LIT_STRING
 xchain688_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx711_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain688_n18_α
 xchain688_n13_β:
 jmp xchain688_n20_af
.Lx711_0:
 .quad .Lx711_0_s
.Lx711_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain688_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054496], rax
 mov qword ptr [1879054504], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain688_n8_α
# IR_ASSIGN gva
 xchain688_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054464], rax
 mov qword ptr [1879054472], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain688_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain688_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx714_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx714_10
.Lx714_9:
 xor eax, eax
.Lx714_10:
 test rax, rax
 jz .Lx714_0
 mov r8d, 0
 lea rcx, [rip + .Lx714_4]
 lea rdx, [rip + .Lx714_5]
 jmp rax
.Lx714_4:
 jmp xchain688_n17_α
.Lx714_5:
 jmp xchain688_n12_af
.Lx714_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx714_2:
 test rax, rax
 je .Lx714_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx714_7]
 lea rdx, [rip + .Lx714_8]
 jmp rax
.Lx714_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx714_2
.Lx714_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx714_2
.Lx714_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain688_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx714_6]
 sub rsp, 8
 push rax
 jmp xchain688_n17_α
.Lx714_6:
 add rsp, 16
 jmp xchain688_n12_af
 xchain688_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain688_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain688_n19_α
xchain688_n17_as:
 jmp xchain688_n12_as
 xchain688_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain688_n19_β
 jmp xchain688_n20_β
xchain688_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain688_n20_α
 jmp xchain688_n16_β
 xchain688_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx718_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx718_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx718_6]
 lea rdx, [rip + .Lx718_7]
 jmp rax
.Lx718_6:
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
 jmp .Lx718_2
.Lx718_7:
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
 jmp .Lx718_2
.Lx718_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx718_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx718_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx718_3]
 lea rdx, [rip + .Lx718_4]
 jmp rax
.Lx718_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx718_2
.Lx718_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx718_2
.Lx718_1:
 call rt_faildescr@PLT
.Lx718_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain688_n20_af
 jmp xchain688_n21_α
 xchain688_n18_β:
 jmp xchain688_n20_af
.Lx718_0:
 .quad .Lx718_0_s
.Lx718_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain688_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx719_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx719_10
.Lx719_9:
 xor eax, eax
.Lx719_10:
 test rax, rax
 jz .Lx719_0
 mov r8d, 0
 lea rcx, [rip + .Lx719_4]
 lea rdx, [rip + .Lx719_5]
 jmp rax
.Lx719_4:
 jmp xchain688_n17_as
.Lx719_5:
 jmp xchain688_n17_af
.Lx719_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx719_2:
 test rax, rax
 je .Lx719_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx719_7]
 lea rdx, [rip + .Lx719_8]
 jmp rax
.Lx719_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx719_2
.Lx719_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx719_2
.Lx719_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain688_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx719_6]
 sub rsp, 8
 push rax
 jmp xchain688_n17_as
.Lx719_6:
 add rsp, 16
 jmp xchain688_n17_af
 xchain688_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain688_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain688_n22_α
xchain688_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain688_n13_α
 jmp xchain688_n17_as
 xchain688_n20_β:
 mov dword ptr [rbp + 468], 2
xchain688_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain688_n23_β
 cmp eax, 1
 je xchain688_n24_β
 jmp xchain688_n17_af
# IR_ASSIGN gva
 xchain688_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054480], rax
 mov qword ptr [1879054488], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain688_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain688_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain688_n25_α
 xchain688_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain688_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain688_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain688_n20_as
 xchain688_n23_β:
 sub r12, 24
 jmp xchain688_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain688_n24_α:
 mov rax, qword ptr [1879054480]
 mov rdx, qword ptr [1879054488]
 cmp eax, 3
 jne .Lx727_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx727_10
.Lx727_9:
 xor eax, eax
.Lx727_10:
 test rax, rax
 jz .Lx727_0
 mov r8d, 0
 lea rcx, [rip + .Lx727_4]
 lea rdx, [rip + .Lx727_5]
 jmp rax
.Lx727_4:
 jmp xchain688_n20_as
.Lx727_5:
 jmp xchain688_n20_af
.Lx727_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S18]
 xor esi, esi
 call rt_defer_open@PLT
.Lx727_2:
 test rax, rax
 je .Lx727_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx727_7]
 lea rdx, [rip + .Lx727_8]
 jmp rax
.Lx727_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx727_2
.Lx727_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx727_2
.Lx727_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain688_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx727_6]
 sub rsp, 8
 push rax
 jmp xchain688_n20_as
.Lx727_6:
 add rsp, 16
 jmp xchain688_n20_af
 xchain688_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain688_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx728_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx728_10
.Lx728_9:
 xor eax, eax
.Lx728_10:
 test rax, rax
 jz .Lx728_0
 mov r8d, 0
 lea rcx, [rip + .Lx728_4]
 lea rdx, [rip + .Lx728_5]
 jmp rax
.Lx728_4:
 jmp xchain688_n23_α
.Lx728_5:
 jmp xchain688_n22_β
.Lx728_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx728_2:
 test rax, rax
 je .Lx728_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx728_7]
 lea rdx, [rip + .Lx728_8]
 jmp rax
.Lx728_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx728_2
.Lx728_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx728_2
.Lx728_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain688_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx728_6]
 sub rsp, 8
 push rax
 jmp xchain688_n23_α
.Lx728_6:
 add rsp, 16
 jmp xchain688_n22_β
 xchain688_n25_β:
 jmp qword ptr [rsp]
proc_PAT$13_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$13_γ
proc_PAT$13_scanfail:
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
jmp proc_PAT$13_attempt
8:
jmp proc_PAT$13_ω
proc_PAT$13_res:
add rsp, 8
pop rbp
proc_PAT$13_β:
jmp qword ptr [rbp + 784]
proc_PAT$13_γ:
push rbp
lea rax, [rip + proc_PAT$13_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$13_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
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
lea rax, [rip + xchain729_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain729_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain729_n1_α
 xchain729_n0_β:
 add rsp, 16
 jmp proc_PAT$14_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain729_n1_α:
 jmp xchain729_n3_α
xchain729_n1_as:
 jmp xchain729_n2_α
 xchain729_n1_β:
 jmp xchain729_n5_β
xchain729_n1_af:
 jmp xchain729_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain729_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$14_scanhit
 xchain729_n2_β:
 sub r12, 24
 jmp xchain729_n1_β
# IR_MATCH_LIT
 xchain729_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain729_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain729_n1_af
 add r14d, 1
 jmp xchain729_n4_α
 xchain729_n3_β:
 sub r14d, 1
 jmp xchain729_n1_af
# IR_MATCH_BAL
 xchain729_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain729_n4_β:
.Lx739_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx739_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx739_1
 add edx, 1
 jmp .Lx739_2
.Lx739_1:
 cmp esi, 41
 jne .Lx739_2
 sub edx, 1
 cmp edx, 0
 jl .Lx739_3
.Lx739_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx739_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain729_n5_α
.Lx739_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain729_n3_β
# IR_MATCH_LIT
 xchain729_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain729_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain729_n4_β
 add r14d, 1
 jmp xchain729_n1_as
 xchain729_n5_β:
 sub r14d, 1
 jmp xchain729_n4_β
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
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$15_attempt:
proc_PAT$15_α_body:
lea rax, [rip + xchain742_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain742_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain742_n1_α
 xchain742_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$15_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain742_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx745_0
 mov r8d, 0
 lea rcx, [rip + .Lx745_4]
 lea rdx, [rip + .Lx745_5]
 jmp rax
.Lx745_4:
 jmp xchain742_n2_α
.Lx745_5:
 jmp xchain742_n0_β
.Lx745_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx745_2:
 test rax, rax
 je .Lx745_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx745_7]
 lea rdx, [rip + .Lx745_8]
 jmp rax
.Lx745_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx745_2
.Lx745_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx745_2
.Lx745_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain742_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx745_6]
 sub rsp, 8
 push rax
 jmp xchain742_n2_α
.Lx745_6:
 add rsp, 16
 jmp xchain742_n0_β
 xchain742_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain742_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S19]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$15_scanhit
 xchain742_n2_β:
 sub r12, 24
 jmp xchain742_n1_β
proc_PAT$15_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$15_γ
proc_PAT$15_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$15_attempt
8:
jmp proc_PAT$15_ω
proc_PAT$15_res:
add rsp, 8
pop rbp
proc_PAT$15_β:
jmp qword ptr [rbp + 96]
proc_PAT$15_γ:
push rbp
lea rax, [rip + proc_PAT$15_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$15_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
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
lea rax, [rip + xchain748_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain748_n0_α:
 mov rax, qword ptr [1879054512]
 mov rdx, qword ptr [1879054520]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain748_n1_α
# IR_COERCE_STRING
 xchain748_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain748_n2_α
# IR_MATCH_SPAN
 xchain748_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx753_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx753_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx753_1
 add dword ptr [rsp + 0], 1
 jmp .Lx753_0
.Lx753_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx753_240
 add rsp, 16
 jmp proc_PAT$16_scanfail
.Lx753_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$16_scanhit
 xchain748_n2_β:
 xchain748_n2_β:
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
lea rax, [rip + xchain754_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain754_n0_α:
 mov rax, qword ptr [1879054544]
 mov rdx, qword ptr [1879054552]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain754_n1_α
 xchain754_n0_β:
 jmp proc_PAT$17_scanfail
# IR_COERCE_STRING
 xchain754_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain754_n2_α
 xchain754_n1_β:
 jmp proc_PAT$17_scanfail
# IR_VAR
 xchain754_n2_α:
 mov rax, qword ptr [1879054528]
 mov rdx, qword ptr [1879054536]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain754_n3_α
 xchain754_n2_β:
 jmp proc_PAT$17_scanfail
# IR_COERCE_STRING
 xchain754_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain754_n4_α
 xchain754_n3_β:
 jmp proc_PAT$17_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain754_n4_α:
 jmp xchain754_n5_α
xchain754_n4_as:
 jmp proc_PAT$17_γ
 xchain754_n4_β:
 jmp xchain754_n6_β
xchain754_n4_af:
 jmp proc_PAT$17_ω
# IR_MATCH_NOTANY
 xchain754_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain754_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain754_n4_af
 add r14d, 1
 jmp xchain754_n6_α
 xchain754_n5_β:
 sub r14d, 1
 jmp xchain754_n4_af
# IR_MATCH_BREAK
 xchain754_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx765_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx765_240
 add rsp, 16
 jmp xchain754_n5_β
.Lx765_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx765_1
 add dword ptr [rsp + 0], 1
 jmp .Lx765_0
.Lx765_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain754_n4_as
 xchain754_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain754_n5_β
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
lea rax, [rip + xchain766_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain766_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain766_n1_α
xchain766_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain766_n2_α
 cmp eax, 2
 je xchain766_n4_α
 cmp eax, 3
 je xchain766_n6_α
 cmp eax, 4
 je xchain766_n7_α
 cmp eax, 5
 je xchain766_n9_α
 jmp proc_PAT$18_γ
 xchain766_n0_β:
 mov dword ptr [rbp + 36], 6
xchain766_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain766_n1_β
 cmp eax, 1
 je xchain766_n3_β
 cmp eax, 2
 je xchain766_n5_β
 cmp eax, 3
 je xchain766_n6_β
 cmp eax, 4
 je xchain766_n8_β
 cmp eax, 5
 je xchain766_n9_β
 jmp proc_PAT$18_ω
# IR_MATCH_LIT
 xchain766_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain766_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain766_n0_af
 add r14d, 1
 jmp xchain766_n0_as
 xchain766_n1_β:
 sub r14d, 1
 jmp xchain766_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain766_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain766_n10_α
 xchain766_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain766_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain766_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain766_n0_as
 xchain766_n3_β:
 sub r12, 24
 jmp xchain766_n10_β
# IR_LIT_STRING
 xchain766_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx775_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain766_n11_α
 xchain766_n4_β:
 jmp xchain766_n0_af
.Lx775_0:
 .quad .Lx775_0_s
.Lx775_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain766_n5_α:
 mov rax, qword ptr [1879054560]
 mov rdx, qword ptr [1879054568]
 cmp eax, 3
 jne .Lx776_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx776_10
.Lx776_9:
 xor eax, eax
.Lx776_10:
 test rax, rax
 jz .Lx776_0
 mov r8d, 0
 lea rcx, [rip + .Lx776_4]
 lea rdx, [rip + .Lx776_5]
 jmp rax
.Lx776_4:
 jmp xchain766_n0_as
.Lx776_5:
 jmp xchain766_n0_af
.Lx776_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S20]
 xor esi, esi
 call rt_defer_open@PLT
.Lx776_2:
 test rax, rax
 je .Lx776_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx776_7]
 lea rdx, [rip + .Lx776_8]
 jmp rax
.Lx776_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx776_2
.Lx776_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx776_2
.Lx776_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain766_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx776_6]
 sub rsp, 8
 push rax
 jmp xchain766_n0_as
.Lx776_6:
 add rsp, 16
 jmp xchain766_n0_af
 xchain766_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain766_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain766_n0_as
 xchain766_n6_β:
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
 jmp xchain766_n12_α
xchain766_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain766_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain766_n0_as
xchain766_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx778_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain766_n12_β
.Lx778_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain766_n0_af
 xchain766_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx780_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx780_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx780_6]
 lea rdx, [rip + .Lx780_7]
 jmp rax
.Lx780_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx780_2
.Lx780_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx780_2
.Lx780_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx780_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx780_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx780_3]
 lea rdx, [rip + .Lx780_4]
 jmp rax
.Lx780_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx780_2
.Lx780_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx780_2
.Lx780_1:
 call rt_faildescr@PLT
.Lx780_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain766_n0_af
 jmp xchain766_n14_α
 xchain766_n7_β:
 jmp xchain766_n0_af
.Lx780_0:
 .quad .Lx780_0_s
.Lx780_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain766_n8_α:
 mov rax, qword ptr [1879054592]
 mov rdx, qword ptr [1879054600]
 cmp eax, 3
 jne .Lx781_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx781_10
.Lx781_9:
 xor eax, eax
.Lx781_10:
 test rax, rax
 jz .Lx781_0
 mov r8d, 0
 lea rcx, [rip + .Lx781_4]
 lea rdx, [rip + .Lx781_5]
 jmp rax
.Lx781_4:
 jmp xchain766_n0_as
.Lx781_5:
 jmp xchain766_n0_af
.Lx781_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S21]
 xor esi, esi
 call rt_defer_open@PLT
.Lx781_2:
 test rax, rax
 je .Lx781_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx781_7]
 lea rdx, [rip + .Lx781_8]
 jmp rax
.Lx781_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx781_2
.Lx781_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx781_2
.Lx781_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain766_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx781_6]
 sub rsp, 8
 push rax
 jmp xchain766_n0_as
.Lx781_6:
 add rsp, 16
 jmp xchain766_n0_af
 xchain766_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain766_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain766_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain766_n0_af
 add r14d, 1
 jmp xchain766_n0_as
 xchain766_n9_β:
 sub r14d, 1
 jmp xchain766_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain766_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx784_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx784_10
.Lx784_9:
 xor eax, eax
.Lx784_10:
 test rax, rax
 jz .Lx784_0
 mov r8d, 0
 lea rcx, [rip + .Lx784_4]
 lea rdx, [rip + .Lx784_5]
 jmp rax
.Lx784_4:
 jmp xchain766_n3_α
.Lx784_5:
 jmp xchain766_n2_β
.Lx784_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx784_2:
 test rax, rax
 je .Lx784_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx784_7]
 lea rdx, [rip + .Lx784_8]
 jmp rax
.Lx784_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx784_2
.Lx784_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx784_2
.Lx784_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain766_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx784_6]
 sub rsp, 8
 push rax
 jmp xchain766_n3_α
.Lx784_6:
 add rsp, 16
 jmp xchain766_n2_β
 xchain766_n10_β:
 jmp qword ptr [rsp]
 xchain766_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx786_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx786_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx786_6]
 lea rdx, [rip + .Lx786_7]
 jmp rax
.Lx786_6:
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
 jmp .Lx786_2
.Lx786_7:
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
 jmp .Lx786_2
.Lx786_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx786_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx786_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx786_3]
 lea rdx, [rip + .Lx786_4]
 jmp rax
.Lx786_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx786_2
.Lx786_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx786_2
.Lx786_1:
 call rt_faildescr@PLT
.Lx786_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain766_n0_af
 jmp xchain766_n15_α
 xchain766_n11_β:
 jmp xchain766_n0_af
.Lx786_0:
 .quad .Lx786_0_s
.Lx786_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain766_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain766_n16_α
xchain766_n12_as:
 jmp xchain766_n6_as
 xchain766_n12_β:
 jmp xchain766_n17_β
xchain766_n12_af:
 jmp xchain766_n6_af
# IR_LIT_STRING
 xchain766_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx789_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain766_n18_α
 xchain766_n13_β:
 jmp xchain766_n20_af
.Lx789_0:
 .quad .Lx789_0_s
.Lx789_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain766_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054592], rax
 mov qword ptr [1879054600], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain766_n8_α
# IR_ASSIGN gva
 xchain766_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054560], rax
 mov qword ptr [1879054568], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain766_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain766_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx792_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx792_10
.Lx792_9:
 xor eax, eax
.Lx792_10:
 test rax, rax
 jz .Lx792_0
 mov r8d, 0
 lea rcx, [rip + .Lx792_4]
 lea rdx, [rip + .Lx792_5]
 jmp rax
.Lx792_4:
 jmp xchain766_n17_α
.Lx792_5:
 jmp xchain766_n12_af
.Lx792_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx792_2:
 test rax, rax
 je .Lx792_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx792_7]
 lea rdx, [rip + .Lx792_8]
 jmp rax
.Lx792_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx792_2
.Lx792_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx792_2
.Lx792_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain766_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx792_6]
 sub rsp, 8
 push rax
 jmp xchain766_n17_α
.Lx792_6:
 add rsp, 16
 jmp xchain766_n12_af
 xchain766_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain766_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain766_n19_α
xchain766_n17_as:
 jmp xchain766_n12_as
 xchain766_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain766_n19_β
 jmp xchain766_n20_β
xchain766_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain766_n20_α
 jmp xchain766_n16_β
 xchain766_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx796_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx796_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx796_6]
 lea rdx, [rip + .Lx796_7]
 jmp rax
.Lx796_6:
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
 jmp .Lx796_2
.Lx796_7:
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
 jmp .Lx796_2
.Lx796_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx796_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx796_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx796_3]
 lea rdx, [rip + .Lx796_4]
 jmp rax
.Lx796_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx796_2
.Lx796_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx796_2
.Lx796_1:
 call rt_faildescr@PLT
.Lx796_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain766_n20_af
 jmp xchain766_n21_α
 xchain766_n18_β:
 jmp xchain766_n20_af
.Lx796_0:
 .quad .Lx796_0_s
.Lx796_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain766_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx797_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx797_10
.Lx797_9:
 xor eax, eax
.Lx797_10:
 test rax, rax
 jz .Lx797_0
 mov r8d, 0
 lea rcx, [rip + .Lx797_4]
 lea rdx, [rip + .Lx797_5]
 jmp rax
.Lx797_4:
 jmp xchain766_n17_as
.Lx797_5:
 jmp xchain766_n17_af
.Lx797_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx797_2:
 test rax, rax
 je .Lx797_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx797_7]
 lea rdx, [rip + .Lx797_8]
 jmp rax
.Lx797_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx797_2
.Lx797_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx797_2
.Lx797_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain766_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx797_6]
 sub rsp, 8
 push rax
 jmp xchain766_n17_as
.Lx797_6:
 add rsp, 16
 jmp xchain766_n17_af
 xchain766_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain766_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain766_n22_α
xchain766_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain766_n13_α
 jmp xchain766_n17_as
 xchain766_n20_β:
 mov dword ptr [rbp + 468], 2
xchain766_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain766_n23_β
 cmp eax, 1
 je xchain766_n24_β
 jmp xchain766_n17_af
# IR_ASSIGN gva
 xchain766_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054576], rax
 mov qword ptr [1879054584], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain766_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain766_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain766_n25_α
 xchain766_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain766_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain766_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain766_n20_as
 xchain766_n23_β:
 sub r12, 24
 jmp xchain766_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain766_n24_α:
 mov rax, qword ptr [1879054576]
 mov rdx, qword ptr [1879054584]
 cmp eax, 3
 jne .Lx805_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx805_10
.Lx805_9:
 xor eax, eax
.Lx805_10:
 test rax, rax
 jz .Lx805_0
 mov r8d, 0
 lea rcx, [rip + .Lx805_4]
 lea rdx, [rip + .Lx805_5]
 jmp rax
.Lx805_4:
 jmp xchain766_n20_as
.Lx805_5:
 jmp xchain766_n20_af
.Lx805_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S22]
 xor esi, esi
 call rt_defer_open@PLT
.Lx805_2:
 test rax, rax
 je .Lx805_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx805_7]
 lea rdx, [rip + .Lx805_8]
 jmp rax
.Lx805_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx805_2
.Lx805_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx805_2
.Lx805_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain766_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx805_6]
 sub rsp, 8
 push rax
 jmp xchain766_n20_as
.Lx805_6:
 add rsp, 16
 jmp xchain766_n20_af
 xchain766_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain766_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx806_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx806_10
.Lx806_9:
 xor eax, eax
.Lx806_10:
 test rax, rax
 jz .Lx806_0
 mov r8d, 0
 lea rcx, [rip + .Lx806_4]
 lea rdx, [rip + .Lx806_5]
 jmp rax
.Lx806_4:
 jmp xchain766_n23_α
.Lx806_5:
 jmp xchain766_n22_β
.Lx806_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx806_2:
 test rax, rax
 je .Lx806_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx806_7]
 lea rdx, [rip + .Lx806_8]
 jmp rax
.Lx806_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx806_2
.Lx806_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx806_2
.Lx806_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain766_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx806_6]
 sub rsp, 8
 push rax
 jmp xchain766_n23_α
.Lx806_6:
 add rsp, 16
 jmp xchain766_n22_β
 xchain766_n25_β:
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
lea rax, [rip + xchain807_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain807_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain807_n1_α
 xchain807_n0_β:
 add rsp, 16
 jmp proc_PAT$19_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain807_n1_α:
 jmp xchain807_n3_α
xchain807_n1_as:
 jmp xchain807_n2_α
 xchain807_n1_β:
 jmp xchain807_n5_β
xchain807_n1_af:
 jmp xchain807_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain807_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$19_scanhit
 xchain807_n2_β:
 sub r12, 24
 jmp xchain807_n1_β
# IR_MATCH_LIT
 xchain807_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain807_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain807_n1_af
 add r14d, 1
 jmp xchain807_n4_α
 xchain807_n3_β:
 sub r14d, 1
 jmp xchain807_n1_af
# IR_MATCH_BAL
 xchain807_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain807_n4_β:
.Lx817_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx817_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx817_1
 add edx, 1
 jmp .Lx817_2
.Lx817_1:
 cmp esi, 41
 jne .Lx817_2
 sub edx, 1
 cmp edx, 0
 jl .Lx817_3
.Lx817_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx817_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain807_n5_α
.Lx817_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain807_n3_β
# IR_MATCH_LIT
 xchain807_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain807_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain807_n4_β
 add r14d, 1
 jmp xchain807_n1_as
 xchain807_n5_β:
 sub r14d, 1
 jmp xchain807_n4_β
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
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$20_attempt:
proc_PAT$20_α_body:
lea rax, [rip + xchain820_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain820_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain820_n1_α
 xchain820_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$20_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain820_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx823_0
 mov r8d, 0
 lea rcx, [rip + .Lx823_4]
 lea rdx, [rip + .Lx823_5]
 jmp rax
.Lx823_4:
 jmp xchain820_n2_α
.Lx823_5:
 jmp xchain820_n0_β
.Lx823_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx823_2:
 test rax, rax
 je .Lx823_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx823_7]
 lea rdx, [rip + .Lx823_8]
 jmp rax
.Lx823_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx823_2
.Lx823_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx823_2
.Lx823_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain820_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx823_6]
 sub rsp, 8
 push rax
 jmp xchain820_n2_α
.Lx823_6:
 add rsp, 16
 jmp xchain820_n0_β
 xchain820_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain820_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S23]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$20_scanhit
 xchain820_n2_β:
 sub r12, 24
 jmp xchain820_n1_β
proc_PAT$20_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$20_γ
proc_PAT$20_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$20_attempt
8:
jmp proc_PAT$20_ω
proc_PAT$20_res:
add rsp, 8
pop rbp
proc_PAT$20_β:
jmp qword ptr [rbp + 96]
proc_PAT$20_γ:
push rbp
lea rax, [rip + proc_PAT$20_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$20_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
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
lea rax, [rip + xchain826_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain826_n0_α:
 mov rax, qword ptr [1879054608]
 mov rdx, qword ptr [1879054616]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain826_n1_α
# IR_COERCE_STRING
 xchain826_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain826_n2_α
# IR_MATCH_SPAN
 xchain826_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx831_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx831_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx831_1
 add dword ptr [rsp + 0], 1
 jmp .Lx831_0
.Lx831_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx831_240
 add rsp, 16
 jmp proc_PAT$21_scanfail
.Lx831_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$21_scanhit
 xchain826_n2_β:
 xchain826_n2_β:
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
lea rax, [rip + xchain832_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain832_n0_α:
 mov rax, qword ptr [1879054640]
 mov rdx, qword ptr [1879054648]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain832_n1_α
 xchain832_n0_β:
 jmp proc_PAT$22_scanfail
# IR_COERCE_STRING
 xchain832_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain832_n2_α
 xchain832_n1_β:
 jmp proc_PAT$22_scanfail
# IR_VAR
 xchain832_n2_α:
 mov rax, qword ptr [1879054624]
 mov rdx, qword ptr [1879054632]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain832_n3_α
 xchain832_n2_β:
 jmp proc_PAT$22_scanfail
# IR_COERCE_STRING
 xchain832_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain832_n4_α
 xchain832_n3_β:
 jmp proc_PAT$22_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain832_n4_α:
 jmp xchain832_n5_α
xchain832_n4_as:
 jmp proc_PAT$22_γ
 xchain832_n4_β:
 jmp xchain832_n6_β
xchain832_n4_af:
 jmp proc_PAT$22_ω
# IR_MATCH_NOTANY
 xchain832_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain832_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain832_n4_af
 add r14d, 1
 jmp xchain832_n6_α
 xchain832_n5_β:
 sub r14d, 1
 jmp xchain832_n4_af
# IR_MATCH_BREAK
 xchain832_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx843_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx843_240
 add rsp, 16
 jmp xchain832_n5_β
.Lx843_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx843_1
 add dword ptr [rsp + 0], 1
 jmp .Lx843_0
.Lx843_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain832_n4_as
 xchain832_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain832_n5_β
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
proc_PAT$23_attempt:
proc_PAT$23_α_body:
lea rax, [rip + xchain844_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain844_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain844_n1_α
xchain844_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain844_n2_α
 cmp eax, 2
 je xchain844_n4_α
 cmp eax, 3
 je xchain844_n6_α
 cmp eax, 4
 je xchain844_n7_α
 cmp eax, 5
 je xchain844_n9_α
 jmp proc_PAT$23_γ
 xchain844_n0_β:
 mov dword ptr [rbp + 36], 6
xchain844_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain844_n1_β
 cmp eax, 1
 je xchain844_n3_β
 cmp eax, 2
 je xchain844_n5_β
 cmp eax, 3
 je xchain844_n6_β
 cmp eax, 4
 je xchain844_n8_β
 cmp eax, 5
 je xchain844_n9_β
 jmp proc_PAT$23_ω
# IR_MATCH_LIT
 xchain844_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain844_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain844_n0_af
 add r14d, 1
 jmp xchain844_n0_as
 xchain844_n1_β:
 sub r14d, 1
 jmp xchain844_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain844_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain844_n10_α
 xchain844_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain844_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain844_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain844_n0_as
 xchain844_n3_β:
 sub r12, 24
 jmp xchain844_n10_β
# IR_LIT_STRING
 xchain844_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx853_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain844_n11_α
 xchain844_n4_β:
 jmp xchain844_n0_af
.Lx853_0:
 .quad .Lx853_0_s
.Lx853_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain844_n5_α:
 mov rax, qword ptr [1879054656]
 mov rdx, qword ptr [1879054664]
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
 jmp xchain844_n0_as
.Lx854_5:
 jmp xchain844_n0_af
.Lx854_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S24]
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
 js xchain844_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx854_6]
 sub rsp, 8
 push rax
 jmp xchain844_n0_as
.Lx854_6:
 add rsp, 16
 jmp xchain844_n0_af
 xchain844_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain844_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain844_n0_as
 xchain844_n6_β:
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
 jmp xchain844_n12_α
xchain844_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain844_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain844_n0_as
xchain844_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx856_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain844_n12_β
.Lx856_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain844_n0_af
 xchain844_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx858_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx858_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx858_6]
 lea rdx, [rip + .Lx858_7]
 jmp rax
.Lx858_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx858_2
.Lx858_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx858_2
.Lx858_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx858_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx858_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx858_3]
 lea rdx, [rip + .Lx858_4]
 jmp rax
.Lx858_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx858_2
.Lx858_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx858_2
.Lx858_1:
 call rt_faildescr@PLT
.Lx858_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain844_n0_af
 jmp xchain844_n14_α
 xchain844_n7_β:
 jmp xchain844_n0_af
.Lx858_0:
 .quad .Lx858_0_s
.Lx858_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain844_n8_α:
 mov rax, qword ptr [1879054688]
 mov rdx, qword ptr [1879054696]
 cmp eax, 3
 jne .Lx859_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx859_10
.Lx859_9:
 xor eax, eax
.Lx859_10:
 test rax, rax
 jz .Lx859_0
 mov r8d, 0
 lea rcx, [rip + .Lx859_4]
 lea rdx, [rip + .Lx859_5]
 jmp rax
.Lx859_4:
 jmp xchain844_n0_as
.Lx859_5:
 jmp xchain844_n0_af
.Lx859_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S25]
 xor esi, esi
 call rt_defer_open@PLT
.Lx859_2:
 test rax, rax
 je .Lx859_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx859_7]
 lea rdx, [rip + .Lx859_8]
 jmp rax
.Lx859_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx859_2
.Lx859_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx859_2
.Lx859_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain844_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx859_6]
 sub rsp, 8
 push rax
 jmp xchain844_n0_as
.Lx859_6:
 add rsp, 16
 jmp xchain844_n0_af
 xchain844_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain844_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain844_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain844_n0_af
 add r14d, 1
 jmp xchain844_n0_as
 xchain844_n9_β:
 sub r14d, 1
 jmp xchain844_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain844_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx862_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx862_10
.Lx862_9:
 xor eax, eax
.Lx862_10:
 test rax, rax
 jz .Lx862_0
 mov r8d, 0
 lea rcx, [rip + .Lx862_4]
 lea rdx, [rip + .Lx862_5]
 jmp rax
.Lx862_4:
 jmp xchain844_n3_α
.Lx862_5:
 jmp xchain844_n2_β
.Lx862_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx862_2:
 test rax, rax
 je .Lx862_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx862_7]
 lea rdx, [rip + .Lx862_8]
 jmp rax
.Lx862_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx862_2
.Lx862_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx862_2
.Lx862_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain844_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx862_6]
 sub rsp, 8
 push rax
 jmp xchain844_n3_α
.Lx862_6:
 add rsp, 16
 jmp xchain844_n2_β
 xchain844_n10_β:
 jmp qword ptr [rsp]
 xchain844_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx864_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx864_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx864_6]
 lea rdx, [rip + .Lx864_7]
 jmp rax
.Lx864_6:
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
 jmp .Lx864_2
.Lx864_7:
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
 jmp .Lx864_2
.Lx864_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx864_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx864_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx864_3]
 lea rdx, [rip + .Lx864_4]
 jmp rax
.Lx864_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx864_2
.Lx864_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx864_2
.Lx864_1:
 call rt_faildescr@PLT
.Lx864_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain844_n0_af
 jmp xchain844_n15_α
 xchain844_n11_β:
 jmp xchain844_n0_af
.Lx864_0:
 .quad .Lx864_0_s
.Lx864_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain844_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain844_n16_α
xchain844_n12_as:
 jmp xchain844_n6_as
 xchain844_n12_β:
 jmp xchain844_n17_β
xchain844_n12_af:
 jmp xchain844_n6_af
# IR_LIT_STRING
 xchain844_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx867_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain844_n18_α
 xchain844_n13_β:
 jmp xchain844_n20_af
.Lx867_0:
 .quad .Lx867_0_s
.Lx867_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain844_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054688], rax
 mov qword ptr [1879054696], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain844_n8_α
# IR_ASSIGN gva
 xchain844_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054656], rax
 mov qword ptr [1879054664], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain844_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain844_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx870_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx870_10
.Lx870_9:
 xor eax, eax
.Lx870_10:
 test rax, rax
 jz .Lx870_0
 mov r8d, 0
 lea rcx, [rip + .Lx870_4]
 lea rdx, [rip + .Lx870_5]
 jmp rax
.Lx870_4:
 jmp xchain844_n17_α
.Lx870_5:
 jmp xchain844_n12_af
.Lx870_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx870_2:
 test rax, rax
 je .Lx870_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx870_7]
 lea rdx, [rip + .Lx870_8]
 jmp rax
.Lx870_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx870_2
.Lx870_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx870_2
.Lx870_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain844_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx870_6]
 sub rsp, 8
 push rax
 jmp xchain844_n17_α
.Lx870_6:
 add rsp, 16
 jmp xchain844_n12_af
 xchain844_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain844_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain844_n19_α
xchain844_n17_as:
 jmp xchain844_n12_as
 xchain844_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain844_n19_β
 jmp xchain844_n20_β
xchain844_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain844_n20_α
 jmp xchain844_n16_β
 xchain844_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx874_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx874_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx874_6]
 lea rdx, [rip + .Lx874_7]
 jmp rax
.Lx874_6:
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
 jmp .Lx874_2
.Lx874_7:
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
 jmp .Lx874_2
.Lx874_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx874_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx874_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx874_3]
 lea rdx, [rip + .Lx874_4]
 jmp rax
.Lx874_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx874_2
.Lx874_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx874_2
.Lx874_1:
 call rt_faildescr@PLT
.Lx874_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain844_n20_af
 jmp xchain844_n21_α
 xchain844_n18_β:
 jmp xchain844_n20_af
.Lx874_0:
 .quad .Lx874_0_s
.Lx874_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain844_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx875_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx875_10
.Lx875_9:
 xor eax, eax
.Lx875_10:
 test rax, rax
 jz .Lx875_0
 mov r8d, 0
 lea rcx, [rip + .Lx875_4]
 lea rdx, [rip + .Lx875_5]
 jmp rax
.Lx875_4:
 jmp xchain844_n17_as
.Lx875_5:
 jmp xchain844_n17_af
.Lx875_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx875_2:
 test rax, rax
 je .Lx875_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx875_7]
 lea rdx, [rip + .Lx875_8]
 jmp rax
.Lx875_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx875_2
.Lx875_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx875_2
.Lx875_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain844_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx875_6]
 sub rsp, 8
 push rax
 jmp xchain844_n17_as
.Lx875_6:
 add rsp, 16
 jmp xchain844_n17_af
 xchain844_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain844_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain844_n22_α
xchain844_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain844_n13_α
 jmp xchain844_n17_as
 xchain844_n20_β:
 mov dword ptr [rbp + 468], 2
xchain844_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain844_n23_β
 cmp eax, 1
 je xchain844_n24_β
 jmp xchain844_n17_af
# IR_ASSIGN gva
 xchain844_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054672], rax
 mov qword ptr [1879054680], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain844_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain844_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain844_n25_α
 xchain844_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain844_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain844_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain844_n20_as
 xchain844_n23_β:
 sub r12, 24
 jmp xchain844_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain844_n24_α:
 mov rax, qword ptr [1879054672]
 mov rdx, qword ptr [1879054680]
 cmp eax, 3
 jne .Lx883_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx883_10
.Lx883_9:
 xor eax, eax
.Lx883_10:
 test rax, rax
 jz .Lx883_0
 mov r8d, 0
 lea rcx, [rip + .Lx883_4]
 lea rdx, [rip + .Lx883_5]
 jmp rax
.Lx883_4:
 jmp xchain844_n20_as
.Lx883_5:
 jmp xchain844_n20_af
.Lx883_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S26]
 xor esi, esi
 call rt_defer_open@PLT
.Lx883_2:
 test rax, rax
 je .Lx883_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx883_7]
 lea rdx, [rip + .Lx883_8]
 jmp rax
.Lx883_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx883_2
.Lx883_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx883_2
.Lx883_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain844_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx883_6]
 sub rsp, 8
 push rax
 jmp xchain844_n20_as
.Lx883_6:
 add rsp, 16
 jmp xchain844_n20_af
 xchain844_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain844_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx884_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx884_10
.Lx884_9:
 xor eax, eax
.Lx884_10:
 test rax, rax
 jz .Lx884_0
 mov r8d, 0
 lea rcx, [rip + .Lx884_4]
 lea rdx, [rip + .Lx884_5]
 jmp rax
.Lx884_4:
 jmp xchain844_n23_α
.Lx884_5:
 jmp xchain844_n22_β
.Lx884_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx884_2:
 test rax, rax
 je .Lx884_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx884_7]
 lea rdx, [rip + .Lx884_8]
 jmp rax
.Lx884_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx884_2
.Lx884_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx884_2
.Lx884_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain844_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx884_6]
 sub rsp, 8
 push rax
 jmp xchain844_n23_α
.Lx884_6:
 add rsp, 16
 jmp xchain844_n22_β
 xchain844_n25_β:
 jmp qword ptr [rsp]
proc_PAT$23_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$23_γ
proc_PAT$23_scanfail:
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
jmp proc_PAT$23_attempt
8:
jmp proc_PAT$23_ω
proc_PAT$23_res:
add rsp, 8
pop rbp
proc_PAT$23_β:
jmp qword ptr [rbp + 784]
proc_PAT$23_γ:
push rbp
lea rax, [rip + proc_PAT$23_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$23_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$24_α
proc_PAT$24_α:
#=======================================================================================================================
    .global proc_PAT$24_α
    .global proc_PAT$24_β
    .global proc_PAT$24_γ
    .global proc_PAT$24_ω
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
proc_PAT$24_attempt:
proc_PAT$24_α_body:
lea rax, [rip + xchain885_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain885_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain885_n1_α
 xchain885_n0_β:
 add rsp, 16
 jmp proc_PAT$24_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain885_n1_α:
 jmp xchain885_n3_α
xchain885_n1_as:
 jmp xchain885_n2_α
 xchain885_n1_β:
 jmp xchain885_n5_β
xchain885_n1_af:
 jmp xchain885_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain885_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$24_scanhit
 xchain885_n2_β:
 sub r12, 24
 jmp xchain885_n1_β
# IR_MATCH_LIT
 xchain885_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain885_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain885_n1_af
 add r14d, 1
 jmp xchain885_n4_α
 xchain885_n3_β:
 sub r14d, 1
 jmp xchain885_n1_af
# IR_MATCH_BAL
 xchain885_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain885_n4_β:
.Lx895_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx895_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx895_1
 add edx, 1
 jmp .Lx895_2
.Lx895_1:
 cmp esi, 41
 jne .Lx895_2
 sub edx, 1
 cmp edx, 0
 jl .Lx895_3
.Lx895_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx895_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain885_n5_α
.Lx895_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain885_n3_β
# IR_MATCH_LIT
 xchain885_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain885_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain885_n4_β
 add r14d, 1
 jmp xchain885_n1_as
 xchain885_n5_β:
 sub r14d, 1
 jmp xchain885_n4_β
proc_PAT$24_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$24_γ
proc_PAT$24_scanfail:
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
jmp proc_PAT$24_attempt
8:
jmp proc_PAT$24_ω
proc_PAT$24_res:
add rsp, 8
pop rbp
proc_PAT$24_β:
jmp qword ptr [rbp + 160]
proc_PAT$24_γ:
push rbp
lea rax, [rip + proc_PAT$24_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$24_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$25_α
proc_PAT$25_α:
#=======================================================================================================================
    .global proc_PAT$25_α
    .global proc_PAT$25_β
    .global proc_PAT$25_γ
    .global proc_PAT$25_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$25_attempt:
proc_PAT$25_α_body:
lea rax, [rip + xchain898_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain898_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain898_n1_α
 xchain898_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$25_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain898_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx901_0
 mov r8d, 0
 lea rcx, [rip + .Lx901_4]
 lea rdx, [rip + .Lx901_5]
 jmp rax
.Lx901_4:
 jmp xchain898_n2_α
.Lx901_5:
 jmp xchain898_n0_β
.Lx901_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx901_2:
 test rax, rax
 je .Lx901_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx901_7]
 lea rdx, [rip + .Lx901_8]
 jmp rax
.Lx901_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx901_2
.Lx901_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx901_2
.Lx901_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain898_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx901_6]
 sub rsp, 8
 push rax
 jmp xchain898_n2_α
.Lx901_6:
 add rsp, 16
 jmp xchain898_n0_β
 xchain898_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain898_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S27]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$25_scanhit
 xchain898_n2_β:
 sub r12, 24
 jmp xchain898_n1_β
proc_PAT$25_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$25_γ
proc_PAT$25_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$25_attempt
8:
jmp proc_PAT$25_ω
proc_PAT$25_res:
add rsp, 8
pop rbp
proc_PAT$25_β:
jmp qword ptr [rbp + 96]
proc_PAT$25_γ:
push rbp
lea rax, [rip + proc_PAT$25_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$25_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$26_α
proc_PAT$26_α:
#=======================================================================================================================
    .global proc_PAT$26_α
    .global proc_PAT$26_β
    .global proc_PAT$26_γ
    .global proc_PAT$26_ω
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
proc_PAT$26_attempt:
proc_PAT$26_α_body:
lea rax, [rip + xchain904_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain904_n0_α:
 mov rax, qword ptr [1879054704]
 mov rdx, qword ptr [1879054712]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain904_n1_α
# IR_COERCE_STRING
 xchain904_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain904_n2_α
# IR_MATCH_SPAN
 xchain904_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx909_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx909_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx909_1
 add dword ptr [rsp + 0], 1
 jmp .Lx909_0
.Lx909_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx909_240
 add rsp, 16
 jmp proc_PAT$26_scanfail
.Lx909_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$26_scanhit
 xchain904_n2_β:
 xchain904_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$26_scanfail
proc_PAT$26_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$26_γ
proc_PAT$26_scanfail:
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
jmp proc_PAT$26_attempt
8:
jmp proc_PAT$26_ω
proc_PAT$26_res:
add rsp, 8
pop rbp
proc_PAT$26_β:
jmp qword ptr [rbp + 112]
proc_PAT$26_γ:
push rbp
lea rax, [rip + proc_PAT$26_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$26_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$27_α
proc_PAT$27_α:
#=======================================================================================================================
    .global proc_PAT$27_α
    .global proc_PAT$27_β
    .global proc_PAT$27_γ
    .global proc_PAT$27_ω
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
proc_PAT$27_attempt:
proc_PAT$27_α_body:
lea rax, [rip + xchain910_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain910_n0_α:
 mov rax, qword ptr [1879054736]
 mov rdx, qword ptr [1879054744]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain910_n1_α
 xchain910_n0_β:
 jmp proc_PAT$27_scanfail
# IR_COERCE_STRING
 xchain910_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain910_n2_α
 xchain910_n1_β:
 jmp proc_PAT$27_scanfail
# IR_VAR
 xchain910_n2_α:
 mov rax, qword ptr [1879054720]
 mov rdx, qword ptr [1879054728]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain910_n3_α
 xchain910_n2_β:
 jmp proc_PAT$27_scanfail
# IR_COERCE_STRING
 xchain910_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain910_n4_α
 xchain910_n3_β:
 jmp proc_PAT$27_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain910_n4_α:
 jmp xchain910_n5_α
xchain910_n4_as:
 jmp proc_PAT$27_γ
 xchain910_n4_β:
 jmp xchain910_n6_β
xchain910_n4_af:
 jmp proc_PAT$27_ω
# IR_MATCH_NOTANY
 xchain910_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain910_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain910_n4_af
 add r14d, 1
 jmp xchain910_n6_α
 xchain910_n5_β:
 sub r14d, 1
 jmp xchain910_n4_af
# IR_MATCH_BREAK
 xchain910_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx921_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx921_240
 add rsp, 16
 jmp xchain910_n5_β
.Lx921_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx921_1
 add dword ptr [rsp + 0], 1
 jmp .Lx921_0
.Lx921_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain910_n4_as
 xchain910_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain910_n5_β
proc_PAT$27_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$27_γ
proc_PAT$27_scanfail:
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
jmp proc_PAT$27_attempt
8:
jmp proc_PAT$27_ω
proc_PAT$27_res:
add rsp, 8
pop rbp
proc_PAT$27_β:
jmp qword ptr [rbp + 224]
proc_PAT$27_γ:
push rbp
lea rax, [rip + proc_PAT$27_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$27_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$28_α
proc_PAT$28_α:
#=======================================================================================================================
    .global proc_PAT$28_α
    .global proc_PAT$28_β
    .global proc_PAT$28_γ
    .global proc_PAT$28_ω
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
proc_PAT$28_attempt:
proc_PAT$28_α_body:
lea rax, [rip + xchain922_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain922_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain922_n1_α
xchain922_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain922_n2_α
 cmp eax, 2
 je xchain922_n4_α
 cmp eax, 3
 je xchain922_n6_α
 cmp eax, 4
 je xchain922_n7_α
 cmp eax, 5
 je xchain922_n9_α
 jmp proc_PAT$28_γ
 xchain922_n0_β:
 mov dword ptr [rbp + 36], 6
xchain922_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain922_n1_β
 cmp eax, 1
 je xchain922_n3_β
 cmp eax, 2
 je xchain922_n5_β
 cmp eax, 3
 je xchain922_n6_β
 cmp eax, 4
 je xchain922_n8_β
 cmp eax, 5
 je xchain922_n9_β
 jmp proc_PAT$28_ω
# IR_MATCH_LIT
 xchain922_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain922_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain922_n0_af
 add r14d, 1
 jmp xchain922_n0_as
 xchain922_n1_β:
 sub r14d, 1
 jmp xchain922_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain922_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain922_n10_α
 xchain922_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain922_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain922_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain922_n0_as
 xchain922_n3_β:
 sub r12, 24
 jmp xchain922_n10_β
# IR_LIT_STRING
 xchain922_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx931_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain922_n11_α
 xchain922_n4_β:
 jmp xchain922_n0_af
.Lx931_0:
 .quad .Lx931_0_s
.Lx931_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain922_n5_α:
 mov rax, qword ptr [1879054752]
 mov rdx, qword ptr [1879054760]
 cmp eax, 3
 jne .Lx932_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx932_10
.Lx932_9:
 xor eax, eax
.Lx932_10:
 test rax, rax
 jz .Lx932_0
 mov r8d, 0
 lea rcx, [rip + .Lx932_4]
 lea rdx, [rip + .Lx932_5]
 jmp rax
.Lx932_4:
 jmp xchain922_n0_as
.Lx932_5:
 jmp xchain922_n0_af
.Lx932_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S28]
 xor esi, esi
 call rt_defer_open@PLT
.Lx932_2:
 test rax, rax
 je .Lx932_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx932_7]
 lea rdx, [rip + .Lx932_8]
 jmp rax
.Lx932_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx932_2
.Lx932_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx932_2
.Lx932_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain922_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx932_6]
 sub rsp, 8
 push rax
 jmp xchain922_n0_as
.Lx932_6:
 add rsp, 16
 jmp xchain922_n0_af
 xchain922_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain922_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain922_n0_as
 xchain922_n6_β:
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
 jmp xchain922_n12_α
xchain922_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain922_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain922_n0_as
xchain922_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx934_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain922_n12_β
.Lx934_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain922_n0_af
 xchain922_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx936_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx936_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx936_6]
 lea rdx, [rip + .Lx936_7]
 jmp rax
.Lx936_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx936_2
.Lx936_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx936_2
.Lx936_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx936_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx936_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx936_3]
 lea rdx, [rip + .Lx936_4]
 jmp rax
.Lx936_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx936_2
.Lx936_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx936_2
.Lx936_1:
 call rt_faildescr@PLT
.Lx936_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain922_n0_af
 jmp xchain922_n14_α
 xchain922_n7_β:
 jmp xchain922_n0_af
.Lx936_0:
 .quad .Lx936_0_s
.Lx936_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain922_n8_α:
 mov rax, qword ptr [1879054784]
 mov rdx, qword ptr [1879054792]
 cmp eax, 3
 jne .Lx937_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx937_10
.Lx937_9:
 xor eax, eax
.Lx937_10:
 test rax, rax
 jz .Lx937_0
 mov r8d, 0
 lea rcx, [rip + .Lx937_4]
 lea rdx, [rip + .Lx937_5]
 jmp rax
.Lx937_4:
 jmp xchain922_n0_as
.Lx937_5:
 jmp xchain922_n0_af
.Lx937_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S29]
 xor esi, esi
 call rt_defer_open@PLT
.Lx937_2:
 test rax, rax
 je .Lx937_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx937_7]
 lea rdx, [rip + .Lx937_8]
 jmp rax
.Lx937_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx937_2
.Lx937_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx937_2
.Lx937_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain922_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx937_6]
 sub rsp, 8
 push rax
 jmp xchain922_n0_as
.Lx937_6:
 add rsp, 16
 jmp xchain922_n0_af
 xchain922_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain922_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain922_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain922_n0_af
 add r14d, 1
 jmp xchain922_n0_as
 xchain922_n9_β:
 sub r14d, 1
 jmp xchain922_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain922_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx940_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx940_10
.Lx940_9:
 xor eax, eax
.Lx940_10:
 test rax, rax
 jz .Lx940_0
 mov r8d, 0
 lea rcx, [rip + .Lx940_4]
 lea rdx, [rip + .Lx940_5]
 jmp rax
.Lx940_4:
 jmp xchain922_n3_α
.Lx940_5:
 jmp xchain922_n2_β
.Lx940_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx940_2:
 test rax, rax
 je .Lx940_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx940_7]
 lea rdx, [rip + .Lx940_8]
 jmp rax
.Lx940_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx940_2
.Lx940_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx940_2
.Lx940_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain922_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx940_6]
 sub rsp, 8
 push rax
 jmp xchain922_n3_α
.Lx940_6:
 add rsp, 16
 jmp xchain922_n2_β
 xchain922_n10_β:
 jmp qword ptr [rsp]
 xchain922_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx942_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx942_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx942_6]
 lea rdx, [rip + .Lx942_7]
 jmp rax
.Lx942_6:
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
 jmp .Lx942_2
.Lx942_7:
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
 jmp .Lx942_2
.Lx942_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx942_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx942_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx942_3]
 lea rdx, [rip + .Lx942_4]
 jmp rax
.Lx942_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx942_2
.Lx942_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx942_2
.Lx942_1:
 call rt_faildescr@PLT
.Lx942_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain922_n0_af
 jmp xchain922_n15_α
 xchain922_n11_β:
 jmp xchain922_n0_af
.Lx942_0:
 .quad .Lx942_0_s
.Lx942_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain922_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain922_n16_α
xchain922_n12_as:
 jmp xchain922_n6_as
 xchain922_n12_β:
 jmp xchain922_n17_β
xchain922_n12_af:
 jmp xchain922_n6_af
# IR_LIT_STRING
 xchain922_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx945_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain922_n18_α
 xchain922_n13_β:
 jmp xchain922_n20_af
.Lx945_0:
 .quad .Lx945_0_s
.Lx945_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain922_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054784], rax
 mov qword ptr [1879054792], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain922_n8_α
# IR_ASSIGN gva
 xchain922_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054752], rax
 mov qword ptr [1879054760], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain922_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain922_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx948_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx948_10
.Lx948_9:
 xor eax, eax
.Lx948_10:
 test rax, rax
 jz .Lx948_0
 mov r8d, 0
 lea rcx, [rip + .Lx948_4]
 lea rdx, [rip + .Lx948_5]
 jmp rax
.Lx948_4:
 jmp xchain922_n17_α
.Lx948_5:
 jmp xchain922_n12_af
.Lx948_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx948_2:
 test rax, rax
 je .Lx948_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx948_7]
 lea rdx, [rip + .Lx948_8]
 jmp rax
.Lx948_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx948_2
.Lx948_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx948_2
.Lx948_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain922_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx948_6]
 sub rsp, 8
 push rax
 jmp xchain922_n17_α
.Lx948_6:
 add rsp, 16
 jmp xchain922_n12_af
 xchain922_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain922_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain922_n19_α
xchain922_n17_as:
 jmp xchain922_n12_as
 xchain922_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain922_n19_β
 jmp xchain922_n20_β
xchain922_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain922_n20_α
 jmp xchain922_n16_β
 xchain922_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx952_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx952_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx952_6]
 lea rdx, [rip + .Lx952_7]
 jmp rax
.Lx952_6:
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
 jmp .Lx952_2
.Lx952_7:
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
 jmp .Lx952_2
.Lx952_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx952_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx952_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx952_3]
 lea rdx, [rip + .Lx952_4]
 jmp rax
.Lx952_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx952_2
.Lx952_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx952_2
.Lx952_1:
 call rt_faildescr@PLT
.Lx952_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain922_n20_af
 jmp xchain922_n21_α
 xchain922_n18_β:
 jmp xchain922_n20_af
.Lx952_0:
 .quad .Lx952_0_s
.Lx952_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain922_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx953_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx953_10
.Lx953_9:
 xor eax, eax
.Lx953_10:
 test rax, rax
 jz .Lx953_0
 mov r8d, 0
 lea rcx, [rip + .Lx953_4]
 lea rdx, [rip + .Lx953_5]
 jmp rax
.Lx953_4:
 jmp xchain922_n17_as
.Lx953_5:
 jmp xchain922_n17_af
.Lx953_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx953_2:
 test rax, rax
 je .Lx953_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx953_7]
 lea rdx, [rip + .Lx953_8]
 jmp rax
.Lx953_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx953_2
.Lx953_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx953_2
.Lx953_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain922_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx953_6]
 sub rsp, 8
 push rax
 jmp xchain922_n17_as
.Lx953_6:
 add rsp, 16
 jmp xchain922_n17_af
 xchain922_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain922_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain922_n22_α
xchain922_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain922_n13_α
 jmp xchain922_n17_as
 xchain922_n20_β:
 mov dword ptr [rbp + 468], 2
xchain922_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain922_n23_β
 cmp eax, 1
 je xchain922_n24_β
 jmp xchain922_n17_af
# IR_ASSIGN gva
 xchain922_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054768], rax
 mov qword ptr [1879054776], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain922_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain922_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain922_n25_α
 xchain922_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain922_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain922_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain922_n20_as
 xchain922_n23_β:
 sub r12, 24
 jmp xchain922_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain922_n24_α:
 mov rax, qword ptr [1879054768]
 mov rdx, qword ptr [1879054776]
 cmp eax, 3
 jne .Lx961_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx961_10
.Lx961_9:
 xor eax, eax
.Lx961_10:
 test rax, rax
 jz .Lx961_0
 mov r8d, 0
 lea rcx, [rip + .Lx961_4]
 lea rdx, [rip + .Lx961_5]
 jmp rax
.Lx961_4:
 jmp xchain922_n20_as
.Lx961_5:
 jmp xchain922_n20_af
.Lx961_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S30]
 xor esi, esi
 call rt_defer_open@PLT
.Lx961_2:
 test rax, rax
 je .Lx961_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx961_7]
 lea rdx, [rip + .Lx961_8]
 jmp rax
.Lx961_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx961_2
.Lx961_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx961_2
.Lx961_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain922_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx961_6]
 sub rsp, 8
 push rax
 jmp xchain922_n20_as
.Lx961_6:
 add rsp, 16
 jmp xchain922_n20_af
 xchain922_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain922_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx962_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx962_10
.Lx962_9:
 xor eax, eax
.Lx962_10:
 test rax, rax
 jz .Lx962_0
 mov r8d, 0
 lea rcx, [rip + .Lx962_4]
 lea rdx, [rip + .Lx962_5]
 jmp rax
.Lx962_4:
 jmp xchain922_n23_α
.Lx962_5:
 jmp xchain922_n22_β
.Lx962_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx962_2:
 test rax, rax
 je .Lx962_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx962_7]
 lea rdx, [rip + .Lx962_8]
 jmp rax
.Lx962_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx962_2
.Lx962_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx962_2
.Lx962_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain922_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx962_6]
 sub rsp, 8
 push rax
 jmp xchain922_n23_α
.Lx962_6:
 add rsp, 16
 jmp xchain922_n22_β
 xchain922_n25_β:
 jmp qword ptr [rsp]
proc_PAT$28_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$28_γ
proc_PAT$28_scanfail:
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
jmp proc_PAT$28_attempt
8:
jmp proc_PAT$28_ω
proc_PAT$28_res:
add rsp, 8
pop rbp
proc_PAT$28_β:
jmp qword ptr [rbp + 784]
proc_PAT$28_γ:
push rbp
lea rax, [rip + proc_PAT$28_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$28_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
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
lea rax, [rip + xchain963_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain963_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain963_n1_α
 xchain963_n0_β:
 add rsp, 16
 jmp proc_PAT$29_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain963_n1_α:
 jmp xchain963_n3_α
xchain963_n1_as:
 jmp xchain963_n2_α
 xchain963_n1_β:
 jmp xchain963_n5_β
xchain963_n1_af:
 jmp xchain963_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain963_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$29_scanhit
 xchain963_n2_β:
 sub r12, 24
 jmp xchain963_n1_β
# IR_MATCH_LIT
 xchain963_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain963_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain963_n1_af
 add r14d, 1
 jmp xchain963_n4_α
 xchain963_n3_β:
 sub r14d, 1
 jmp xchain963_n1_af
# IR_MATCH_BAL
 xchain963_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain963_n4_β:
.Lx973_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx973_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx973_1
 add edx, 1
 jmp .Lx973_2
.Lx973_1:
 cmp esi, 41
 jne .Lx973_2
 sub edx, 1
 cmp edx, 0
 jl .Lx973_3
.Lx973_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx973_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain963_n5_α
.Lx973_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain963_n3_β
# IR_MATCH_LIT
 xchain963_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain963_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain963_n4_β
 add r14d, 1
 jmp xchain963_n1_as
 xchain963_n5_β:
 sub r14d, 1
 jmp xchain963_n4_β
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
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$30_attempt:
proc_PAT$30_α_body:
lea rax, [rip + xchain976_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain976_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain976_n1_α
 xchain976_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$30_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain976_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx979_0
 mov r8d, 0
 lea rcx, [rip + .Lx979_4]
 lea rdx, [rip + .Lx979_5]
 jmp rax
.Lx979_4:
 jmp xchain976_n2_α
.Lx979_5:
 jmp xchain976_n0_β
.Lx979_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx979_2:
 test rax, rax
 je .Lx979_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx979_7]
 lea rdx, [rip + .Lx979_8]
 jmp rax
.Lx979_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx979_2
.Lx979_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx979_2
.Lx979_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain976_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx979_6]
 sub rsp, 8
 push rax
 jmp xchain976_n2_α
.Lx979_6:
 add rsp, 16
 jmp xchain976_n0_β
 xchain976_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain976_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S31]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$30_scanhit
 xchain976_n2_β:
 sub r12, 24
 jmp xchain976_n1_β
proc_PAT$30_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$30_γ
proc_PAT$30_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$30_attempt
8:
jmp proc_PAT$30_ω
proc_PAT$30_res:
add rsp, 8
pop rbp
proc_PAT$30_β:
jmp qword ptr [rbp + 96]
proc_PAT$30_γ:
push rbp
lea rax, [rip + proc_PAT$30_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$30_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$31_α
proc_PAT$31_α:
#=======================================================================================================================
    .global proc_PAT$31_α
    .global proc_PAT$31_β
    .global proc_PAT$31_γ
    .global proc_PAT$31_ω
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
proc_PAT$31_attempt:
proc_PAT$31_α_body:
lea rax, [rip + xchain982_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain982_n0_α:
 mov rax, qword ptr [1879054800]
 mov rdx, qword ptr [1879054808]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain982_n1_α
# IR_COERCE_STRING
 xchain982_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain982_n2_α
# IR_MATCH_SPAN
 xchain982_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx987_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx987_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx987_1
 add dword ptr [rsp + 0], 1
 jmp .Lx987_0
.Lx987_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx987_240
 add rsp, 16
 jmp proc_PAT$31_scanfail
.Lx987_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$31_scanhit
 xchain982_n2_β:
 xchain982_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$31_scanfail
proc_PAT$31_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$31_γ
proc_PAT$31_scanfail:
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
jmp proc_PAT$31_attempt
8:
jmp proc_PAT$31_ω
proc_PAT$31_res:
add rsp, 8
pop rbp
proc_PAT$31_β:
jmp qword ptr [rbp + 112]
proc_PAT$31_γ:
push rbp
lea rax, [rip + proc_PAT$31_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$31_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$32_α
proc_PAT$32_α:
#=======================================================================================================================
    .global proc_PAT$32_α
    .global proc_PAT$32_β
    .global proc_PAT$32_γ
    .global proc_PAT$32_ω
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
proc_PAT$32_attempt:
proc_PAT$32_α_body:
lea rax, [rip + xchain988_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain988_n0_α:
 mov rax, qword ptr [1879054832]
 mov rdx, qword ptr [1879054840]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain988_n1_α
 xchain988_n0_β:
 jmp proc_PAT$32_scanfail
# IR_COERCE_STRING
 xchain988_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain988_n2_α
 xchain988_n1_β:
 jmp proc_PAT$32_scanfail
# IR_VAR
 xchain988_n2_α:
 mov rax, qword ptr [1879054816]
 mov rdx, qword ptr [1879054824]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain988_n3_α
 xchain988_n2_β:
 jmp proc_PAT$32_scanfail
# IR_COERCE_STRING
 xchain988_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain988_n4_α
 xchain988_n3_β:
 jmp proc_PAT$32_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain988_n4_α:
 jmp xchain988_n5_α
xchain988_n4_as:
 jmp proc_PAT$32_γ
 xchain988_n4_β:
 jmp xchain988_n6_β
xchain988_n4_af:
 jmp proc_PAT$32_ω
# IR_MATCH_NOTANY
 xchain988_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain988_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain988_n4_af
 add r14d, 1
 jmp xchain988_n6_α
 xchain988_n5_β:
 sub r14d, 1
 jmp xchain988_n4_af
# IR_MATCH_BREAK
 xchain988_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx999_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx999_240
 add rsp, 16
 jmp xchain988_n5_β
.Lx999_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx999_1
 add dword ptr [rsp + 0], 1
 jmp .Lx999_0
.Lx999_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain988_n4_as
 xchain988_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain988_n5_β
proc_PAT$32_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$32_γ
proc_PAT$32_scanfail:
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
jmp proc_PAT$32_attempt
8:
jmp proc_PAT$32_ω
proc_PAT$32_res:
add rsp, 8
pop rbp
proc_PAT$32_β:
jmp qword ptr [rbp + 224]
proc_PAT$32_γ:
push rbp
lea rax, [rip + proc_PAT$32_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$32_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$33_α
proc_PAT$33_α:
#=======================================================================================================================
    .global proc_PAT$33_α
    .global proc_PAT$33_β
    .global proc_PAT$33_γ
    .global proc_PAT$33_ω
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
proc_PAT$33_attempt:
proc_PAT$33_α_body:
lea rax, [rip + xchain1000_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1000_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1000_n1_α
xchain1000_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1000_n2_α
 cmp eax, 2
 je xchain1000_n4_α
 cmp eax, 3
 je xchain1000_n6_α
 cmp eax, 4
 je xchain1000_n7_α
 cmp eax, 5
 je xchain1000_n9_α
 jmp proc_PAT$33_γ
 xchain1000_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1000_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1000_n1_β
 cmp eax, 1
 je xchain1000_n3_β
 cmp eax, 2
 je xchain1000_n5_β
 cmp eax, 3
 je xchain1000_n6_β
 cmp eax, 4
 je xchain1000_n8_β
 cmp eax, 5
 je xchain1000_n9_β
 jmp proc_PAT$33_ω
# IR_MATCH_LIT
 xchain1000_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1000_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1000_n0_af
 add r14d, 1
 jmp xchain1000_n0_as
 xchain1000_n1_β:
 sub r14d, 1
 jmp xchain1000_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1000_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1000_n10_α
 xchain1000_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1000_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1000_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1000_n0_as
 xchain1000_n3_β:
 sub r12, 24
 jmp xchain1000_n10_β
# IR_LIT_STRING
 xchain1000_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1009_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1000_n11_α
 xchain1000_n4_β:
 jmp xchain1000_n0_af
.Lx1009_0:
 .quad .Lx1009_0_s
.Lx1009_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1000_n5_α:
 mov rax, qword ptr [1879054848]
 mov rdx, qword ptr [1879054856]
 cmp eax, 3
 jne .Lx1010_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1010_10
.Lx1010_9:
 xor eax, eax
.Lx1010_10:
 test rax, rax
 jz .Lx1010_0
 mov r8d, 0
 lea rcx, [rip + .Lx1010_4]
 lea rdx, [rip + .Lx1010_5]
 jmp rax
.Lx1010_4:
 jmp xchain1000_n0_as
.Lx1010_5:
 jmp xchain1000_n0_af
.Lx1010_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S32]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1010_2:
 test rax, rax
 je .Lx1010_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1010_7]
 lea rdx, [rip + .Lx1010_8]
 jmp rax
.Lx1010_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1010_2
.Lx1010_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1010_2
.Lx1010_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1000_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1010_6]
 sub rsp, 8
 push rax
 jmp xchain1000_n0_as
.Lx1010_6:
 add rsp, 16
 jmp xchain1000_n0_af
 xchain1000_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1000_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1000_n0_as
 xchain1000_n6_β:
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
 jmp xchain1000_n12_α
xchain1000_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1000_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1000_n0_as
xchain1000_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1012_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1000_n12_β
.Lx1012_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1000_n0_af
 xchain1000_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1014_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1014_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1014_6]
 lea rdx, [rip + .Lx1014_7]
 jmp rax
.Lx1014_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1014_2
.Lx1014_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1014_2
.Lx1014_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1014_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1014_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1014_3]
 lea rdx, [rip + .Lx1014_4]
 jmp rax
.Lx1014_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1014_2
.Lx1014_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1014_2
.Lx1014_1:
 call rt_faildescr@PLT
.Lx1014_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1000_n0_af
 jmp xchain1000_n14_α
 xchain1000_n7_β:
 jmp xchain1000_n0_af
.Lx1014_0:
 .quad .Lx1014_0_s
.Lx1014_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1000_n8_α:
 mov rax, qword ptr [1879054880]
 mov rdx, qword ptr [1879054888]
 cmp eax, 3
 jne .Lx1015_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1015_10
.Lx1015_9:
 xor eax, eax
.Lx1015_10:
 test rax, rax
 jz .Lx1015_0
 mov r8d, 0
 lea rcx, [rip + .Lx1015_4]
 lea rdx, [rip + .Lx1015_5]
 jmp rax
.Lx1015_4:
 jmp xchain1000_n0_as
.Lx1015_5:
 jmp xchain1000_n0_af
.Lx1015_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S33]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1015_2:
 test rax, rax
 je .Lx1015_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1015_7]
 lea rdx, [rip + .Lx1015_8]
 jmp rax
.Lx1015_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1015_2
.Lx1015_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1015_2
.Lx1015_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1000_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1015_6]
 sub rsp, 8
 push rax
 jmp xchain1000_n0_as
.Lx1015_6:
 add rsp, 16
 jmp xchain1000_n0_af
 xchain1000_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1000_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1000_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1000_n0_af
 add r14d, 1
 jmp xchain1000_n0_as
 xchain1000_n9_β:
 sub r14d, 1
 jmp xchain1000_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1000_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1018_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1018_10
.Lx1018_9:
 xor eax, eax
.Lx1018_10:
 test rax, rax
 jz .Lx1018_0
 mov r8d, 0
 lea rcx, [rip + .Lx1018_4]
 lea rdx, [rip + .Lx1018_5]
 jmp rax
.Lx1018_4:
 jmp xchain1000_n3_α
.Lx1018_5:
 jmp xchain1000_n2_β
.Lx1018_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1018_2:
 test rax, rax
 je .Lx1018_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1018_7]
 lea rdx, [rip + .Lx1018_8]
 jmp rax
.Lx1018_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1018_2
.Lx1018_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1018_2
.Lx1018_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1000_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1018_6]
 sub rsp, 8
 push rax
 jmp xchain1000_n3_α
.Lx1018_6:
 add rsp, 16
 jmp xchain1000_n2_β
 xchain1000_n10_β:
 jmp qword ptr [rsp]
 xchain1000_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1020_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1020_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1020_6]
 lea rdx, [rip + .Lx1020_7]
 jmp rax
.Lx1020_6:
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
 jmp .Lx1020_2
.Lx1020_7:
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
 jmp .Lx1020_2
.Lx1020_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1020_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1020_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1020_3]
 lea rdx, [rip + .Lx1020_4]
 jmp rax
.Lx1020_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1020_2
.Lx1020_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1020_2
.Lx1020_1:
 call rt_faildescr@PLT
.Lx1020_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1000_n0_af
 jmp xchain1000_n15_α
 xchain1000_n11_β:
 jmp xchain1000_n0_af
.Lx1020_0:
 .quad .Lx1020_0_s
.Lx1020_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1000_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1000_n16_α
xchain1000_n12_as:
 jmp xchain1000_n6_as
 xchain1000_n12_β:
 jmp xchain1000_n17_β
xchain1000_n12_af:
 jmp xchain1000_n6_af
# IR_LIT_STRING
 xchain1000_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1023_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1000_n18_α
 xchain1000_n13_β:
 jmp xchain1000_n20_af
.Lx1023_0:
 .quad .Lx1023_0_s
.Lx1023_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1000_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054880], rax
 mov qword ptr [1879054888], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1000_n8_α
# IR_ASSIGN gva
 xchain1000_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054848], rax
 mov qword ptr [1879054856], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1000_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1000_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1026_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1026_10
.Lx1026_9:
 xor eax, eax
.Lx1026_10:
 test rax, rax
 jz .Lx1026_0
 mov r8d, 0
 lea rcx, [rip + .Lx1026_4]
 lea rdx, [rip + .Lx1026_5]
 jmp rax
.Lx1026_4:
 jmp xchain1000_n17_α
.Lx1026_5:
 jmp xchain1000_n12_af
.Lx1026_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1026_2:
 test rax, rax
 je .Lx1026_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1026_7]
 lea rdx, [rip + .Lx1026_8]
 jmp rax
.Lx1026_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1026_2
.Lx1026_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1026_2
.Lx1026_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1000_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1026_6]
 sub rsp, 8
 push rax
 jmp xchain1000_n17_α
.Lx1026_6:
 add rsp, 16
 jmp xchain1000_n12_af
 xchain1000_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1000_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1000_n19_α
xchain1000_n17_as:
 jmp xchain1000_n12_as
 xchain1000_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1000_n19_β
 jmp xchain1000_n20_β
xchain1000_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1000_n20_α
 jmp xchain1000_n16_β
 xchain1000_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1030_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1030_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1030_6]
 lea rdx, [rip + .Lx1030_7]
 jmp rax
.Lx1030_6:
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
 jmp .Lx1030_2
.Lx1030_7:
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
 jmp .Lx1030_2
.Lx1030_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1030_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1030_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1030_3]
 lea rdx, [rip + .Lx1030_4]
 jmp rax
.Lx1030_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1030_2
.Lx1030_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1030_2
.Lx1030_1:
 call rt_faildescr@PLT
.Lx1030_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1000_n20_af
 jmp xchain1000_n21_α
 xchain1000_n18_β:
 jmp xchain1000_n20_af
.Lx1030_0:
 .quad .Lx1030_0_s
.Lx1030_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1000_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1031_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1031_10
.Lx1031_9:
 xor eax, eax
.Lx1031_10:
 test rax, rax
 jz .Lx1031_0
 mov r8d, 0
 lea rcx, [rip + .Lx1031_4]
 lea rdx, [rip + .Lx1031_5]
 jmp rax
.Lx1031_4:
 jmp xchain1000_n17_as
.Lx1031_5:
 jmp xchain1000_n17_af
.Lx1031_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1031_2:
 test rax, rax
 je .Lx1031_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1031_7]
 lea rdx, [rip + .Lx1031_8]
 jmp rax
.Lx1031_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1031_2
.Lx1031_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1031_2
.Lx1031_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1000_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1031_6]
 sub rsp, 8
 push rax
 jmp xchain1000_n17_as
.Lx1031_6:
 add rsp, 16
 jmp xchain1000_n17_af
 xchain1000_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1000_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1000_n22_α
xchain1000_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1000_n13_α
 jmp xchain1000_n17_as
 xchain1000_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1000_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1000_n23_β
 cmp eax, 1
 je xchain1000_n24_β
 jmp xchain1000_n17_af
# IR_ASSIGN gva
 xchain1000_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054864], rax
 mov qword ptr [1879054872], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1000_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1000_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1000_n25_α
 xchain1000_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1000_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1000_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1000_n20_as
 xchain1000_n23_β:
 sub r12, 24
 jmp xchain1000_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1000_n24_α:
 mov rax, qword ptr [1879054864]
 mov rdx, qword ptr [1879054872]
 cmp eax, 3
 jne .Lx1039_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1039_10
.Lx1039_9:
 xor eax, eax
.Lx1039_10:
 test rax, rax
 jz .Lx1039_0
 mov r8d, 0
 lea rcx, [rip + .Lx1039_4]
 lea rdx, [rip + .Lx1039_5]
 jmp rax
.Lx1039_4:
 jmp xchain1000_n20_as
.Lx1039_5:
 jmp xchain1000_n20_af
.Lx1039_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S34]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1039_2:
 test rax, rax
 je .Lx1039_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1039_7]
 lea rdx, [rip + .Lx1039_8]
 jmp rax
.Lx1039_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1039_2
.Lx1039_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1039_2
.Lx1039_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1000_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1039_6]
 sub rsp, 8
 push rax
 jmp xchain1000_n20_as
.Lx1039_6:
 add rsp, 16
 jmp xchain1000_n20_af
 xchain1000_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1000_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1040_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1040_10
.Lx1040_9:
 xor eax, eax
.Lx1040_10:
 test rax, rax
 jz .Lx1040_0
 mov r8d, 0
 lea rcx, [rip + .Lx1040_4]
 lea rdx, [rip + .Lx1040_5]
 jmp rax
.Lx1040_4:
 jmp xchain1000_n23_α
.Lx1040_5:
 jmp xchain1000_n22_β
.Lx1040_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1040_2:
 test rax, rax
 je .Lx1040_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1040_7]
 lea rdx, [rip + .Lx1040_8]
 jmp rax
.Lx1040_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1040_2
.Lx1040_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1040_2
.Lx1040_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1000_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1040_6]
 sub rsp, 8
 push rax
 jmp xchain1000_n23_α
.Lx1040_6:
 add rsp, 16
 jmp xchain1000_n22_β
 xchain1000_n25_β:
 jmp qword ptr [rsp]
proc_PAT$33_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$33_γ
proc_PAT$33_scanfail:
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
jmp proc_PAT$33_attempt
8:
jmp proc_PAT$33_ω
proc_PAT$33_res:
add rsp, 8
pop rbp
proc_PAT$33_β:
jmp qword ptr [rbp + 784]
proc_PAT$33_γ:
push rbp
lea rax, [rip + proc_PAT$33_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$33_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$34_α
proc_PAT$34_α:
#=======================================================================================================================
    .global proc_PAT$34_α
    .global proc_PAT$34_β
    .global proc_PAT$34_γ
    .global proc_PAT$34_ω
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
proc_PAT$34_attempt:
proc_PAT$34_α_body:
lea rax, [rip + xchain1041_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1041_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1041_n1_α
 xchain1041_n0_β:
 add rsp, 16
 jmp proc_PAT$34_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1041_n1_α:
 jmp xchain1041_n3_α
xchain1041_n1_as:
 jmp xchain1041_n2_α
 xchain1041_n1_β:
 jmp xchain1041_n5_β
xchain1041_n1_af:
 jmp xchain1041_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1041_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$34_scanhit
 xchain1041_n2_β:
 sub r12, 24
 jmp xchain1041_n1_β
# IR_MATCH_LIT
 xchain1041_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1041_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1041_n1_af
 add r14d, 1
 jmp xchain1041_n4_α
 xchain1041_n3_β:
 sub r14d, 1
 jmp xchain1041_n1_af
# IR_MATCH_BAL
 xchain1041_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1041_n4_β:
.Lx1051_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1051_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1051_1
 add edx, 1
 jmp .Lx1051_2
.Lx1051_1:
 cmp esi, 41
 jne .Lx1051_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1051_3
.Lx1051_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1051_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1041_n5_α
.Lx1051_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1041_n3_β
# IR_MATCH_LIT
 xchain1041_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1041_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1041_n4_β
 add r14d, 1
 jmp xchain1041_n1_as
 xchain1041_n5_β:
 sub r14d, 1
 jmp xchain1041_n4_β
proc_PAT$34_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$34_γ
proc_PAT$34_scanfail:
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
jmp proc_PAT$34_attempt
8:
jmp proc_PAT$34_ω
proc_PAT$34_res:
add rsp, 8
pop rbp
proc_PAT$34_β:
jmp qword ptr [rbp + 160]
proc_PAT$34_γ:
push rbp
lea rax, [rip + proc_PAT$34_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$34_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$35_α
proc_PAT$35_α:
#=======================================================================================================================
    .global proc_PAT$35_α
    .global proc_PAT$35_β
    .global proc_PAT$35_γ
    .global proc_PAT$35_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$35_attempt:
proc_PAT$35_α_body:
lea rax, [rip + xchain1054_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1054_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1054_n1_α
 xchain1054_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$35_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1054_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1057_0
 mov r8d, 0
 lea rcx, [rip + .Lx1057_4]
 lea rdx, [rip + .Lx1057_5]
 jmp rax
.Lx1057_4:
 jmp xchain1054_n2_α
.Lx1057_5:
 jmp xchain1054_n0_β
.Lx1057_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
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
 js xchain1054_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1057_6]
 sub rsp, 8
 push rax
 jmp xchain1054_n2_α
.Lx1057_6:
 add rsp, 16
 jmp xchain1054_n0_β
 xchain1054_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1054_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S35]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$35_scanhit
 xchain1054_n2_β:
 sub r12, 24
 jmp xchain1054_n1_β
proc_PAT$35_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$35_γ
proc_PAT$35_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$35_attempt
8:
jmp proc_PAT$35_ω
proc_PAT$35_res:
add rsp, 8
pop rbp
proc_PAT$35_β:
jmp qword ptr [rbp + 96]
proc_PAT$35_γ:
push rbp
lea rax, [rip + proc_PAT$35_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$35_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
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
lea rax, [rip + xchain1060_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1060_n0_α:
 mov rax, qword ptr [1879054896]
 mov rdx, qword ptr [1879054904]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1060_n1_α
# IR_COERCE_STRING
 xchain1060_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1060_n2_α
# IR_MATCH_SPAN
 xchain1060_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1065_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1065_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1065_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1065_0
.Lx1065_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1065_240
 add rsp, 16
 jmp proc_PAT$36_scanfail
.Lx1065_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$36_scanhit
 xchain1060_n2_β:
 xchain1060_n2_β:
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
lea rax, [rip + xchain1066_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1066_n0_α:
 mov rax, qword ptr [1879054928]
 mov rdx, qword ptr [1879054936]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1066_n1_α
 xchain1066_n0_β:
 jmp proc_PAT$37_scanfail
# IR_COERCE_STRING
 xchain1066_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1066_n2_α
 xchain1066_n1_β:
 jmp proc_PAT$37_scanfail
# IR_VAR
 xchain1066_n2_α:
 mov rax, qword ptr [1879054912]
 mov rdx, qword ptr [1879054920]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1066_n3_α
 xchain1066_n2_β:
 jmp proc_PAT$37_scanfail
# IR_COERCE_STRING
 xchain1066_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1066_n4_α
 xchain1066_n3_β:
 jmp proc_PAT$37_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1066_n4_α:
 jmp xchain1066_n5_α
xchain1066_n4_as:
 jmp proc_PAT$37_γ
 xchain1066_n4_β:
 jmp xchain1066_n6_β
xchain1066_n4_af:
 jmp proc_PAT$37_ω
# IR_MATCH_NOTANY
 xchain1066_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1066_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1066_n4_af
 add r14d, 1
 jmp xchain1066_n6_α
 xchain1066_n5_β:
 sub r14d, 1
 jmp xchain1066_n4_af
# IR_MATCH_BREAK
 xchain1066_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1077_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1077_240
 add rsp, 16
 jmp xchain1066_n5_β
.Lx1077_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1077_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1077_0
.Lx1077_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1066_n4_as
 xchain1066_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1066_n5_β
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
lea rax, [rip + xchain1078_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1078_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1078_n1_α
xchain1078_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1078_n2_α
 cmp eax, 2
 je xchain1078_n4_α
 cmp eax, 3
 je xchain1078_n6_α
 cmp eax, 4
 je xchain1078_n7_α
 cmp eax, 5
 je xchain1078_n9_α
 jmp proc_PAT$38_γ
 xchain1078_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1078_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1078_n1_β
 cmp eax, 1
 je xchain1078_n3_β
 cmp eax, 2
 je xchain1078_n5_β
 cmp eax, 3
 je xchain1078_n6_β
 cmp eax, 4
 je xchain1078_n8_β
 cmp eax, 5
 je xchain1078_n9_β
 jmp proc_PAT$38_ω
# IR_MATCH_LIT
 xchain1078_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1078_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1078_n0_af
 add r14d, 1
 jmp xchain1078_n0_as
 xchain1078_n1_β:
 sub r14d, 1
 jmp xchain1078_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1078_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1078_n10_α
 xchain1078_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1078_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1078_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1078_n0_as
 xchain1078_n3_β:
 sub r12, 24
 jmp xchain1078_n10_β
# IR_LIT_STRING
 xchain1078_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1087_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1078_n11_α
 xchain1078_n4_β:
 jmp xchain1078_n0_af
.Lx1087_0:
 .quad .Lx1087_0_s
.Lx1087_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1078_n5_α:
 mov rax, qword ptr [1879054944]
 mov rdx, qword ptr [1879054952]
 cmp eax, 3
 jne .Lx1088_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1088_10
.Lx1088_9:
 xor eax, eax
.Lx1088_10:
 test rax, rax
 jz .Lx1088_0
 mov r8d, 0
 lea rcx, [rip + .Lx1088_4]
 lea rdx, [rip + .Lx1088_5]
 jmp rax
.Lx1088_4:
 jmp xchain1078_n0_as
.Lx1088_5:
 jmp xchain1078_n0_af
.Lx1088_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S36]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1088_2:
 test rax, rax
 je .Lx1088_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1088_7]
 lea rdx, [rip + .Lx1088_8]
 jmp rax
.Lx1088_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1088_2
.Lx1088_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1088_2
.Lx1088_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1078_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1088_6]
 sub rsp, 8
 push rax
 jmp xchain1078_n0_as
.Lx1088_6:
 add rsp, 16
 jmp xchain1078_n0_af
 xchain1078_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1078_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1078_n0_as
 xchain1078_n6_β:
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
 jmp xchain1078_n12_α
xchain1078_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1078_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1078_n0_as
xchain1078_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1090_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1078_n12_β
.Lx1090_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1078_n0_af
 xchain1078_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1092_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1092_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1092_6]
 lea rdx, [rip + .Lx1092_7]
 jmp rax
.Lx1092_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1092_2
.Lx1092_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1092_2
.Lx1092_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1092_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1092_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1092_3]
 lea rdx, [rip + .Lx1092_4]
 jmp rax
.Lx1092_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1092_2
.Lx1092_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1092_2
.Lx1092_1:
 call rt_faildescr@PLT
.Lx1092_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1078_n0_af
 jmp xchain1078_n14_α
 xchain1078_n7_β:
 jmp xchain1078_n0_af
.Lx1092_0:
 .quad .Lx1092_0_s
.Lx1092_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1078_n8_α:
 mov rax, qword ptr [1879054976]
 mov rdx, qword ptr [1879054984]
 cmp eax, 3
 jne .Lx1093_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1093_10
.Lx1093_9:
 xor eax, eax
.Lx1093_10:
 test rax, rax
 jz .Lx1093_0
 mov r8d, 0
 lea rcx, [rip + .Lx1093_4]
 lea rdx, [rip + .Lx1093_5]
 jmp rax
.Lx1093_4:
 jmp xchain1078_n0_as
.Lx1093_5:
 jmp xchain1078_n0_af
.Lx1093_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S37]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1093_2:
 test rax, rax
 je .Lx1093_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1093_7]
 lea rdx, [rip + .Lx1093_8]
 jmp rax
.Lx1093_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1093_2
.Lx1093_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1093_2
.Lx1093_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1078_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1093_6]
 sub rsp, 8
 push rax
 jmp xchain1078_n0_as
.Lx1093_6:
 add rsp, 16
 jmp xchain1078_n0_af
 xchain1078_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1078_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1078_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1078_n0_af
 add r14d, 1
 jmp xchain1078_n0_as
 xchain1078_n9_β:
 sub r14d, 1
 jmp xchain1078_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1078_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1096_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1096_10
.Lx1096_9:
 xor eax, eax
.Lx1096_10:
 test rax, rax
 jz .Lx1096_0
 mov r8d, 0
 lea rcx, [rip + .Lx1096_4]
 lea rdx, [rip + .Lx1096_5]
 jmp rax
.Lx1096_4:
 jmp xchain1078_n3_α
.Lx1096_5:
 jmp xchain1078_n2_β
.Lx1096_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1096_2:
 test rax, rax
 je .Lx1096_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1096_7]
 lea rdx, [rip + .Lx1096_8]
 jmp rax
.Lx1096_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1096_2
.Lx1096_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1096_2
.Lx1096_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1078_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1096_6]
 sub rsp, 8
 push rax
 jmp xchain1078_n3_α
.Lx1096_6:
 add rsp, 16
 jmp xchain1078_n2_β
 xchain1078_n10_β:
 jmp qword ptr [rsp]
 xchain1078_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1098_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1098_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1098_6]
 lea rdx, [rip + .Lx1098_7]
 jmp rax
.Lx1098_6:
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
 jmp .Lx1098_2
.Lx1098_7:
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
 jmp .Lx1098_2
.Lx1098_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1098_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1098_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1098_3]
 lea rdx, [rip + .Lx1098_4]
 jmp rax
.Lx1098_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1098_2
.Lx1098_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1098_2
.Lx1098_1:
 call rt_faildescr@PLT
.Lx1098_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1078_n0_af
 jmp xchain1078_n15_α
 xchain1078_n11_β:
 jmp xchain1078_n0_af
.Lx1098_0:
 .quad .Lx1098_0_s
.Lx1098_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1078_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1078_n16_α
xchain1078_n12_as:
 jmp xchain1078_n6_as
 xchain1078_n12_β:
 jmp xchain1078_n17_β
xchain1078_n12_af:
 jmp xchain1078_n6_af
# IR_LIT_STRING
 xchain1078_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1101_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1078_n18_α
 xchain1078_n13_β:
 jmp xchain1078_n20_af
.Lx1101_0:
 .quad .Lx1101_0_s
.Lx1101_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1078_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054976], rax
 mov qword ptr [1879054984], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1078_n8_α
# IR_ASSIGN gva
 xchain1078_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879054944], rax
 mov qword ptr [1879054952], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1078_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1078_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1104_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1104_10
.Lx1104_9:
 xor eax, eax
.Lx1104_10:
 test rax, rax
 jz .Lx1104_0
 mov r8d, 0
 lea rcx, [rip + .Lx1104_4]
 lea rdx, [rip + .Lx1104_5]
 jmp rax
.Lx1104_4:
 jmp xchain1078_n17_α
.Lx1104_5:
 jmp xchain1078_n12_af
.Lx1104_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1104_2:
 test rax, rax
 je .Lx1104_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1104_7]
 lea rdx, [rip + .Lx1104_8]
 jmp rax
.Lx1104_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1104_2
.Lx1104_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1104_2
.Lx1104_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1078_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1104_6]
 sub rsp, 8
 push rax
 jmp xchain1078_n17_α
.Lx1104_6:
 add rsp, 16
 jmp xchain1078_n12_af
 xchain1078_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1078_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1078_n19_α
xchain1078_n17_as:
 jmp xchain1078_n12_as
 xchain1078_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1078_n19_β
 jmp xchain1078_n20_β
xchain1078_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1078_n20_α
 jmp xchain1078_n16_β
 xchain1078_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1108_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1108_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1108_6]
 lea rdx, [rip + .Lx1108_7]
 jmp rax
.Lx1108_6:
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
 jmp .Lx1108_2
.Lx1108_7:
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
 jmp .Lx1108_2
.Lx1108_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1108_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1108_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1108_3]
 lea rdx, [rip + .Lx1108_4]
 jmp rax
.Lx1108_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1108_2
.Lx1108_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1108_2
.Lx1108_1:
 call rt_faildescr@PLT
.Lx1108_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1078_n20_af
 jmp xchain1078_n21_α
 xchain1078_n18_β:
 jmp xchain1078_n20_af
.Lx1108_0:
 .quad .Lx1108_0_s
.Lx1108_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1078_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1109_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1109_10
.Lx1109_9:
 xor eax, eax
.Lx1109_10:
 test rax, rax
 jz .Lx1109_0
 mov r8d, 0
 lea rcx, [rip + .Lx1109_4]
 lea rdx, [rip + .Lx1109_5]
 jmp rax
.Lx1109_4:
 jmp xchain1078_n17_as
.Lx1109_5:
 jmp xchain1078_n17_af
.Lx1109_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1109_2:
 test rax, rax
 je .Lx1109_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1109_7]
 lea rdx, [rip + .Lx1109_8]
 jmp rax
.Lx1109_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1109_2
.Lx1109_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1109_2
.Lx1109_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1078_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1109_6]
 sub rsp, 8
 push rax
 jmp xchain1078_n17_as
.Lx1109_6:
 add rsp, 16
 jmp xchain1078_n17_af
 xchain1078_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1078_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1078_n22_α
xchain1078_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1078_n13_α
 jmp xchain1078_n17_as
 xchain1078_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1078_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1078_n23_β
 cmp eax, 1
 je xchain1078_n24_β
 jmp xchain1078_n17_af
# IR_ASSIGN gva
 xchain1078_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054960], rax
 mov qword ptr [1879054968], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1078_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1078_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1078_n25_α
 xchain1078_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1078_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1078_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1078_n20_as
 xchain1078_n23_β:
 sub r12, 24
 jmp xchain1078_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1078_n24_α:
 mov rax, qword ptr [1879054960]
 mov rdx, qword ptr [1879054968]
 cmp eax, 3
 jne .Lx1117_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1117_10
.Lx1117_9:
 xor eax, eax
.Lx1117_10:
 test rax, rax
 jz .Lx1117_0
 mov r8d, 0
 lea rcx, [rip + .Lx1117_4]
 lea rdx, [rip + .Lx1117_5]
 jmp rax
.Lx1117_4:
 jmp xchain1078_n20_as
.Lx1117_5:
 jmp xchain1078_n20_af
.Lx1117_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S38]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1117_2:
 test rax, rax
 je .Lx1117_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1117_7]
 lea rdx, [rip + .Lx1117_8]
 jmp rax
.Lx1117_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1117_2
.Lx1117_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1117_2
.Lx1117_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1078_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1117_6]
 sub rsp, 8
 push rax
 jmp xchain1078_n20_as
.Lx1117_6:
 add rsp, 16
 jmp xchain1078_n20_af
 xchain1078_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1078_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
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
 jmp xchain1078_n23_α
.Lx1118_5:
 jmp xchain1078_n22_β
.Lx1118_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
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
 js xchain1078_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1118_6]
 sub rsp, 8
 push rax
 jmp xchain1078_n23_α
.Lx1118_6:
 add rsp, 16
 jmp xchain1078_n22_β
 xchain1078_n25_β:
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
lea rax, [rip + xchain1119_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1119_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1119_n1_α
 xchain1119_n0_β:
 add rsp, 16
 jmp proc_PAT$39_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1119_n1_α:
 jmp xchain1119_n3_α
xchain1119_n1_as:
 jmp xchain1119_n2_α
 xchain1119_n1_β:
 jmp xchain1119_n5_β
xchain1119_n1_af:
 jmp xchain1119_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1119_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$39_scanhit
 xchain1119_n2_β:
 sub r12, 24
 jmp xchain1119_n1_β
# IR_MATCH_LIT
 xchain1119_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1119_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1119_n1_af
 add r14d, 1
 jmp xchain1119_n4_α
 xchain1119_n3_β:
 sub r14d, 1
 jmp xchain1119_n1_af
# IR_MATCH_BAL
 xchain1119_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1119_n4_β:
.Lx1129_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1129_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1129_1
 add edx, 1
 jmp .Lx1129_2
.Lx1129_1:
 cmp esi, 41
 jne .Lx1129_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1129_3
.Lx1129_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1129_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1119_n5_α
.Lx1129_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1119_n3_β
# IR_MATCH_LIT
 xchain1119_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1119_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1119_n4_β
 add r14d, 1
 jmp xchain1119_n1_as
 xchain1119_n5_β:
 sub r14d, 1
 jmp xchain1119_n4_β
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
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$40_attempt:
proc_PAT$40_α_body:
lea rax, [rip + xchain1132_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1132_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1132_n1_α
 xchain1132_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$40_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1132_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1135_0
 mov r8d, 0
 lea rcx, [rip + .Lx1135_4]
 lea rdx, [rip + .Lx1135_5]
 jmp rax
.Lx1135_4:
 jmp xchain1132_n2_α
.Lx1135_5:
 jmp xchain1132_n0_β
.Lx1135_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1135_2:
 test rax, rax
 je .Lx1135_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1135_7]
 lea rdx, [rip + .Lx1135_8]
 jmp rax
.Lx1135_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1135_2
.Lx1135_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1135_2
.Lx1135_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1132_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1135_6]
 sub rsp, 8
 push rax
 jmp xchain1132_n2_α
.Lx1135_6:
 add rsp, 16
 jmp xchain1132_n0_β
 xchain1132_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1132_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S39]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$40_scanhit
 xchain1132_n2_β:
 sub r12, 24
 jmp xchain1132_n1_β
proc_PAT$40_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$40_γ
proc_PAT$40_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$40_attempt
8:
jmp proc_PAT$40_ω
proc_PAT$40_res:
add rsp, 8
pop rbp
proc_PAT$40_β:
jmp qword ptr [rbp + 96]
proc_PAT$40_γ:
push rbp
lea rax, [rip + proc_PAT$40_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$40_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$41_α
proc_PAT$41_α:
#=======================================================================================================================
    .global proc_PAT$41_α
    .global proc_PAT$41_β
    .global proc_PAT$41_γ
    .global proc_PAT$41_ω
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
proc_PAT$41_attempt:
proc_PAT$41_α_body:
lea rax, [rip + xchain1138_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1138_n0_α:
 mov rax, qword ptr [1879054992]
 mov rdx, qword ptr [1879055000]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1138_n1_α
# IR_COERCE_STRING
 xchain1138_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1138_n2_α
# IR_MATCH_SPAN
 xchain1138_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1143_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1143_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1143_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1143_0
.Lx1143_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1143_240
 add rsp, 16
 jmp proc_PAT$41_scanfail
.Lx1143_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$41_scanhit
 xchain1138_n2_β:
 xchain1138_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$41_scanfail
proc_PAT$41_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$41_γ
proc_PAT$41_scanfail:
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
jmp proc_PAT$41_attempt
8:
jmp proc_PAT$41_ω
proc_PAT$41_res:
add rsp, 8
pop rbp
proc_PAT$41_β:
jmp qword ptr [rbp + 112]
proc_PAT$41_γ:
push rbp
lea rax, [rip + proc_PAT$41_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$41_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$42_α
proc_PAT$42_α:
#=======================================================================================================================
    .global proc_PAT$42_α
    .global proc_PAT$42_β
    .global proc_PAT$42_γ
    .global proc_PAT$42_ω
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
proc_PAT$42_attempt:
proc_PAT$42_α_body:
lea rax, [rip + xchain1144_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1144_n0_α:
 mov rax, qword ptr [1879055024]
 mov rdx, qword ptr [1879055032]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1144_n1_α
 xchain1144_n0_β:
 jmp proc_PAT$42_scanfail
# IR_COERCE_STRING
 xchain1144_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1144_n2_α
 xchain1144_n1_β:
 jmp proc_PAT$42_scanfail
# IR_VAR
 xchain1144_n2_α:
 mov rax, qword ptr [1879055008]
 mov rdx, qword ptr [1879055016]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1144_n3_α
 xchain1144_n2_β:
 jmp proc_PAT$42_scanfail
# IR_COERCE_STRING
 xchain1144_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1144_n4_α
 xchain1144_n3_β:
 jmp proc_PAT$42_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1144_n4_α:
 jmp xchain1144_n5_α
xchain1144_n4_as:
 jmp proc_PAT$42_γ
 xchain1144_n4_β:
 jmp xchain1144_n6_β
xchain1144_n4_af:
 jmp proc_PAT$42_ω
# IR_MATCH_NOTANY
 xchain1144_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1144_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1144_n4_af
 add r14d, 1
 jmp xchain1144_n6_α
 xchain1144_n5_β:
 sub r14d, 1
 jmp xchain1144_n4_af
# IR_MATCH_BREAK
 xchain1144_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1155_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1155_240
 add rsp, 16
 jmp xchain1144_n5_β
.Lx1155_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1155_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1155_0
.Lx1155_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1144_n4_as
 xchain1144_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1144_n5_β
proc_PAT$42_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$42_γ
proc_PAT$42_scanfail:
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
jmp proc_PAT$42_attempt
8:
jmp proc_PAT$42_ω
proc_PAT$42_res:
add rsp, 8
pop rbp
proc_PAT$42_β:
jmp qword ptr [rbp + 224]
proc_PAT$42_γ:
push rbp
lea rax, [rip + proc_PAT$42_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$42_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$43_α
proc_PAT$43_α:
#=======================================================================================================================
    .global proc_PAT$43_α
    .global proc_PAT$43_β
    .global proc_PAT$43_γ
    .global proc_PAT$43_ω
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
proc_PAT$43_attempt:
proc_PAT$43_α_body:
lea rax, [rip + xchain1156_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1156_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1156_n1_α
xchain1156_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1156_n2_α
 cmp eax, 2
 je xchain1156_n4_α
 cmp eax, 3
 je xchain1156_n6_α
 cmp eax, 4
 je xchain1156_n7_α
 cmp eax, 5
 je xchain1156_n9_α
 jmp proc_PAT$43_γ
 xchain1156_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1156_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1156_n1_β
 cmp eax, 1
 je xchain1156_n3_β
 cmp eax, 2
 je xchain1156_n5_β
 cmp eax, 3
 je xchain1156_n6_β
 cmp eax, 4
 je xchain1156_n8_β
 cmp eax, 5
 je xchain1156_n9_β
 jmp proc_PAT$43_ω
# IR_MATCH_LIT
 xchain1156_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1156_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1156_n0_af
 add r14d, 1
 jmp xchain1156_n0_as
 xchain1156_n1_β:
 sub r14d, 1
 jmp xchain1156_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1156_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1156_n10_α
 xchain1156_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1156_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1156_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1156_n0_as
 xchain1156_n3_β:
 sub r12, 24
 jmp xchain1156_n10_β
# IR_LIT_STRING
 xchain1156_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1165_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1156_n11_α
 xchain1156_n4_β:
 jmp xchain1156_n0_af
.Lx1165_0:
 .quad .Lx1165_0_s
.Lx1165_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1156_n5_α:
 mov rax, qword ptr [1879055040]
 mov rdx, qword ptr [1879055048]
 cmp eax, 3
 jne .Lx1166_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1166_10
.Lx1166_9:
 xor eax, eax
.Lx1166_10:
 test rax, rax
 jz .Lx1166_0
 mov r8d, 0
 lea rcx, [rip + .Lx1166_4]
 lea rdx, [rip + .Lx1166_5]
 jmp rax
.Lx1166_4:
 jmp xchain1156_n0_as
.Lx1166_5:
 jmp xchain1156_n0_af
.Lx1166_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S40]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1166_2:
 test rax, rax
 je .Lx1166_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1166_7]
 lea rdx, [rip + .Lx1166_8]
 jmp rax
.Lx1166_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1166_2
.Lx1166_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1166_2
.Lx1166_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1156_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1166_6]
 sub rsp, 8
 push rax
 jmp xchain1156_n0_as
.Lx1166_6:
 add rsp, 16
 jmp xchain1156_n0_af
 xchain1156_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1156_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1156_n0_as
 xchain1156_n6_β:
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
 jmp xchain1156_n12_α
xchain1156_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1156_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1156_n0_as
xchain1156_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1168_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1156_n12_β
.Lx1168_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1156_n0_af
 xchain1156_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1170_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1170_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1170_6]
 lea rdx, [rip + .Lx1170_7]
 jmp rax
.Lx1170_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1170_2
.Lx1170_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1170_2
.Lx1170_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1170_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1170_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1170_3]
 lea rdx, [rip + .Lx1170_4]
 jmp rax
.Lx1170_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1170_2
.Lx1170_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1170_2
.Lx1170_1:
 call rt_faildescr@PLT
.Lx1170_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1156_n0_af
 jmp xchain1156_n14_α
 xchain1156_n7_β:
 jmp xchain1156_n0_af
.Lx1170_0:
 .quad .Lx1170_0_s
.Lx1170_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1156_n8_α:
 mov rax, qword ptr [1879055072]
 mov rdx, qword ptr [1879055080]
 cmp eax, 3
 jne .Lx1171_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1171_10
.Lx1171_9:
 xor eax, eax
.Lx1171_10:
 test rax, rax
 jz .Lx1171_0
 mov r8d, 0
 lea rcx, [rip + .Lx1171_4]
 lea rdx, [rip + .Lx1171_5]
 jmp rax
.Lx1171_4:
 jmp xchain1156_n0_as
.Lx1171_5:
 jmp xchain1156_n0_af
.Lx1171_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S41]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1171_2:
 test rax, rax
 je .Lx1171_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1171_7]
 lea rdx, [rip + .Lx1171_8]
 jmp rax
.Lx1171_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1171_2
.Lx1171_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1171_2
.Lx1171_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1156_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1171_6]
 sub rsp, 8
 push rax
 jmp xchain1156_n0_as
.Lx1171_6:
 add rsp, 16
 jmp xchain1156_n0_af
 xchain1156_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1156_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1156_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1156_n0_af
 add r14d, 1
 jmp xchain1156_n0_as
 xchain1156_n9_β:
 sub r14d, 1
 jmp xchain1156_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1156_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1174_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1174_10
.Lx1174_9:
 xor eax, eax
.Lx1174_10:
 test rax, rax
 jz .Lx1174_0
 mov r8d, 0
 lea rcx, [rip + .Lx1174_4]
 lea rdx, [rip + .Lx1174_5]
 jmp rax
.Lx1174_4:
 jmp xchain1156_n3_α
.Lx1174_5:
 jmp xchain1156_n2_β
.Lx1174_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1174_2:
 test rax, rax
 je .Lx1174_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1174_7]
 lea rdx, [rip + .Lx1174_8]
 jmp rax
.Lx1174_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1174_2
.Lx1174_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1174_2
.Lx1174_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1156_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1174_6]
 sub rsp, 8
 push rax
 jmp xchain1156_n3_α
.Lx1174_6:
 add rsp, 16
 jmp xchain1156_n2_β
 xchain1156_n10_β:
 jmp qword ptr [rsp]
 xchain1156_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1176_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1176_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1176_6]
 lea rdx, [rip + .Lx1176_7]
 jmp rax
.Lx1176_6:
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
 jmp .Lx1176_2
.Lx1176_7:
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
 jmp .Lx1176_2
.Lx1176_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1176_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1176_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1176_3]
 lea rdx, [rip + .Lx1176_4]
 jmp rax
.Lx1176_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1176_2
.Lx1176_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1176_2
.Lx1176_1:
 call rt_faildescr@PLT
.Lx1176_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1156_n0_af
 jmp xchain1156_n15_α
 xchain1156_n11_β:
 jmp xchain1156_n0_af
.Lx1176_0:
 .quad .Lx1176_0_s
.Lx1176_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1156_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1156_n16_α
xchain1156_n12_as:
 jmp xchain1156_n6_as
 xchain1156_n12_β:
 jmp xchain1156_n17_β
xchain1156_n12_af:
 jmp xchain1156_n6_af
# IR_LIT_STRING
 xchain1156_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1179_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1156_n18_α
 xchain1156_n13_β:
 jmp xchain1156_n20_af
.Lx1179_0:
 .quad .Lx1179_0_s
.Lx1179_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1156_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055072], rax
 mov qword ptr [1879055080], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1156_n8_α
# IR_ASSIGN gva
 xchain1156_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055040], rax
 mov qword ptr [1879055048], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1156_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1156_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1182_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1182_10
.Lx1182_9:
 xor eax, eax
.Lx1182_10:
 test rax, rax
 jz .Lx1182_0
 mov r8d, 0
 lea rcx, [rip + .Lx1182_4]
 lea rdx, [rip + .Lx1182_5]
 jmp rax
.Lx1182_4:
 jmp xchain1156_n17_α
.Lx1182_5:
 jmp xchain1156_n12_af
.Lx1182_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1182_2:
 test rax, rax
 je .Lx1182_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1182_7]
 lea rdx, [rip + .Lx1182_8]
 jmp rax
.Lx1182_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1182_2
.Lx1182_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1182_2
.Lx1182_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1156_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1182_6]
 sub rsp, 8
 push rax
 jmp xchain1156_n17_α
.Lx1182_6:
 add rsp, 16
 jmp xchain1156_n12_af
 xchain1156_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1156_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1156_n19_α
xchain1156_n17_as:
 jmp xchain1156_n12_as
 xchain1156_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1156_n19_β
 jmp xchain1156_n20_β
xchain1156_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1156_n20_α
 jmp xchain1156_n16_β
 xchain1156_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1186_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1186_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1186_6]
 lea rdx, [rip + .Lx1186_7]
 jmp rax
.Lx1186_6:
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
 jmp .Lx1186_2
.Lx1186_7:
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
 jmp .Lx1186_2
.Lx1186_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1186_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1186_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1186_3]
 lea rdx, [rip + .Lx1186_4]
 jmp rax
.Lx1186_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1186_2
.Lx1186_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1186_2
.Lx1186_1:
 call rt_faildescr@PLT
.Lx1186_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1156_n20_af
 jmp xchain1156_n21_α
 xchain1156_n18_β:
 jmp xchain1156_n20_af
.Lx1186_0:
 .quad .Lx1186_0_s
.Lx1186_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1156_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1187_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1187_10
.Lx1187_9:
 xor eax, eax
.Lx1187_10:
 test rax, rax
 jz .Lx1187_0
 mov r8d, 0
 lea rcx, [rip + .Lx1187_4]
 lea rdx, [rip + .Lx1187_5]
 jmp rax
.Lx1187_4:
 jmp xchain1156_n17_as
.Lx1187_5:
 jmp xchain1156_n17_af
.Lx1187_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1187_2:
 test rax, rax
 je .Lx1187_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1187_7]
 lea rdx, [rip + .Lx1187_8]
 jmp rax
.Lx1187_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1187_2
.Lx1187_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1187_2
.Lx1187_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1156_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1187_6]
 sub rsp, 8
 push rax
 jmp xchain1156_n17_as
.Lx1187_6:
 add rsp, 16
 jmp xchain1156_n17_af
 xchain1156_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1156_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1156_n22_α
xchain1156_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1156_n13_α
 jmp xchain1156_n17_as
 xchain1156_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1156_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1156_n23_β
 cmp eax, 1
 je xchain1156_n24_β
 jmp xchain1156_n17_af
# IR_ASSIGN gva
 xchain1156_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055056], rax
 mov qword ptr [1879055064], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1156_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1156_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1156_n25_α
 xchain1156_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1156_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1156_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1156_n20_as
 xchain1156_n23_β:
 sub r12, 24
 jmp xchain1156_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1156_n24_α:
 mov rax, qword ptr [1879055056]
 mov rdx, qword ptr [1879055064]
 cmp eax, 3
 jne .Lx1195_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1195_10
.Lx1195_9:
 xor eax, eax
.Lx1195_10:
 test rax, rax
 jz .Lx1195_0
 mov r8d, 0
 lea rcx, [rip + .Lx1195_4]
 lea rdx, [rip + .Lx1195_5]
 jmp rax
.Lx1195_4:
 jmp xchain1156_n20_as
.Lx1195_5:
 jmp xchain1156_n20_af
.Lx1195_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S42]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1195_2:
 test rax, rax
 je .Lx1195_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1195_7]
 lea rdx, [rip + .Lx1195_8]
 jmp rax
.Lx1195_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1195_2
.Lx1195_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1195_2
.Lx1195_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1156_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1195_6]
 sub rsp, 8
 push rax
 jmp xchain1156_n20_as
.Lx1195_6:
 add rsp, 16
 jmp xchain1156_n20_af
 xchain1156_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1156_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1196_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1196_10
.Lx1196_9:
 xor eax, eax
.Lx1196_10:
 test rax, rax
 jz .Lx1196_0
 mov r8d, 0
 lea rcx, [rip + .Lx1196_4]
 lea rdx, [rip + .Lx1196_5]
 jmp rax
.Lx1196_4:
 jmp xchain1156_n23_α
.Lx1196_5:
 jmp xchain1156_n22_β
.Lx1196_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1196_2:
 test rax, rax
 je .Lx1196_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1196_7]
 lea rdx, [rip + .Lx1196_8]
 jmp rax
.Lx1196_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1196_2
.Lx1196_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1196_2
.Lx1196_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1156_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1196_6]
 sub rsp, 8
 push rax
 jmp xchain1156_n23_α
.Lx1196_6:
 add rsp, 16
 jmp xchain1156_n22_β
 xchain1156_n25_β:
 jmp qword ptr [rsp]
proc_PAT$43_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$43_γ
proc_PAT$43_scanfail:
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
jmp proc_PAT$43_attempt
8:
jmp proc_PAT$43_ω
proc_PAT$43_res:
add rsp, 8
pop rbp
proc_PAT$43_β:
jmp qword ptr [rbp + 784]
proc_PAT$43_γ:
push rbp
lea rax, [rip + proc_PAT$43_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$43_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
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
lea rax, [rip + xchain1197_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1197_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1197_n1_α
 xchain1197_n0_β:
 add rsp, 16
 jmp proc_PAT$44_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1197_n1_α:
 jmp xchain1197_n3_α
xchain1197_n1_as:
 jmp xchain1197_n2_α
 xchain1197_n1_β:
 jmp xchain1197_n5_β
xchain1197_n1_af:
 jmp xchain1197_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1197_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$44_scanhit
 xchain1197_n2_β:
 sub r12, 24
 jmp xchain1197_n1_β
# IR_MATCH_LIT
 xchain1197_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1197_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1197_n1_af
 add r14d, 1
 jmp xchain1197_n4_α
 xchain1197_n3_β:
 sub r14d, 1
 jmp xchain1197_n1_af
# IR_MATCH_BAL
 xchain1197_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1197_n4_β:
.Lx1207_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1207_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1207_1
 add edx, 1
 jmp .Lx1207_2
.Lx1207_1:
 cmp esi, 41
 jne .Lx1207_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1207_3
.Lx1207_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1207_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1197_n5_α
.Lx1207_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1197_n3_β
# IR_MATCH_LIT
 xchain1197_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1197_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1197_n4_β
 add r14d, 1
 jmp xchain1197_n1_as
 xchain1197_n5_β:
 sub r14d, 1
 jmp xchain1197_n4_β
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
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$45_attempt:
proc_PAT$45_α_body:
lea rax, [rip + xchain1210_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1210_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1210_n1_α
 xchain1210_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$45_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1210_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1213_0
 mov r8d, 0
 lea rcx, [rip + .Lx1213_4]
 lea rdx, [rip + .Lx1213_5]
 jmp rax
.Lx1213_4:
 jmp xchain1210_n2_α
.Lx1213_5:
 jmp xchain1210_n0_β
.Lx1213_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1213_2:
 test rax, rax
 je .Lx1213_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1213_7]
 lea rdx, [rip + .Lx1213_8]
 jmp rax
.Lx1213_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1213_2
.Lx1213_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1213_2
.Lx1213_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1210_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1213_6]
 sub rsp, 8
 push rax
 jmp xchain1210_n2_α
.Lx1213_6:
 add rsp, 16
 jmp xchain1210_n0_β
 xchain1210_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1210_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S43]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$45_scanhit
 xchain1210_n2_β:
 sub r12, 24
 jmp xchain1210_n1_β
proc_PAT$45_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$45_γ
proc_PAT$45_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$45_attempt
8:
jmp proc_PAT$45_ω
proc_PAT$45_res:
add rsp, 8
pop rbp
proc_PAT$45_β:
jmp qword ptr [rbp + 96]
proc_PAT$45_γ:
push rbp
lea rax, [rip + proc_PAT$45_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$45_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$46_α
proc_PAT$46_α:
#=======================================================================================================================
    .global proc_PAT$46_α
    .global proc_PAT$46_β
    .global proc_PAT$46_γ
    .global proc_PAT$46_ω
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
proc_PAT$46_attempt:
proc_PAT$46_α_body:
lea rax, [rip + xchain1216_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1216_n0_α:
 mov rax, qword ptr [1879055088]
 mov rdx, qword ptr [1879055096]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1216_n1_α
# IR_COERCE_STRING
 xchain1216_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1216_n2_α
# IR_MATCH_SPAN
 xchain1216_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1221_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1221_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1221_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1221_0
.Lx1221_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1221_240
 add rsp, 16
 jmp proc_PAT$46_scanfail
.Lx1221_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$46_scanhit
 xchain1216_n2_β:
 xchain1216_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$46_scanfail
proc_PAT$46_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$46_γ
proc_PAT$46_scanfail:
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
jmp proc_PAT$46_attempt
8:
jmp proc_PAT$46_ω
proc_PAT$46_res:
add rsp, 8
pop rbp
proc_PAT$46_β:
jmp qword ptr [rbp + 112]
proc_PAT$46_γ:
push rbp
lea rax, [rip + proc_PAT$46_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$46_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$47_α
proc_PAT$47_α:
#=======================================================================================================================
    .global proc_PAT$47_α
    .global proc_PAT$47_β
    .global proc_PAT$47_γ
    .global proc_PAT$47_ω
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
proc_PAT$47_attempt:
proc_PAT$47_α_body:
lea rax, [rip + xchain1222_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1222_n0_α:
 mov rax, qword ptr [1879055120]
 mov rdx, qword ptr [1879055128]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1222_n1_α
 xchain1222_n0_β:
 jmp proc_PAT$47_scanfail
# IR_COERCE_STRING
 xchain1222_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1222_n2_α
 xchain1222_n1_β:
 jmp proc_PAT$47_scanfail
# IR_VAR
 xchain1222_n2_α:
 mov rax, qword ptr [1879055104]
 mov rdx, qword ptr [1879055112]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1222_n3_α
 xchain1222_n2_β:
 jmp proc_PAT$47_scanfail
# IR_COERCE_STRING
 xchain1222_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1222_n4_α
 xchain1222_n3_β:
 jmp proc_PAT$47_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1222_n4_α:
 jmp xchain1222_n5_α
xchain1222_n4_as:
 jmp proc_PAT$47_γ
 xchain1222_n4_β:
 jmp xchain1222_n6_β
xchain1222_n4_af:
 jmp proc_PAT$47_ω
# IR_MATCH_NOTANY
 xchain1222_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1222_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1222_n4_af
 add r14d, 1
 jmp xchain1222_n6_α
 xchain1222_n5_β:
 sub r14d, 1
 jmp xchain1222_n4_af
# IR_MATCH_BREAK
 xchain1222_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1233_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1233_240
 add rsp, 16
 jmp xchain1222_n5_β
.Lx1233_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1233_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1233_0
.Lx1233_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1222_n4_as
 xchain1222_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1222_n5_β
proc_PAT$47_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$47_γ
proc_PAT$47_scanfail:
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
jmp proc_PAT$47_attempt
8:
jmp proc_PAT$47_ω
proc_PAT$47_res:
add rsp, 8
pop rbp
proc_PAT$47_β:
jmp qword ptr [rbp + 224]
proc_PAT$47_γ:
push rbp
lea rax, [rip + proc_PAT$47_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$47_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$48_α
proc_PAT$48_α:
#=======================================================================================================================
    .global proc_PAT$48_α
    .global proc_PAT$48_β
    .global proc_PAT$48_γ
    .global proc_PAT$48_ω
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
proc_PAT$48_attempt:
proc_PAT$48_α_body:
lea rax, [rip + xchain1234_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1234_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1234_n1_α
xchain1234_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1234_n2_α
 cmp eax, 2
 je xchain1234_n4_α
 cmp eax, 3
 je xchain1234_n6_α
 cmp eax, 4
 je xchain1234_n7_α
 cmp eax, 5
 je xchain1234_n9_α
 jmp proc_PAT$48_γ
 xchain1234_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1234_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1234_n1_β
 cmp eax, 1
 je xchain1234_n3_β
 cmp eax, 2
 je xchain1234_n5_β
 cmp eax, 3
 je xchain1234_n6_β
 cmp eax, 4
 je xchain1234_n8_β
 cmp eax, 5
 je xchain1234_n9_β
 jmp proc_PAT$48_ω
# IR_MATCH_LIT
 xchain1234_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1234_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1234_n0_af
 add r14d, 1
 jmp xchain1234_n0_as
 xchain1234_n1_β:
 sub r14d, 1
 jmp xchain1234_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1234_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1234_n10_α
 xchain1234_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1234_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1234_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1234_n0_as
 xchain1234_n3_β:
 sub r12, 24
 jmp xchain1234_n10_β
# IR_LIT_STRING
 xchain1234_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1243_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1234_n11_α
 xchain1234_n4_β:
 jmp xchain1234_n0_af
.Lx1243_0:
 .quad .Lx1243_0_s
.Lx1243_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1234_n5_α:
 mov rax, qword ptr [1879055136]
 mov rdx, qword ptr [1879055144]
 cmp eax, 3
 jne .Lx1244_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1244_10
.Lx1244_9:
 xor eax, eax
.Lx1244_10:
 test rax, rax
 jz .Lx1244_0
 mov r8d, 0
 lea rcx, [rip + .Lx1244_4]
 lea rdx, [rip + .Lx1244_5]
 jmp rax
.Lx1244_4:
 jmp xchain1234_n0_as
.Lx1244_5:
 jmp xchain1234_n0_af
.Lx1244_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S44]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1244_2:
 test rax, rax
 je .Lx1244_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1244_7]
 lea rdx, [rip + .Lx1244_8]
 jmp rax
.Lx1244_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1244_2
.Lx1244_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1244_2
.Lx1244_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1234_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1244_6]
 sub rsp, 8
 push rax
 jmp xchain1234_n0_as
.Lx1244_6:
 add rsp, 16
 jmp xchain1234_n0_af
 xchain1234_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1234_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1234_n0_as
 xchain1234_n6_β:
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
 jmp xchain1234_n12_α
xchain1234_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1234_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1234_n0_as
xchain1234_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1246_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1234_n12_β
.Lx1246_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1234_n0_af
 xchain1234_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1248_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1248_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1248_6]
 lea rdx, [rip + .Lx1248_7]
 jmp rax
.Lx1248_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1248_2
.Lx1248_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1248_2
.Lx1248_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1248_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1248_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1248_3]
 lea rdx, [rip + .Lx1248_4]
 jmp rax
.Lx1248_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1248_2
.Lx1248_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1248_2
.Lx1248_1:
 call rt_faildescr@PLT
.Lx1248_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1234_n0_af
 jmp xchain1234_n14_α
 xchain1234_n7_β:
 jmp xchain1234_n0_af
.Lx1248_0:
 .quad .Lx1248_0_s
.Lx1248_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1234_n8_α:
 mov rax, qword ptr [1879055168]
 mov rdx, qword ptr [1879055176]
 cmp eax, 3
 jne .Lx1249_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1249_10
.Lx1249_9:
 xor eax, eax
.Lx1249_10:
 test rax, rax
 jz .Lx1249_0
 mov r8d, 0
 lea rcx, [rip + .Lx1249_4]
 lea rdx, [rip + .Lx1249_5]
 jmp rax
.Lx1249_4:
 jmp xchain1234_n0_as
.Lx1249_5:
 jmp xchain1234_n0_af
.Lx1249_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S45]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1249_2:
 test rax, rax
 je .Lx1249_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1249_7]
 lea rdx, [rip + .Lx1249_8]
 jmp rax
.Lx1249_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1249_2
.Lx1249_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1249_2
.Lx1249_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1234_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1249_6]
 sub rsp, 8
 push rax
 jmp xchain1234_n0_as
.Lx1249_6:
 add rsp, 16
 jmp xchain1234_n0_af
 xchain1234_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1234_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1234_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1234_n0_af
 add r14d, 1
 jmp xchain1234_n0_as
 xchain1234_n9_β:
 sub r14d, 1
 jmp xchain1234_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1234_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1252_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1252_10
.Lx1252_9:
 xor eax, eax
.Lx1252_10:
 test rax, rax
 jz .Lx1252_0
 mov r8d, 0
 lea rcx, [rip + .Lx1252_4]
 lea rdx, [rip + .Lx1252_5]
 jmp rax
.Lx1252_4:
 jmp xchain1234_n3_α
.Lx1252_5:
 jmp xchain1234_n2_β
.Lx1252_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1252_2:
 test rax, rax
 je .Lx1252_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1252_7]
 lea rdx, [rip + .Lx1252_8]
 jmp rax
.Lx1252_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1252_2
.Lx1252_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1252_2
.Lx1252_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1234_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1252_6]
 sub rsp, 8
 push rax
 jmp xchain1234_n3_α
.Lx1252_6:
 add rsp, 16
 jmp xchain1234_n2_β
 xchain1234_n10_β:
 jmp qword ptr [rsp]
 xchain1234_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1254_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1254_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1254_6]
 lea rdx, [rip + .Lx1254_7]
 jmp rax
.Lx1254_6:
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
 jmp .Lx1254_2
.Lx1254_7:
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
 jmp .Lx1254_2
.Lx1254_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1254_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1254_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1254_3]
 lea rdx, [rip + .Lx1254_4]
 jmp rax
.Lx1254_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1254_2
.Lx1254_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1254_2
.Lx1254_1:
 call rt_faildescr@PLT
.Lx1254_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1234_n0_af
 jmp xchain1234_n15_α
 xchain1234_n11_β:
 jmp xchain1234_n0_af
.Lx1254_0:
 .quad .Lx1254_0_s
.Lx1254_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1234_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1234_n16_α
xchain1234_n12_as:
 jmp xchain1234_n6_as
 xchain1234_n12_β:
 jmp xchain1234_n17_β
xchain1234_n12_af:
 jmp xchain1234_n6_af
# IR_LIT_STRING
 xchain1234_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1257_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1234_n18_α
 xchain1234_n13_β:
 jmp xchain1234_n20_af
.Lx1257_0:
 .quad .Lx1257_0_s
.Lx1257_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1234_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055168], rax
 mov qword ptr [1879055176], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1234_n8_α
# IR_ASSIGN gva
 xchain1234_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055136], rax
 mov qword ptr [1879055144], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1234_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1234_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1260_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1260_10
.Lx1260_9:
 xor eax, eax
.Lx1260_10:
 test rax, rax
 jz .Lx1260_0
 mov r8d, 0
 lea rcx, [rip + .Lx1260_4]
 lea rdx, [rip + .Lx1260_5]
 jmp rax
.Lx1260_4:
 jmp xchain1234_n17_α
.Lx1260_5:
 jmp xchain1234_n12_af
.Lx1260_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1260_2:
 test rax, rax
 je .Lx1260_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1260_7]
 lea rdx, [rip + .Lx1260_8]
 jmp rax
.Lx1260_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1260_2
.Lx1260_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1260_2
.Lx1260_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1234_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1260_6]
 sub rsp, 8
 push rax
 jmp xchain1234_n17_α
.Lx1260_6:
 add rsp, 16
 jmp xchain1234_n12_af
 xchain1234_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1234_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1234_n19_α
xchain1234_n17_as:
 jmp xchain1234_n12_as
 xchain1234_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1234_n19_β
 jmp xchain1234_n20_β
xchain1234_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1234_n20_α
 jmp xchain1234_n16_β
 xchain1234_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1264_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1264_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1264_6]
 lea rdx, [rip + .Lx1264_7]
 jmp rax
.Lx1264_6:
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
 jmp .Lx1264_2
.Lx1264_7:
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
 jmp .Lx1264_2
.Lx1264_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1264_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1264_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1264_3]
 lea rdx, [rip + .Lx1264_4]
 jmp rax
.Lx1264_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1264_2
.Lx1264_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1264_2
.Lx1264_1:
 call rt_faildescr@PLT
.Lx1264_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1234_n20_af
 jmp xchain1234_n21_α
 xchain1234_n18_β:
 jmp xchain1234_n20_af
.Lx1264_0:
 .quad .Lx1264_0_s
.Lx1264_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1234_n19_α:
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
 jmp xchain1234_n17_as
.Lx1265_5:
 jmp xchain1234_n17_af
.Lx1265_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
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
 js xchain1234_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1265_6]
 sub rsp, 8
 push rax
 jmp xchain1234_n17_as
.Lx1265_6:
 add rsp, 16
 jmp xchain1234_n17_af
 xchain1234_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1234_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1234_n22_α
xchain1234_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1234_n13_α
 jmp xchain1234_n17_as
 xchain1234_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1234_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1234_n23_β
 cmp eax, 1
 je xchain1234_n24_β
 jmp xchain1234_n17_af
# IR_ASSIGN gva
 xchain1234_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055152], rax
 mov qword ptr [1879055160], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1234_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1234_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1234_n25_α
 xchain1234_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1234_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1234_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1234_n20_as
 xchain1234_n23_β:
 sub r12, 24
 jmp xchain1234_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1234_n24_α:
 mov rax, qword ptr [1879055152]
 mov rdx, qword ptr [1879055160]
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
 jmp xchain1234_n20_as
.Lx1273_5:
 jmp xchain1234_n20_af
.Lx1273_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S46]
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
 js xchain1234_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1273_6]
 sub rsp, 8
 push rax
 jmp xchain1234_n20_as
.Lx1273_6:
 add rsp, 16
 jmp xchain1234_n20_af
 xchain1234_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1234_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1274_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1274_10
.Lx1274_9:
 xor eax, eax
.Lx1274_10:
 test rax, rax
 jz .Lx1274_0
 mov r8d, 0
 lea rcx, [rip + .Lx1274_4]
 lea rdx, [rip + .Lx1274_5]
 jmp rax
.Lx1274_4:
 jmp xchain1234_n23_α
.Lx1274_5:
 jmp xchain1234_n22_β
.Lx1274_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1274_2:
 test rax, rax
 je .Lx1274_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1274_7]
 lea rdx, [rip + .Lx1274_8]
 jmp rax
.Lx1274_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1274_2
.Lx1274_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1274_2
.Lx1274_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1234_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1274_6]
 sub rsp, 8
 push rax
 jmp xchain1234_n23_α
.Lx1274_6:
 add rsp, 16
 jmp xchain1234_n22_β
 xchain1234_n25_β:
 jmp qword ptr [rsp]
proc_PAT$48_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$48_γ
proc_PAT$48_scanfail:
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
jmp proc_PAT$48_attempt
8:
jmp proc_PAT$48_ω
proc_PAT$48_res:
add rsp, 8
pop rbp
proc_PAT$48_β:
jmp qword ptr [rbp + 784]
proc_PAT$48_γ:
push rbp
lea rax, [rip + proc_PAT$48_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$48_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$49_α
proc_PAT$49_α:
#=======================================================================================================================
    .global proc_PAT$49_α
    .global proc_PAT$49_β
    .global proc_PAT$49_γ
    .global proc_PAT$49_ω
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
proc_PAT$49_attempt:
proc_PAT$49_α_body:
lea rax, [rip + xchain1275_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1275_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1275_n1_α
 xchain1275_n0_β:
 add rsp, 16
 jmp proc_PAT$49_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1275_n1_α:
 jmp xchain1275_n3_α
xchain1275_n1_as:
 jmp xchain1275_n2_α
 xchain1275_n1_β:
 jmp xchain1275_n5_β
xchain1275_n1_af:
 jmp xchain1275_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1275_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$49_scanhit
 xchain1275_n2_β:
 sub r12, 24
 jmp xchain1275_n1_β
# IR_MATCH_LIT
 xchain1275_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1275_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1275_n1_af
 add r14d, 1
 jmp xchain1275_n4_α
 xchain1275_n3_β:
 sub r14d, 1
 jmp xchain1275_n1_af
# IR_MATCH_BAL
 xchain1275_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1275_n4_β:
.Lx1285_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1285_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1285_1
 add edx, 1
 jmp .Lx1285_2
.Lx1285_1:
 cmp esi, 41
 jne .Lx1285_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1285_3
.Lx1285_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1285_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1275_n5_α
.Lx1285_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1275_n3_β
# IR_MATCH_LIT
 xchain1275_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1275_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1275_n4_β
 add r14d, 1
 jmp xchain1275_n1_as
 xchain1275_n5_β:
 sub r14d, 1
 jmp xchain1275_n4_β
proc_PAT$49_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$49_γ
proc_PAT$49_scanfail:
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
jmp proc_PAT$49_attempt
8:
jmp proc_PAT$49_ω
proc_PAT$49_res:
add rsp, 8
pop rbp
proc_PAT$49_β:
jmp qword ptr [rbp + 160]
proc_PAT$49_γ:
push rbp
lea rax, [rip + proc_PAT$49_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$49_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$50_α
proc_PAT$50_α:
#=======================================================================================================================
    .global proc_PAT$50_α
    .global proc_PAT$50_β
    .global proc_PAT$50_γ
    .global proc_PAT$50_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$50_attempt:
proc_PAT$50_α_body:
lea rax, [rip + xchain1288_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1288_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1288_n1_α
 xchain1288_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$50_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1288_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1291_0
 mov r8d, 0
 lea rcx, [rip + .Lx1291_4]
 lea rdx, [rip + .Lx1291_5]
 jmp rax
.Lx1291_4:
 jmp xchain1288_n2_α
.Lx1291_5:
 jmp xchain1288_n0_β
.Lx1291_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1291_2:
 test rax, rax
 je .Lx1291_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1291_7]
 lea rdx, [rip + .Lx1291_8]
 jmp rax
.Lx1291_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1291_2
.Lx1291_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1291_2
.Lx1291_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1288_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1291_6]
 sub rsp, 8
 push rax
 jmp xchain1288_n2_α
.Lx1291_6:
 add rsp, 16
 jmp xchain1288_n0_β
 xchain1288_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1288_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S47]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$50_scanhit
 xchain1288_n2_β:
 sub r12, 24
 jmp xchain1288_n1_β
proc_PAT$50_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$50_γ
proc_PAT$50_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$50_attempt
8:
jmp proc_PAT$50_ω
proc_PAT$50_res:
add rsp, 8
pop rbp
proc_PAT$50_β:
jmp qword ptr [rbp + 96]
proc_PAT$50_γ:
push rbp
lea rax, [rip + proc_PAT$50_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$50_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
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
lea rax, [rip + xchain1294_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1294_n0_α:
 mov rax, qword ptr [1879055184]
 mov rdx, qword ptr [1879055192]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1294_n1_α
# IR_COERCE_STRING
 xchain1294_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1294_n2_α
# IR_MATCH_SPAN
 xchain1294_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1299_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1299_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1299_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1299_0
.Lx1299_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1299_240
 add rsp, 16
 jmp proc_PAT$51_scanfail
.Lx1299_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$51_scanhit
 xchain1294_n2_β:
 xchain1294_n2_β:
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
lea rax, [rip + xchain1300_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1300_n0_α:
 mov rax, qword ptr [1879055216]
 mov rdx, qword ptr [1879055224]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1300_n1_α
 xchain1300_n0_β:
 jmp proc_PAT$52_scanfail
# IR_COERCE_STRING
 xchain1300_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1300_n2_α
 xchain1300_n1_β:
 jmp proc_PAT$52_scanfail
# IR_VAR
 xchain1300_n2_α:
 mov rax, qword ptr [1879055200]
 mov rdx, qword ptr [1879055208]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1300_n3_α
 xchain1300_n2_β:
 jmp proc_PAT$52_scanfail
# IR_COERCE_STRING
 xchain1300_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1300_n4_α
 xchain1300_n3_β:
 jmp proc_PAT$52_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1300_n4_α:
 jmp xchain1300_n5_α
xchain1300_n4_as:
 jmp proc_PAT$52_γ
 xchain1300_n4_β:
 jmp xchain1300_n6_β
xchain1300_n4_af:
 jmp proc_PAT$52_ω
# IR_MATCH_NOTANY
 xchain1300_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1300_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1300_n4_af
 add r14d, 1
 jmp xchain1300_n6_α
 xchain1300_n5_β:
 sub r14d, 1
 jmp xchain1300_n4_af
# IR_MATCH_BREAK
 xchain1300_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1311_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1311_240
 add rsp, 16
 jmp xchain1300_n5_β
.Lx1311_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1311_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1311_0
.Lx1311_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1300_n4_as
 xchain1300_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1300_n5_β
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
proc_PAT$53_attempt:
proc_PAT$53_α_body:
lea rax, [rip + xchain1312_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1312_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1312_n1_α
xchain1312_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1312_n2_α
 cmp eax, 2
 je xchain1312_n4_α
 cmp eax, 3
 je xchain1312_n6_α
 cmp eax, 4
 je xchain1312_n7_α
 cmp eax, 5
 je xchain1312_n9_α
 jmp proc_PAT$53_γ
 xchain1312_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1312_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1312_n1_β
 cmp eax, 1
 je xchain1312_n3_β
 cmp eax, 2
 je xchain1312_n5_β
 cmp eax, 3
 je xchain1312_n6_β
 cmp eax, 4
 je xchain1312_n8_β
 cmp eax, 5
 je xchain1312_n9_β
 jmp proc_PAT$53_ω
# IR_MATCH_LIT
 xchain1312_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1312_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1312_n0_af
 add r14d, 1
 jmp xchain1312_n0_as
 xchain1312_n1_β:
 sub r14d, 1
 jmp xchain1312_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1312_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1312_n10_α
 xchain1312_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1312_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1312_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1312_n0_as
 xchain1312_n3_β:
 sub r12, 24
 jmp xchain1312_n10_β
# IR_LIT_STRING
 xchain1312_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1321_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1312_n11_α
 xchain1312_n4_β:
 jmp xchain1312_n0_af
.Lx1321_0:
 .quad .Lx1321_0_s
.Lx1321_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1312_n5_α:
 mov rax, qword ptr [1879055232]
 mov rdx, qword ptr [1879055240]
 cmp eax, 3
 jne .Lx1322_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1322_10
.Lx1322_9:
 xor eax, eax
.Lx1322_10:
 test rax, rax
 jz .Lx1322_0
 mov r8d, 0
 lea rcx, [rip + .Lx1322_4]
 lea rdx, [rip + .Lx1322_5]
 jmp rax
.Lx1322_4:
 jmp xchain1312_n0_as
.Lx1322_5:
 jmp xchain1312_n0_af
.Lx1322_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S48]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1322_2:
 test rax, rax
 je .Lx1322_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1322_7]
 lea rdx, [rip + .Lx1322_8]
 jmp rax
.Lx1322_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1322_2
.Lx1322_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1322_2
.Lx1322_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1312_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1322_6]
 sub rsp, 8
 push rax
 jmp xchain1312_n0_as
.Lx1322_6:
 add rsp, 16
 jmp xchain1312_n0_af
 xchain1312_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1312_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1312_n0_as
 xchain1312_n6_β:
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
 jmp xchain1312_n12_α
xchain1312_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1312_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1312_n0_as
xchain1312_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1324_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1312_n12_β
.Lx1324_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1312_n0_af
 xchain1312_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1326_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1326_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1326_6]
 lea rdx, [rip + .Lx1326_7]
 jmp rax
.Lx1326_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1326_2
.Lx1326_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1326_2
.Lx1326_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1326_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1326_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1326_3]
 lea rdx, [rip + .Lx1326_4]
 jmp rax
.Lx1326_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1326_2
.Lx1326_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1326_2
.Lx1326_1:
 call rt_faildescr@PLT
.Lx1326_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1312_n0_af
 jmp xchain1312_n14_α
 xchain1312_n7_β:
 jmp xchain1312_n0_af
.Lx1326_0:
 .quad .Lx1326_0_s
.Lx1326_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1312_n8_α:
 mov rax, qword ptr [1879055264]
 mov rdx, qword ptr [1879055272]
 cmp eax, 3
 jne .Lx1327_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1327_10
.Lx1327_9:
 xor eax, eax
.Lx1327_10:
 test rax, rax
 jz .Lx1327_0
 mov r8d, 0
 lea rcx, [rip + .Lx1327_4]
 lea rdx, [rip + .Lx1327_5]
 jmp rax
.Lx1327_4:
 jmp xchain1312_n0_as
.Lx1327_5:
 jmp xchain1312_n0_af
.Lx1327_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S49]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1327_2:
 test rax, rax
 je .Lx1327_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1327_7]
 lea rdx, [rip + .Lx1327_8]
 jmp rax
.Lx1327_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1327_2
.Lx1327_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1327_2
.Lx1327_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1312_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1327_6]
 sub rsp, 8
 push rax
 jmp xchain1312_n0_as
.Lx1327_6:
 add rsp, 16
 jmp xchain1312_n0_af
 xchain1312_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1312_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1312_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1312_n0_af
 add r14d, 1
 jmp xchain1312_n0_as
 xchain1312_n9_β:
 sub r14d, 1
 jmp xchain1312_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1312_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1330_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1330_10
.Lx1330_9:
 xor eax, eax
.Lx1330_10:
 test rax, rax
 jz .Lx1330_0
 mov r8d, 0
 lea rcx, [rip + .Lx1330_4]
 lea rdx, [rip + .Lx1330_5]
 jmp rax
.Lx1330_4:
 jmp xchain1312_n3_α
.Lx1330_5:
 jmp xchain1312_n2_β
.Lx1330_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1330_2:
 test rax, rax
 je .Lx1330_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1330_7]
 lea rdx, [rip + .Lx1330_8]
 jmp rax
.Lx1330_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1330_2
.Lx1330_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1330_2
.Lx1330_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1312_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1330_6]
 sub rsp, 8
 push rax
 jmp xchain1312_n3_α
.Lx1330_6:
 add rsp, 16
 jmp xchain1312_n2_β
 xchain1312_n10_β:
 jmp qword ptr [rsp]
 xchain1312_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1332_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1332_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1332_6]
 lea rdx, [rip + .Lx1332_7]
 jmp rax
.Lx1332_6:
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
 jmp .Lx1332_2
.Lx1332_7:
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
 jmp .Lx1332_2
.Lx1332_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1332_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1332_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1332_3]
 lea rdx, [rip + .Lx1332_4]
 jmp rax
.Lx1332_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1332_2
.Lx1332_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1332_2
.Lx1332_1:
 call rt_faildescr@PLT
.Lx1332_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1312_n0_af
 jmp xchain1312_n15_α
 xchain1312_n11_β:
 jmp xchain1312_n0_af
.Lx1332_0:
 .quad .Lx1332_0_s
.Lx1332_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1312_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1312_n16_α
xchain1312_n12_as:
 jmp xchain1312_n6_as
 xchain1312_n12_β:
 jmp xchain1312_n17_β
xchain1312_n12_af:
 jmp xchain1312_n6_af
# IR_LIT_STRING
 xchain1312_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1335_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1312_n18_α
 xchain1312_n13_β:
 jmp xchain1312_n20_af
.Lx1335_0:
 .quad .Lx1335_0_s
.Lx1335_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1312_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055264], rax
 mov qword ptr [1879055272], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1312_n8_α
# IR_ASSIGN gva
 xchain1312_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055232], rax
 mov qword ptr [1879055240], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1312_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1312_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1338_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1338_10
.Lx1338_9:
 xor eax, eax
.Lx1338_10:
 test rax, rax
 jz .Lx1338_0
 mov r8d, 0
 lea rcx, [rip + .Lx1338_4]
 lea rdx, [rip + .Lx1338_5]
 jmp rax
.Lx1338_4:
 jmp xchain1312_n17_α
.Lx1338_5:
 jmp xchain1312_n12_af
.Lx1338_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1338_2:
 test rax, rax
 je .Lx1338_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1338_7]
 lea rdx, [rip + .Lx1338_8]
 jmp rax
.Lx1338_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1338_2
.Lx1338_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1338_2
.Lx1338_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1312_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1338_6]
 sub rsp, 8
 push rax
 jmp xchain1312_n17_α
.Lx1338_6:
 add rsp, 16
 jmp xchain1312_n12_af
 xchain1312_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1312_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1312_n19_α
xchain1312_n17_as:
 jmp xchain1312_n12_as
 xchain1312_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1312_n19_β
 jmp xchain1312_n20_β
xchain1312_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1312_n20_α
 jmp xchain1312_n16_β
 xchain1312_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1342_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1342_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1342_6]
 lea rdx, [rip + .Lx1342_7]
 jmp rax
.Lx1342_6:
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
 jmp .Lx1342_2
.Lx1342_7:
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
 jmp .Lx1342_2
.Lx1342_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1342_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1342_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1342_3]
 lea rdx, [rip + .Lx1342_4]
 jmp rax
.Lx1342_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1342_2
.Lx1342_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1342_2
.Lx1342_1:
 call rt_faildescr@PLT
.Lx1342_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1312_n20_af
 jmp xchain1312_n21_α
 xchain1312_n18_β:
 jmp xchain1312_n20_af
.Lx1342_0:
 .quad .Lx1342_0_s
.Lx1342_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1312_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1343_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1343_10
.Lx1343_9:
 xor eax, eax
.Lx1343_10:
 test rax, rax
 jz .Lx1343_0
 mov r8d, 0
 lea rcx, [rip + .Lx1343_4]
 lea rdx, [rip + .Lx1343_5]
 jmp rax
.Lx1343_4:
 jmp xchain1312_n17_as
.Lx1343_5:
 jmp xchain1312_n17_af
.Lx1343_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1343_2:
 test rax, rax
 je .Lx1343_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1343_7]
 lea rdx, [rip + .Lx1343_8]
 jmp rax
.Lx1343_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1343_2
.Lx1343_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1343_2
.Lx1343_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1312_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1343_6]
 sub rsp, 8
 push rax
 jmp xchain1312_n17_as
.Lx1343_6:
 add rsp, 16
 jmp xchain1312_n17_af
 xchain1312_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1312_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1312_n22_α
xchain1312_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1312_n13_α
 jmp xchain1312_n17_as
 xchain1312_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1312_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1312_n23_β
 cmp eax, 1
 je xchain1312_n24_β
 jmp xchain1312_n17_af
# IR_ASSIGN gva
 xchain1312_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055248], rax
 mov qword ptr [1879055256], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1312_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1312_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1312_n25_α
 xchain1312_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1312_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1312_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1312_n20_as
 xchain1312_n23_β:
 sub r12, 24
 jmp xchain1312_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1312_n24_α:
 mov rax, qword ptr [1879055248]
 mov rdx, qword ptr [1879055256]
 cmp eax, 3
 jne .Lx1351_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1351_10
.Lx1351_9:
 xor eax, eax
.Lx1351_10:
 test rax, rax
 jz .Lx1351_0
 mov r8d, 0
 lea rcx, [rip + .Lx1351_4]
 lea rdx, [rip + .Lx1351_5]
 jmp rax
.Lx1351_4:
 jmp xchain1312_n20_as
.Lx1351_5:
 jmp xchain1312_n20_af
.Lx1351_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S50]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1351_2:
 test rax, rax
 je .Lx1351_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1351_7]
 lea rdx, [rip + .Lx1351_8]
 jmp rax
.Lx1351_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1351_2
.Lx1351_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1351_2
.Lx1351_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1312_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1351_6]
 sub rsp, 8
 push rax
 jmp xchain1312_n20_as
.Lx1351_6:
 add rsp, 16
 jmp xchain1312_n20_af
 xchain1312_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1312_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1352_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1352_10
.Lx1352_9:
 xor eax, eax
.Lx1352_10:
 test rax, rax
 jz .Lx1352_0
 mov r8d, 0
 lea rcx, [rip + .Lx1352_4]
 lea rdx, [rip + .Lx1352_5]
 jmp rax
.Lx1352_4:
 jmp xchain1312_n23_α
.Lx1352_5:
 jmp xchain1312_n22_β
.Lx1352_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1352_2:
 test rax, rax
 je .Lx1352_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1352_7]
 lea rdx, [rip + .Lx1352_8]
 jmp rax
.Lx1352_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1352_2
.Lx1352_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1352_2
.Lx1352_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1312_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1352_6]
 sub rsp, 8
 push rax
 jmp xchain1312_n23_α
.Lx1352_6:
 add rsp, 16
 jmp xchain1312_n22_β
 xchain1312_n25_β:
 jmp qword ptr [rsp]
proc_PAT$53_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$53_γ
proc_PAT$53_scanfail:
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
jmp proc_PAT$53_attempt
8:
jmp proc_PAT$53_ω
proc_PAT$53_res:
add rsp, 8
pop rbp
proc_PAT$53_β:
jmp qword ptr [rbp + 784]
proc_PAT$53_γ:
push rbp
lea rax, [rip + proc_PAT$53_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$53_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$54_α
proc_PAT$54_α:
#=======================================================================================================================
    .global proc_PAT$54_α
    .global proc_PAT$54_β
    .global proc_PAT$54_γ
    .global proc_PAT$54_ω
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
proc_PAT$54_attempt:
proc_PAT$54_α_body:
lea rax, [rip + xchain1353_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1353_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1353_n1_α
 xchain1353_n0_β:
 add rsp, 16
 jmp proc_PAT$54_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1353_n1_α:
 jmp xchain1353_n3_α
xchain1353_n1_as:
 jmp xchain1353_n2_α
 xchain1353_n1_β:
 jmp xchain1353_n5_β
xchain1353_n1_af:
 jmp xchain1353_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1353_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$54_scanhit
 xchain1353_n2_β:
 sub r12, 24
 jmp xchain1353_n1_β
# IR_MATCH_LIT
 xchain1353_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1353_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1353_n1_af
 add r14d, 1
 jmp xchain1353_n4_α
 xchain1353_n3_β:
 sub r14d, 1
 jmp xchain1353_n1_af
# IR_MATCH_BAL
 xchain1353_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1353_n4_β:
.Lx1363_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1363_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1363_1
 add edx, 1
 jmp .Lx1363_2
.Lx1363_1:
 cmp esi, 41
 jne .Lx1363_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1363_3
.Lx1363_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1363_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1353_n5_α
.Lx1363_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1353_n3_β
# IR_MATCH_LIT
 xchain1353_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1353_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1353_n4_β
 add r14d, 1
 jmp xchain1353_n1_as
 xchain1353_n5_β:
 sub r14d, 1
 jmp xchain1353_n4_β
proc_PAT$54_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$54_γ
proc_PAT$54_scanfail:
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
jmp proc_PAT$54_attempt
8:
jmp proc_PAT$54_ω
proc_PAT$54_res:
add rsp, 8
pop rbp
proc_PAT$54_β:
jmp qword ptr [rbp + 160]
proc_PAT$54_γ:
push rbp
lea rax, [rip + proc_PAT$54_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$54_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$55_α
proc_PAT$55_α:
#=======================================================================================================================
    .global proc_PAT$55_α
    .global proc_PAT$55_β
    .global proc_PAT$55_γ
    .global proc_PAT$55_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$55_attempt:
proc_PAT$55_α_body:
lea rax, [rip + xchain1366_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1366_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1366_n1_α
 xchain1366_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$55_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1366_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1369_0
 mov r8d, 0
 lea rcx, [rip + .Lx1369_4]
 lea rdx, [rip + .Lx1369_5]
 jmp rax
.Lx1369_4:
 jmp xchain1366_n2_α
.Lx1369_5:
 jmp xchain1366_n0_β
.Lx1369_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1369_2:
 test rax, rax
 je .Lx1369_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1369_7]
 lea rdx, [rip + .Lx1369_8]
 jmp rax
.Lx1369_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1369_2
.Lx1369_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1369_2
.Lx1369_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1366_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1369_6]
 sub rsp, 8
 push rax
 jmp xchain1366_n2_α
.Lx1369_6:
 add rsp, 16
 jmp xchain1366_n0_β
 xchain1366_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1366_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S51]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$55_scanhit
 xchain1366_n2_β:
 sub r12, 24
 jmp xchain1366_n1_β
proc_PAT$55_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$55_γ
proc_PAT$55_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$55_attempt
8:
jmp proc_PAT$55_ω
proc_PAT$55_res:
add rsp, 8
pop rbp
proc_PAT$55_β:
jmp qword ptr [rbp + 96]
proc_PAT$55_γ:
push rbp
lea rax, [rip + proc_PAT$55_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$55_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
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
lea rax, [rip + xchain1372_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1372_n0_α:
 mov rax, qword ptr [1879055280]
 mov rdx, qword ptr [1879055288]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1372_n1_α
# IR_COERCE_STRING
 xchain1372_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1372_n2_α
# IR_MATCH_SPAN
 xchain1372_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1377_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1377_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1377_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1377_0
.Lx1377_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1377_240
 add rsp, 16
 jmp proc_PAT$56_scanfail
.Lx1377_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$56_scanhit
 xchain1372_n2_β:
 xchain1372_n2_β:
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
lea rax, [rip + xchain1378_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1378_n0_α:
 mov rax, qword ptr [1879055312]
 mov rdx, qword ptr [1879055320]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1378_n1_α
 xchain1378_n0_β:
 jmp proc_PAT$57_scanfail
# IR_COERCE_STRING
 xchain1378_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1378_n2_α
 xchain1378_n1_β:
 jmp proc_PAT$57_scanfail
# IR_VAR
 xchain1378_n2_α:
 mov rax, qword ptr [1879055296]
 mov rdx, qword ptr [1879055304]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1378_n3_α
 xchain1378_n2_β:
 jmp proc_PAT$57_scanfail
# IR_COERCE_STRING
 xchain1378_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1378_n4_α
 xchain1378_n3_β:
 jmp proc_PAT$57_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1378_n4_α:
 jmp xchain1378_n5_α
xchain1378_n4_as:
 jmp proc_PAT$57_γ
 xchain1378_n4_β:
 jmp xchain1378_n6_β
xchain1378_n4_af:
 jmp proc_PAT$57_ω
# IR_MATCH_NOTANY
 xchain1378_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1378_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1378_n4_af
 add r14d, 1
 jmp xchain1378_n6_α
 xchain1378_n5_β:
 sub r14d, 1
 jmp xchain1378_n4_af
# IR_MATCH_BREAK
 xchain1378_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1389_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1389_240
 add rsp, 16
 jmp xchain1378_n5_β
.Lx1389_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1389_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1389_0
.Lx1389_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1378_n4_as
 xchain1378_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1378_n5_β
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
lea rax, [rip + xchain1390_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1390_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1390_n1_α
xchain1390_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1390_n2_α
 cmp eax, 2
 je xchain1390_n4_α
 cmp eax, 3
 je xchain1390_n6_α
 cmp eax, 4
 je xchain1390_n7_α
 cmp eax, 5
 je xchain1390_n9_α
 jmp proc_PAT$58_γ
 xchain1390_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1390_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1390_n1_β
 cmp eax, 1
 je xchain1390_n3_β
 cmp eax, 2
 je xchain1390_n5_β
 cmp eax, 3
 je xchain1390_n6_β
 cmp eax, 4
 je xchain1390_n8_β
 cmp eax, 5
 je xchain1390_n9_β
 jmp proc_PAT$58_ω
# IR_MATCH_LIT
 xchain1390_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1390_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1390_n0_af
 add r14d, 1
 jmp xchain1390_n0_as
 xchain1390_n1_β:
 sub r14d, 1
 jmp xchain1390_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1390_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1390_n10_α
 xchain1390_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1390_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1390_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1390_n0_as
 xchain1390_n3_β:
 sub r12, 24
 jmp xchain1390_n10_β
# IR_LIT_STRING
 xchain1390_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1399_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1390_n11_α
 xchain1390_n4_β:
 jmp xchain1390_n0_af
.Lx1399_0:
 .quad .Lx1399_0_s
.Lx1399_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1390_n5_α:
 mov rax, qword ptr [1879055328]
 mov rdx, qword ptr [1879055336]
 cmp eax, 3
 jne .Lx1400_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1400_10
.Lx1400_9:
 xor eax, eax
.Lx1400_10:
 test rax, rax
 jz .Lx1400_0
 mov r8d, 0
 lea rcx, [rip + .Lx1400_4]
 lea rdx, [rip + .Lx1400_5]
 jmp rax
.Lx1400_4:
 jmp xchain1390_n0_as
.Lx1400_5:
 jmp xchain1390_n0_af
.Lx1400_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S52]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1400_2:
 test rax, rax
 je .Lx1400_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1400_7]
 lea rdx, [rip + .Lx1400_8]
 jmp rax
.Lx1400_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1400_2
.Lx1400_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1400_2
.Lx1400_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1390_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1400_6]
 sub rsp, 8
 push rax
 jmp xchain1390_n0_as
.Lx1400_6:
 add rsp, 16
 jmp xchain1390_n0_af
 xchain1390_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1390_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1390_n0_as
 xchain1390_n6_β:
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
 jmp xchain1390_n12_α
xchain1390_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1390_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1390_n0_as
xchain1390_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1402_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1390_n12_β
.Lx1402_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1390_n0_af
 xchain1390_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1404_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1404_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1404_6]
 lea rdx, [rip + .Lx1404_7]
 jmp rax
.Lx1404_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1404_2
.Lx1404_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1404_2
.Lx1404_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1404_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1404_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1404_3]
 lea rdx, [rip + .Lx1404_4]
 jmp rax
.Lx1404_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1404_2
.Lx1404_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1404_2
.Lx1404_1:
 call rt_faildescr@PLT
.Lx1404_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1390_n0_af
 jmp xchain1390_n14_α
 xchain1390_n7_β:
 jmp xchain1390_n0_af
.Lx1404_0:
 .quad .Lx1404_0_s
.Lx1404_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1390_n8_α:
 mov rax, qword ptr [1879055360]
 mov rdx, qword ptr [1879055368]
 cmp eax, 3
 jne .Lx1405_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1405_10
.Lx1405_9:
 xor eax, eax
.Lx1405_10:
 test rax, rax
 jz .Lx1405_0
 mov r8d, 0
 lea rcx, [rip + .Lx1405_4]
 lea rdx, [rip + .Lx1405_5]
 jmp rax
.Lx1405_4:
 jmp xchain1390_n0_as
.Lx1405_5:
 jmp xchain1390_n0_af
.Lx1405_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S53]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1405_2:
 test rax, rax
 je .Lx1405_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1405_7]
 lea rdx, [rip + .Lx1405_8]
 jmp rax
.Lx1405_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1405_2
.Lx1405_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1405_2
.Lx1405_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1390_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1405_6]
 sub rsp, 8
 push rax
 jmp xchain1390_n0_as
.Lx1405_6:
 add rsp, 16
 jmp xchain1390_n0_af
 xchain1390_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1390_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1390_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1390_n0_af
 add r14d, 1
 jmp xchain1390_n0_as
 xchain1390_n9_β:
 sub r14d, 1
 jmp xchain1390_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1390_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1408_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1408_10
.Lx1408_9:
 xor eax, eax
.Lx1408_10:
 test rax, rax
 jz .Lx1408_0
 mov r8d, 0
 lea rcx, [rip + .Lx1408_4]
 lea rdx, [rip + .Lx1408_5]
 jmp rax
.Lx1408_4:
 jmp xchain1390_n3_α
.Lx1408_5:
 jmp xchain1390_n2_β
.Lx1408_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1408_2:
 test rax, rax
 je .Lx1408_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1408_7]
 lea rdx, [rip + .Lx1408_8]
 jmp rax
.Lx1408_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1408_2
.Lx1408_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1408_2
.Lx1408_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1390_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1408_6]
 sub rsp, 8
 push rax
 jmp xchain1390_n3_α
.Lx1408_6:
 add rsp, 16
 jmp xchain1390_n2_β
 xchain1390_n10_β:
 jmp qword ptr [rsp]
 xchain1390_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1410_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1410_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1410_6]
 lea rdx, [rip + .Lx1410_7]
 jmp rax
.Lx1410_6:
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
 jmp .Lx1410_2
.Lx1410_7:
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
 jmp .Lx1410_2
.Lx1410_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1410_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1410_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1410_3]
 lea rdx, [rip + .Lx1410_4]
 jmp rax
.Lx1410_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1410_2
.Lx1410_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1410_2
.Lx1410_1:
 call rt_faildescr@PLT
.Lx1410_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1390_n0_af
 jmp xchain1390_n15_α
 xchain1390_n11_β:
 jmp xchain1390_n0_af
.Lx1410_0:
 .quad .Lx1410_0_s
.Lx1410_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1390_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1390_n16_α
xchain1390_n12_as:
 jmp xchain1390_n6_as
 xchain1390_n12_β:
 jmp xchain1390_n17_β
xchain1390_n12_af:
 jmp xchain1390_n6_af
# IR_LIT_STRING
 xchain1390_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1413_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1390_n18_α
 xchain1390_n13_β:
 jmp xchain1390_n20_af
.Lx1413_0:
 .quad .Lx1413_0_s
.Lx1413_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1390_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055360], rax
 mov qword ptr [1879055368], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1390_n8_α
# IR_ASSIGN gva
 xchain1390_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055328], rax
 mov qword ptr [1879055336], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1390_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1390_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1416_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1416_10
.Lx1416_9:
 xor eax, eax
.Lx1416_10:
 test rax, rax
 jz .Lx1416_0
 mov r8d, 0
 lea rcx, [rip + .Lx1416_4]
 lea rdx, [rip + .Lx1416_5]
 jmp rax
.Lx1416_4:
 jmp xchain1390_n17_α
.Lx1416_5:
 jmp xchain1390_n12_af
.Lx1416_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1416_2:
 test rax, rax
 je .Lx1416_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1416_7]
 lea rdx, [rip + .Lx1416_8]
 jmp rax
.Lx1416_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1416_2
.Lx1416_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1416_2
.Lx1416_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1390_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1416_6]
 sub rsp, 8
 push rax
 jmp xchain1390_n17_α
.Lx1416_6:
 add rsp, 16
 jmp xchain1390_n12_af
 xchain1390_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1390_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1390_n19_α
xchain1390_n17_as:
 jmp xchain1390_n12_as
 xchain1390_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1390_n19_β
 jmp xchain1390_n20_β
xchain1390_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1390_n20_α
 jmp xchain1390_n16_β
 xchain1390_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1420_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1420_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1420_6]
 lea rdx, [rip + .Lx1420_7]
 jmp rax
.Lx1420_6:
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
 jmp .Lx1420_2
.Lx1420_7:
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
 jmp .Lx1420_2
.Lx1420_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1420_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1420_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1420_3]
 lea rdx, [rip + .Lx1420_4]
 jmp rax
.Lx1420_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1420_2
.Lx1420_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1420_2
.Lx1420_1:
 call rt_faildescr@PLT
.Lx1420_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1390_n20_af
 jmp xchain1390_n21_α
 xchain1390_n18_β:
 jmp xchain1390_n20_af
.Lx1420_0:
 .quad .Lx1420_0_s
.Lx1420_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1390_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1421_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1421_10
.Lx1421_9:
 xor eax, eax
.Lx1421_10:
 test rax, rax
 jz .Lx1421_0
 mov r8d, 0
 lea rcx, [rip + .Lx1421_4]
 lea rdx, [rip + .Lx1421_5]
 jmp rax
.Lx1421_4:
 jmp xchain1390_n17_as
.Lx1421_5:
 jmp xchain1390_n17_af
.Lx1421_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1421_2:
 test rax, rax
 je .Lx1421_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1421_7]
 lea rdx, [rip + .Lx1421_8]
 jmp rax
.Lx1421_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1421_2
.Lx1421_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1421_2
.Lx1421_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1390_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1421_6]
 sub rsp, 8
 push rax
 jmp xchain1390_n17_as
.Lx1421_6:
 add rsp, 16
 jmp xchain1390_n17_af
 xchain1390_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1390_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1390_n22_α
xchain1390_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1390_n13_α
 jmp xchain1390_n17_as
 xchain1390_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1390_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1390_n23_β
 cmp eax, 1
 je xchain1390_n24_β
 jmp xchain1390_n17_af
# IR_ASSIGN gva
 xchain1390_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055344], rax
 mov qword ptr [1879055352], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1390_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1390_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1390_n25_α
 xchain1390_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1390_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1390_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1390_n20_as
 xchain1390_n23_β:
 sub r12, 24
 jmp xchain1390_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1390_n24_α:
 mov rax, qword ptr [1879055344]
 mov rdx, qword ptr [1879055352]
 cmp eax, 3
 jne .Lx1429_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1429_10
.Lx1429_9:
 xor eax, eax
.Lx1429_10:
 test rax, rax
 jz .Lx1429_0
 mov r8d, 0
 lea rcx, [rip + .Lx1429_4]
 lea rdx, [rip + .Lx1429_5]
 jmp rax
.Lx1429_4:
 jmp xchain1390_n20_as
.Lx1429_5:
 jmp xchain1390_n20_af
.Lx1429_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S54]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1429_2:
 test rax, rax
 je .Lx1429_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1429_7]
 lea rdx, [rip + .Lx1429_8]
 jmp rax
.Lx1429_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1429_2
.Lx1429_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1429_2
.Lx1429_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1390_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1429_6]
 sub rsp, 8
 push rax
 jmp xchain1390_n20_as
.Lx1429_6:
 add rsp, 16
 jmp xchain1390_n20_af
 xchain1390_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1390_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
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
 jmp xchain1390_n23_α
.Lx1430_5:
 jmp xchain1390_n22_β
.Lx1430_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
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
 js xchain1390_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1430_6]
 sub rsp, 8
 push rax
 jmp xchain1390_n23_α
.Lx1430_6:
 add rsp, 16
 jmp xchain1390_n22_β
 xchain1390_n25_β:
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
lea rax, [rip + xchain1431_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1431_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1431_n1_α
 xchain1431_n0_β:
 add rsp, 16
 jmp proc_PAT$59_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1431_n1_α:
 jmp xchain1431_n3_α
xchain1431_n1_as:
 jmp xchain1431_n2_α
 xchain1431_n1_β:
 jmp xchain1431_n5_β
xchain1431_n1_af:
 jmp xchain1431_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1431_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$59_scanhit
 xchain1431_n2_β:
 sub r12, 24
 jmp xchain1431_n1_β
# IR_MATCH_LIT
 xchain1431_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1431_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1431_n1_af
 add r14d, 1
 jmp xchain1431_n4_α
 xchain1431_n3_β:
 sub r14d, 1
 jmp xchain1431_n1_af
# IR_MATCH_BAL
 xchain1431_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1431_n4_β:
.Lx1441_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1441_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1441_1
 add edx, 1
 jmp .Lx1441_2
.Lx1441_1:
 cmp esi, 41
 jne .Lx1441_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1441_3
.Lx1441_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1441_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1431_n5_α
.Lx1441_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1431_n3_β
# IR_MATCH_LIT
 xchain1431_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1431_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1431_n4_β
 add r14d, 1
 jmp xchain1431_n1_as
 xchain1431_n5_β:
 sub r14d, 1
 jmp xchain1431_n4_β
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
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$60_attempt:
proc_PAT$60_α_body:
lea rax, [rip + xchain1444_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1444_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1444_n1_α
 xchain1444_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$60_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1444_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1447_0
 mov r8d, 0
 lea rcx, [rip + .Lx1447_4]
 lea rdx, [rip + .Lx1447_5]
 jmp rax
.Lx1447_4:
 jmp xchain1444_n2_α
.Lx1447_5:
 jmp xchain1444_n0_β
.Lx1447_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1447_2:
 test rax, rax
 je .Lx1447_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1447_7]
 lea rdx, [rip + .Lx1447_8]
 jmp rax
.Lx1447_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1447_2
.Lx1447_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1447_2
.Lx1447_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1444_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1447_6]
 sub rsp, 8
 push rax
 jmp xchain1444_n2_α
.Lx1447_6:
 add rsp, 16
 jmp xchain1444_n0_β
 xchain1444_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1444_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S55]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$60_scanhit
 xchain1444_n2_β:
 sub r12, 24
 jmp xchain1444_n1_β
proc_PAT$60_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$60_γ
proc_PAT$60_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$60_attempt
8:
jmp proc_PAT$60_ω
proc_PAT$60_res:
add rsp, 8
pop rbp
proc_PAT$60_β:
jmp qword ptr [rbp + 96]
proc_PAT$60_γ:
push rbp
lea rax, [rip + proc_PAT$60_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$60_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$61_α
proc_PAT$61_α:
#=======================================================================================================================
    .global proc_PAT$61_α
    .global proc_PAT$61_β
    .global proc_PAT$61_γ
    .global proc_PAT$61_ω
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
proc_PAT$61_attempt:
proc_PAT$61_α_body:
lea rax, [rip + xchain1450_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1450_n0_α:
 mov rax, qword ptr [1879055376]
 mov rdx, qword ptr [1879055384]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1450_n1_α
# IR_COERCE_STRING
 xchain1450_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1450_n2_α
# IR_MATCH_SPAN
 xchain1450_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1455_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1455_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1455_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1455_0
.Lx1455_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1455_240
 add rsp, 16
 jmp proc_PAT$61_scanfail
.Lx1455_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$61_scanhit
 xchain1450_n2_β:
 xchain1450_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$61_scanfail
proc_PAT$61_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$61_γ
proc_PAT$61_scanfail:
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
jmp proc_PAT$61_attempt
8:
jmp proc_PAT$61_ω
proc_PAT$61_res:
add rsp, 8
pop rbp
proc_PAT$61_β:
jmp qword ptr [rbp + 112]
proc_PAT$61_γ:
push rbp
lea rax, [rip + proc_PAT$61_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$61_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$62_α
proc_PAT$62_α:
#=======================================================================================================================
    .global proc_PAT$62_α
    .global proc_PAT$62_β
    .global proc_PAT$62_γ
    .global proc_PAT$62_ω
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
proc_PAT$62_attempt:
proc_PAT$62_α_body:
lea rax, [rip + xchain1456_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1456_n0_α:
 mov rax, qword ptr [1879055408]
 mov rdx, qword ptr [1879055416]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1456_n1_α
 xchain1456_n0_β:
 jmp proc_PAT$62_scanfail
# IR_COERCE_STRING
 xchain1456_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1456_n2_α
 xchain1456_n1_β:
 jmp proc_PAT$62_scanfail
# IR_VAR
 xchain1456_n2_α:
 mov rax, qword ptr [1879055392]
 mov rdx, qword ptr [1879055400]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1456_n3_α
 xchain1456_n2_β:
 jmp proc_PAT$62_scanfail
# IR_COERCE_STRING
 xchain1456_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1456_n4_α
 xchain1456_n3_β:
 jmp proc_PAT$62_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1456_n4_α:
 jmp xchain1456_n5_α
xchain1456_n4_as:
 jmp proc_PAT$62_γ
 xchain1456_n4_β:
 jmp xchain1456_n6_β
xchain1456_n4_af:
 jmp proc_PAT$62_ω
# IR_MATCH_NOTANY
 xchain1456_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1456_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1456_n4_af
 add r14d, 1
 jmp xchain1456_n6_α
 xchain1456_n5_β:
 sub r14d, 1
 jmp xchain1456_n4_af
# IR_MATCH_BREAK
 xchain1456_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1467_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1467_240
 add rsp, 16
 jmp xchain1456_n5_β
.Lx1467_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1467_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1467_0
.Lx1467_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1456_n4_as
 xchain1456_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1456_n5_β
proc_PAT$62_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$62_γ
proc_PAT$62_scanfail:
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
jmp proc_PAT$62_attempt
8:
jmp proc_PAT$62_ω
proc_PAT$62_res:
add rsp, 8
pop rbp
proc_PAT$62_β:
jmp qword ptr [rbp + 224]
proc_PAT$62_γ:
push rbp
lea rax, [rip + proc_PAT$62_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$62_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$63_α
proc_PAT$63_α:
#=======================================================================================================================
    .global proc_PAT$63_α
    .global proc_PAT$63_β
    .global proc_PAT$63_γ
    .global proc_PAT$63_ω
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
proc_PAT$63_attempt:
proc_PAT$63_α_body:
lea rax, [rip + xchain1468_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1468_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1468_n1_α
xchain1468_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1468_n2_α
 cmp eax, 2
 je xchain1468_n4_α
 cmp eax, 3
 je xchain1468_n6_α
 cmp eax, 4
 je xchain1468_n7_α
 cmp eax, 5
 je xchain1468_n9_α
 jmp proc_PAT$63_γ
 xchain1468_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1468_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1468_n1_β
 cmp eax, 1
 je xchain1468_n3_β
 cmp eax, 2
 je xchain1468_n5_β
 cmp eax, 3
 je xchain1468_n6_β
 cmp eax, 4
 je xchain1468_n8_β
 cmp eax, 5
 je xchain1468_n9_β
 jmp proc_PAT$63_ω
# IR_MATCH_LIT
 xchain1468_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1468_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1468_n0_af
 add r14d, 1
 jmp xchain1468_n0_as
 xchain1468_n1_β:
 sub r14d, 1
 jmp xchain1468_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1468_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1468_n10_α
 xchain1468_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1468_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1468_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1468_n0_as
 xchain1468_n3_β:
 sub r12, 24
 jmp xchain1468_n10_β
# IR_LIT_STRING
 xchain1468_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1477_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1468_n11_α
 xchain1468_n4_β:
 jmp xchain1468_n0_af
.Lx1477_0:
 .quad .Lx1477_0_s
.Lx1477_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1468_n5_α:
 mov rax, qword ptr [1879055424]
 mov rdx, qword ptr [1879055432]
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
 jmp xchain1468_n0_as
.Lx1478_5:
 jmp xchain1468_n0_af
.Lx1478_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S56]
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
 js xchain1468_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1478_6]
 sub rsp, 8
 push rax
 jmp xchain1468_n0_as
.Lx1478_6:
 add rsp, 16
 jmp xchain1468_n0_af
 xchain1468_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1468_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1468_n0_as
 xchain1468_n6_β:
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
 jmp xchain1468_n12_α
xchain1468_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1468_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1468_n0_as
xchain1468_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1480_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1468_n12_β
.Lx1480_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1468_n0_af
 xchain1468_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1482_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1482_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1482_6]
 lea rdx, [rip + .Lx1482_7]
 jmp rax
.Lx1482_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1482_2
.Lx1482_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1482_2
.Lx1482_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1482_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1482_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1482_3]
 lea rdx, [rip + .Lx1482_4]
 jmp rax
.Lx1482_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1482_2
.Lx1482_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1482_2
.Lx1482_1:
 call rt_faildescr@PLT
.Lx1482_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1468_n0_af
 jmp xchain1468_n14_α
 xchain1468_n7_β:
 jmp xchain1468_n0_af
.Lx1482_0:
 .quad .Lx1482_0_s
.Lx1482_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1468_n8_α:
 mov rax, qword ptr [1879055456]
 mov rdx, qword ptr [1879055464]
 cmp eax, 3
 jne .Lx1483_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1483_10
.Lx1483_9:
 xor eax, eax
.Lx1483_10:
 test rax, rax
 jz .Lx1483_0
 mov r8d, 0
 lea rcx, [rip + .Lx1483_4]
 lea rdx, [rip + .Lx1483_5]
 jmp rax
.Lx1483_4:
 jmp xchain1468_n0_as
.Lx1483_5:
 jmp xchain1468_n0_af
.Lx1483_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S57]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1483_2:
 test rax, rax
 je .Lx1483_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1483_7]
 lea rdx, [rip + .Lx1483_8]
 jmp rax
.Lx1483_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1483_2
.Lx1483_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1483_2
.Lx1483_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1468_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1483_6]
 sub rsp, 8
 push rax
 jmp xchain1468_n0_as
.Lx1483_6:
 add rsp, 16
 jmp xchain1468_n0_af
 xchain1468_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1468_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1468_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1468_n0_af
 add r14d, 1
 jmp xchain1468_n0_as
 xchain1468_n9_β:
 sub r14d, 1
 jmp xchain1468_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1468_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1486_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1486_10
.Lx1486_9:
 xor eax, eax
.Lx1486_10:
 test rax, rax
 jz .Lx1486_0
 mov r8d, 0
 lea rcx, [rip + .Lx1486_4]
 lea rdx, [rip + .Lx1486_5]
 jmp rax
.Lx1486_4:
 jmp xchain1468_n3_α
.Lx1486_5:
 jmp xchain1468_n2_β
.Lx1486_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1486_2:
 test rax, rax
 je .Lx1486_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1486_7]
 lea rdx, [rip + .Lx1486_8]
 jmp rax
.Lx1486_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1486_2
.Lx1486_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1486_2
.Lx1486_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1468_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1486_6]
 sub rsp, 8
 push rax
 jmp xchain1468_n3_α
.Lx1486_6:
 add rsp, 16
 jmp xchain1468_n2_β
 xchain1468_n10_β:
 jmp qword ptr [rsp]
 xchain1468_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1488_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1488_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1488_6]
 lea rdx, [rip + .Lx1488_7]
 jmp rax
.Lx1488_6:
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
 jmp .Lx1488_2
.Lx1488_7:
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
 jmp .Lx1488_2
.Lx1488_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1488_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1488_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1488_3]
 lea rdx, [rip + .Lx1488_4]
 jmp rax
.Lx1488_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1488_2
.Lx1488_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1488_2
.Lx1488_1:
 call rt_faildescr@PLT
.Lx1488_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1468_n0_af
 jmp xchain1468_n15_α
 xchain1468_n11_β:
 jmp xchain1468_n0_af
.Lx1488_0:
 .quad .Lx1488_0_s
.Lx1488_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1468_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1468_n16_α
xchain1468_n12_as:
 jmp xchain1468_n6_as
 xchain1468_n12_β:
 jmp xchain1468_n17_β
xchain1468_n12_af:
 jmp xchain1468_n6_af
# IR_LIT_STRING
 xchain1468_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1491_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1468_n18_α
 xchain1468_n13_β:
 jmp xchain1468_n20_af
.Lx1491_0:
 .quad .Lx1491_0_s
.Lx1491_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1468_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055456], rax
 mov qword ptr [1879055464], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1468_n8_α
# IR_ASSIGN gva
 xchain1468_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055424], rax
 mov qword ptr [1879055432], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1468_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1468_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
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
 jmp xchain1468_n17_α
.Lx1494_5:
 jmp xchain1468_n12_af
.Lx1494_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
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
 js xchain1468_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1494_6]
 sub rsp, 8
 push rax
 jmp xchain1468_n17_α
.Lx1494_6:
 add rsp, 16
 jmp xchain1468_n12_af
 xchain1468_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1468_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1468_n19_α
xchain1468_n17_as:
 jmp xchain1468_n12_as
 xchain1468_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1468_n19_β
 jmp xchain1468_n20_β
xchain1468_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1468_n20_α
 jmp xchain1468_n16_β
 xchain1468_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1498_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1498_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1498_6]
 lea rdx, [rip + .Lx1498_7]
 jmp rax
.Lx1498_6:
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
 jmp .Lx1498_2
.Lx1498_7:
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
 jmp .Lx1498_2
.Lx1498_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1498_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1498_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1498_3]
 lea rdx, [rip + .Lx1498_4]
 jmp rax
.Lx1498_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1498_2
.Lx1498_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1498_2
.Lx1498_1:
 call rt_faildescr@PLT
.Lx1498_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1468_n20_af
 jmp xchain1468_n21_α
 xchain1468_n18_β:
 jmp xchain1468_n20_af
.Lx1498_0:
 .quad .Lx1498_0_s
.Lx1498_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1468_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1499_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1499_10
.Lx1499_9:
 xor eax, eax
.Lx1499_10:
 test rax, rax
 jz .Lx1499_0
 mov r8d, 0
 lea rcx, [rip + .Lx1499_4]
 lea rdx, [rip + .Lx1499_5]
 jmp rax
.Lx1499_4:
 jmp xchain1468_n17_as
.Lx1499_5:
 jmp xchain1468_n17_af
.Lx1499_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1499_2:
 test rax, rax
 je .Lx1499_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1499_7]
 lea rdx, [rip + .Lx1499_8]
 jmp rax
.Lx1499_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1499_2
.Lx1499_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1499_2
.Lx1499_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1468_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1499_6]
 sub rsp, 8
 push rax
 jmp xchain1468_n17_as
.Lx1499_6:
 add rsp, 16
 jmp xchain1468_n17_af
 xchain1468_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1468_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1468_n22_α
xchain1468_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1468_n13_α
 jmp xchain1468_n17_as
 xchain1468_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1468_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1468_n23_β
 cmp eax, 1
 je xchain1468_n24_β
 jmp xchain1468_n17_af
# IR_ASSIGN gva
 xchain1468_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055440], rax
 mov qword ptr [1879055448], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1468_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1468_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1468_n25_α
 xchain1468_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1468_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1468_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1468_n20_as
 xchain1468_n23_β:
 sub r12, 24
 jmp xchain1468_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1468_n24_α:
 mov rax, qword ptr [1879055440]
 mov rdx, qword ptr [1879055448]
 cmp eax, 3
 jne .Lx1507_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1507_10
.Lx1507_9:
 xor eax, eax
.Lx1507_10:
 test rax, rax
 jz .Lx1507_0
 mov r8d, 0
 lea rcx, [rip + .Lx1507_4]
 lea rdx, [rip + .Lx1507_5]
 jmp rax
.Lx1507_4:
 jmp xchain1468_n20_as
.Lx1507_5:
 jmp xchain1468_n20_af
.Lx1507_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S58]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1507_2:
 test rax, rax
 je .Lx1507_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1507_7]
 lea rdx, [rip + .Lx1507_8]
 jmp rax
.Lx1507_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1507_2
.Lx1507_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1507_2
.Lx1507_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1468_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1507_6]
 sub rsp, 8
 push rax
 jmp xchain1468_n20_as
.Lx1507_6:
 add rsp, 16
 jmp xchain1468_n20_af
 xchain1468_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1468_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1508_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1508_10
.Lx1508_9:
 xor eax, eax
.Lx1508_10:
 test rax, rax
 jz .Lx1508_0
 mov r8d, 0
 lea rcx, [rip + .Lx1508_4]
 lea rdx, [rip + .Lx1508_5]
 jmp rax
.Lx1508_4:
 jmp xchain1468_n23_α
.Lx1508_5:
 jmp xchain1468_n22_β
.Lx1508_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1508_2:
 test rax, rax
 je .Lx1508_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1508_7]
 lea rdx, [rip + .Lx1508_8]
 jmp rax
.Lx1508_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1508_2
.Lx1508_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1508_2
.Lx1508_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1468_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1508_6]
 sub rsp, 8
 push rax
 jmp xchain1468_n23_α
.Lx1508_6:
 add rsp, 16
 jmp xchain1468_n22_β
 xchain1468_n25_β:
 jmp qword ptr [rsp]
proc_PAT$63_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$63_γ
proc_PAT$63_scanfail:
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
jmp proc_PAT$63_attempt
8:
jmp proc_PAT$63_ω
proc_PAT$63_res:
add rsp, 8
pop rbp
proc_PAT$63_β:
jmp qword ptr [rbp + 784]
proc_PAT$63_γ:
push rbp
lea rax, [rip + proc_PAT$63_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$63_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$64_α
proc_PAT$64_α:
#=======================================================================================================================
    .global proc_PAT$64_α
    .global proc_PAT$64_β
    .global proc_PAT$64_γ
    .global proc_PAT$64_ω
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
proc_PAT$64_attempt:
proc_PAT$64_α_body:
lea rax, [rip + xchain1509_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1509_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1509_n1_α
 xchain1509_n0_β:
 add rsp, 16
 jmp proc_PAT$64_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1509_n1_α:
 jmp xchain1509_n3_α
xchain1509_n1_as:
 jmp xchain1509_n2_α
 xchain1509_n1_β:
 jmp xchain1509_n5_β
xchain1509_n1_af:
 jmp xchain1509_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1509_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$64_scanhit
 xchain1509_n2_β:
 sub r12, 24
 jmp xchain1509_n1_β
# IR_MATCH_LIT
 xchain1509_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1509_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1509_n1_af
 add r14d, 1
 jmp xchain1509_n4_α
 xchain1509_n3_β:
 sub r14d, 1
 jmp xchain1509_n1_af
# IR_MATCH_BAL
 xchain1509_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1509_n4_β:
.Lx1519_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1519_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1519_1
 add edx, 1
 jmp .Lx1519_2
.Lx1519_1:
 cmp esi, 41
 jne .Lx1519_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1519_3
.Lx1519_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1519_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1509_n5_α
.Lx1519_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1509_n3_β
# IR_MATCH_LIT
 xchain1509_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1509_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1509_n4_β
 add r14d, 1
 jmp xchain1509_n1_as
 xchain1509_n5_β:
 sub r14d, 1
 jmp xchain1509_n4_β
proc_PAT$64_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$64_γ
proc_PAT$64_scanfail:
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
jmp proc_PAT$64_attempt
8:
jmp proc_PAT$64_ω
proc_PAT$64_res:
add rsp, 8
pop rbp
proc_PAT$64_β:
jmp qword ptr [rbp + 160]
proc_PAT$64_γ:
push rbp
lea rax, [rip + proc_PAT$64_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$64_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$65_α
proc_PAT$65_α:
#=======================================================================================================================
    .global proc_PAT$65_α
    .global proc_PAT$65_β
    .global proc_PAT$65_γ
    .global proc_PAT$65_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$65_attempt:
proc_PAT$65_α_body:
lea rax, [rip + xchain1522_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1522_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1522_n1_α
 xchain1522_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$65_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1522_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1525_0
 mov r8d, 0
 lea rcx, [rip + .Lx1525_4]
 lea rdx, [rip + .Lx1525_5]
 jmp rax
.Lx1525_4:
 jmp xchain1522_n2_α
.Lx1525_5:
 jmp xchain1522_n0_β
.Lx1525_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1525_2:
 test rax, rax
 je .Lx1525_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1525_7]
 lea rdx, [rip + .Lx1525_8]
 jmp rax
.Lx1525_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1525_2
.Lx1525_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1525_2
.Lx1525_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1522_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1525_6]
 sub rsp, 8
 push rax
 jmp xchain1522_n2_α
.Lx1525_6:
 add rsp, 16
 jmp xchain1522_n0_β
 xchain1522_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1522_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S59]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$65_scanhit
 xchain1522_n2_β:
 sub r12, 24
 jmp xchain1522_n1_β
proc_PAT$65_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$65_γ
proc_PAT$65_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$65_attempt
8:
jmp proc_PAT$65_ω
proc_PAT$65_res:
add rsp, 8
pop rbp
proc_PAT$65_β:
jmp qword ptr [rbp + 96]
proc_PAT$65_γ:
push rbp
lea rax, [rip + proc_PAT$65_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$65_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$66_α
proc_PAT$66_α:
#=======================================================================================================================
    .global proc_PAT$66_α
    .global proc_PAT$66_β
    .global proc_PAT$66_γ
    .global proc_PAT$66_ω
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
proc_PAT$66_attempt:
proc_PAT$66_α_body:
lea rax, [rip + xchain1528_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1528_n0_α:
 mov rax, qword ptr [1879055472]
 mov rdx, qword ptr [1879055480]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1528_n1_α
# IR_COERCE_STRING
 xchain1528_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1528_n2_α
# IR_MATCH_SPAN
 xchain1528_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1533_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1533_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1533_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1533_0
.Lx1533_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1533_240
 add rsp, 16
 jmp proc_PAT$66_scanfail
.Lx1533_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$66_scanhit
 xchain1528_n2_β:
 xchain1528_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$66_scanfail
proc_PAT$66_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$66_γ
proc_PAT$66_scanfail:
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
jmp proc_PAT$66_attempt
8:
jmp proc_PAT$66_ω
proc_PAT$66_res:
add rsp, 8
pop rbp
proc_PAT$66_β:
jmp qword ptr [rbp + 112]
proc_PAT$66_γ:
push rbp
lea rax, [rip + proc_PAT$66_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$66_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$67_α
proc_PAT$67_α:
#=======================================================================================================================
    .global proc_PAT$67_α
    .global proc_PAT$67_β
    .global proc_PAT$67_γ
    .global proc_PAT$67_ω
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
proc_PAT$67_attempt:
proc_PAT$67_α_body:
lea rax, [rip + xchain1534_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1534_n0_α:
 mov rax, qword ptr [1879055504]
 mov rdx, qword ptr [1879055512]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1534_n1_α
 xchain1534_n0_β:
 jmp proc_PAT$67_scanfail
# IR_COERCE_STRING
 xchain1534_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1534_n2_α
 xchain1534_n1_β:
 jmp proc_PAT$67_scanfail
# IR_VAR
 xchain1534_n2_α:
 mov rax, qword ptr [1879055488]
 mov rdx, qword ptr [1879055496]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1534_n3_α
 xchain1534_n2_β:
 jmp proc_PAT$67_scanfail
# IR_COERCE_STRING
 xchain1534_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1534_n4_α
 xchain1534_n3_β:
 jmp proc_PAT$67_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1534_n4_α:
 jmp xchain1534_n5_α
xchain1534_n4_as:
 jmp proc_PAT$67_γ
 xchain1534_n4_β:
 jmp xchain1534_n6_β
xchain1534_n4_af:
 jmp proc_PAT$67_ω
# IR_MATCH_NOTANY
 xchain1534_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1534_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1534_n4_af
 add r14d, 1
 jmp xchain1534_n6_α
 xchain1534_n5_β:
 sub r14d, 1
 jmp xchain1534_n4_af
# IR_MATCH_BREAK
 xchain1534_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1545_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1545_240
 add rsp, 16
 jmp xchain1534_n5_β
.Lx1545_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1545_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1545_0
.Lx1545_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1534_n4_as
 xchain1534_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1534_n5_β
proc_PAT$67_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$67_γ
proc_PAT$67_scanfail:
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
jmp proc_PAT$67_attempt
8:
jmp proc_PAT$67_ω
proc_PAT$67_res:
add rsp, 8
pop rbp
proc_PAT$67_β:
jmp qword ptr [rbp + 224]
proc_PAT$67_γ:
push rbp
lea rax, [rip + proc_PAT$67_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$67_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$68_α
proc_PAT$68_α:
#=======================================================================================================================
    .global proc_PAT$68_α
    .global proc_PAT$68_β
    .global proc_PAT$68_γ
    .global proc_PAT$68_ω
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
proc_PAT$68_attempt:
proc_PAT$68_α_body:
lea rax, [rip + xchain1546_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1546_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1546_n1_α
xchain1546_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1546_n2_α
 cmp eax, 2
 je xchain1546_n4_α
 cmp eax, 3
 je xchain1546_n6_α
 cmp eax, 4
 je xchain1546_n7_α
 cmp eax, 5
 je xchain1546_n9_α
 jmp proc_PAT$68_γ
 xchain1546_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1546_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1546_n1_β
 cmp eax, 1
 je xchain1546_n3_β
 cmp eax, 2
 je xchain1546_n5_β
 cmp eax, 3
 je xchain1546_n6_β
 cmp eax, 4
 je xchain1546_n8_β
 cmp eax, 5
 je xchain1546_n9_β
 jmp proc_PAT$68_ω
# IR_MATCH_LIT
 xchain1546_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1546_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1546_n0_af
 add r14d, 1
 jmp xchain1546_n0_as
 xchain1546_n1_β:
 sub r14d, 1
 jmp xchain1546_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1546_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1546_n10_α
 xchain1546_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1546_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1546_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1546_n0_as
 xchain1546_n3_β:
 sub r12, 24
 jmp xchain1546_n10_β
# IR_LIT_STRING
 xchain1546_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1555_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1546_n11_α
 xchain1546_n4_β:
 jmp xchain1546_n0_af
.Lx1555_0:
 .quad .Lx1555_0_s
.Lx1555_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1546_n5_α:
 mov rax, qword ptr [1879055520]
 mov rdx, qword ptr [1879055528]
 cmp eax, 3
 jne .Lx1556_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1556_10
.Lx1556_9:
 xor eax, eax
.Lx1556_10:
 test rax, rax
 jz .Lx1556_0
 mov r8d, 0
 lea rcx, [rip + .Lx1556_4]
 lea rdx, [rip + .Lx1556_5]
 jmp rax
.Lx1556_4:
 jmp xchain1546_n0_as
.Lx1556_5:
 jmp xchain1546_n0_af
.Lx1556_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S60]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1556_2:
 test rax, rax
 je .Lx1556_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1556_7]
 lea rdx, [rip + .Lx1556_8]
 jmp rax
.Lx1556_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1556_2
.Lx1556_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1556_2
.Lx1556_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1546_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1556_6]
 sub rsp, 8
 push rax
 jmp xchain1546_n0_as
.Lx1556_6:
 add rsp, 16
 jmp xchain1546_n0_af
 xchain1546_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1546_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1546_n0_as
 xchain1546_n6_β:
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
 jmp xchain1546_n12_α
xchain1546_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1546_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1546_n0_as
xchain1546_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1558_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1546_n12_β
.Lx1558_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1546_n0_af
 xchain1546_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1560_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1560_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1560_6]
 lea rdx, [rip + .Lx1560_7]
 jmp rax
.Lx1560_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1560_2
.Lx1560_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1560_2
.Lx1560_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1560_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1560_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1560_3]
 lea rdx, [rip + .Lx1560_4]
 jmp rax
.Lx1560_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1560_2
.Lx1560_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1560_2
.Lx1560_1:
 call rt_faildescr@PLT
.Lx1560_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1546_n0_af
 jmp xchain1546_n14_α
 xchain1546_n7_β:
 jmp xchain1546_n0_af
.Lx1560_0:
 .quad .Lx1560_0_s
.Lx1560_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1546_n8_α:
 mov rax, qword ptr [1879055552]
 mov rdx, qword ptr [1879055560]
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
 jmp xchain1546_n0_as
.Lx1561_5:
 jmp xchain1546_n0_af
.Lx1561_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S61]
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
 js xchain1546_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1561_6]
 sub rsp, 8
 push rax
 jmp xchain1546_n0_as
.Lx1561_6:
 add rsp, 16
 jmp xchain1546_n0_af
 xchain1546_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1546_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1546_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1546_n0_af
 add r14d, 1
 jmp xchain1546_n0_as
 xchain1546_n9_β:
 sub r14d, 1
 jmp xchain1546_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1546_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1564_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1564_10
.Lx1564_9:
 xor eax, eax
.Lx1564_10:
 test rax, rax
 jz .Lx1564_0
 mov r8d, 0
 lea rcx, [rip + .Lx1564_4]
 lea rdx, [rip + .Lx1564_5]
 jmp rax
.Lx1564_4:
 jmp xchain1546_n3_α
.Lx1564_5:
 jmp xchain1546_n2_β
.Lx1564_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1564_2:
 test rax, rax
 je .Lx1564_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1564_7]
 lea rdx, [rip + .Lx1564_8]
 jmp rax
.Lx1564_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1564_2
.Lx1564_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1564_2
.Lx1564_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1546_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1564_6]
 sub rsp, 8
 push rax
 jmp xchain1546_n3_α
.Lx1564_6:
 add rsp, 16
 jmp xchain1546_n2_β
 xchain1546_n10_β:
 jmp qword ptr [rsp]
 xchain1546_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1566_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1566_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1566_6]
 lea rdx, [rip + .Lx1566_7]
 jmp rax
.Lx1566_6:
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
 jmp .Lx1566_2
.Lx1566_7:
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
 jmp .Lx1566_2
.Lx1566_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1566_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1566_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1566_3]
 lea rdx, [rip + .Lx1566_4]
 jmp rax
.Lx1566_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1566_2
.Lx1566_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1566_2
.Lx1566_1:
 call rt_faildescr@PLT
.Lx1566_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1546_n0_af
 jmp xchain1546_n15_α
 xchain1546_n11_β:
 jmp xchain1546_n0_af
.Lx1566_0:
 .quad .Lx1566_0_s
.Lx1566_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1546_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1546_n16_α
xchain1546_n12_as:
 jmp xchain1546_n6_as
 xchain1546_n12_β:
 jmp xchain1546_n17_β
xchain1546_n12_af:
 jmp xchain1546_n6_af
# IR_LIT_STRING
 xchain1546_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1569_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1546_n18_α
 xchain1546_n13_β:
 jmp xchain1546_n20_af
.Lx1569_0:
 .quad .Lx1569_0_s
.Lx1569_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1546_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055552], rax
 mov qword ptr [1879055560], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1546_n8_α
# IR_ASSIGN gva
 xchain1546_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055520], rax
 mov qword ptr [1879055528], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1546_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1546_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1572_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1572_10
.Lx1572_9:
 xor eax, eax
.Lx1572_10:
 test rax, rax
 jz .Lx1572_0
 mov r8d, 0
 lea rcx, [rip + .Lx1572_4]
 lea rdx, [rip + .Lx1572_5]
 jmp rax
.Lx1572_4:
 jmp xchain1546_n17_α
.Lx1572_5:
 jmp xchain1546_n12_af
.Lx1572_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1572_2:
 test rax, rax
 je .Lx1572_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1572_7]
 lea rdx, [rip + .Lx1572_8]
 jmp rax
.Lx1572_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1572_2
.Lx1572_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1572_2
.Lx1572_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1546_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1572_6]
 sub rsp, 8
 push rax
 jmp xchain1546_n17_α
.Lx1572_6:
 add rsp, 16
 jmp xchain1546_n12_af
 xchain1546_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1546_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1546_n19_α
xchain1546_n17_as:
 jmp xchain1546_n12_as
 xchain1546_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1546_n19_β
 jmp xchain1546_n20_β
xchain1546_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1546_n20_α
 jmp xchain1546_n16_β
 xchain1546_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1576_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1576_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1576_6]
 lea rdx, [rip + .Lx1576_7]
 jmp rax
.Lx1576_6:
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
 jmp .Lx1576_2
.Lx1576_7:
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
 jmp .Lx1576_2
.Lx1576_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1576_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1576_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1576_3]
 lea rdx, [rip + .Lx1576_4]
 jmp rax
.Lx1576_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1576_2
.Lx1576_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1576_2
.Lx1576_1:
 call rt_faildescr@PLT
.Lx1576_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1546_n20_af
 jmp xchain1546_n21_α
 xchain1546_n18_β:
 jmp xchain1546_n20_af
.Lx1576_0:
 .quad .Lx1576_0_s
.Lx1576_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1546_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1577_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1577_10
.Lx1577_9:
 xor eax, eax
.Lx1577_10:
 test rax, rax
 jz .Lx1577_0
 mov r8d, 0
 lea rcx, [rip + .Lx1577_4]
 lea rdx, [rip + .Lx1577_5]
 jmp rax
.Lx1577_4:
 jmp xchain1546_n17_as
.Lx1577_5:
 jmp xchain1546_n17_af
.Lx1577_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1577_2:
 test rax, rax
 je .Lx1577_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1577_7]
 lea rdx, [rip + .Lx1577_8]
 jmp rax
.Lx1577_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1577_2
.Lx1577_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1577_2
.Lx1577_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1546_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1577_6]
 sub rsp, 8
 push rax
 jmp xchain1546_n17_as
.Lx1577_6:
 add rsp, 16
 jmp xchain1546_n17_af
 xchain1546_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1546_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1546_n22_α
xchain1546_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1546_n13_α
 jmp xchain1546_n17_as
 xchain1546_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1546_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1546_n23_β
 cmp eax, 1
 je xchain1546_n24_β
 jmp xchain1546_n17_af
# IR_ASSIGN gva
 xchain1546_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055536], rax
 mov qword ptr [1879055544], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1546_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1546_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1546_n25_α
 xchain1546_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1546_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1546_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1546_n20_as
 xchain1546_n23_β:
 sub r12, 24
 jmp xchain1546_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1546_n24_α:
 mov rax, qword ptr [1879055536]
 mov rdx, qword ptr [1879055544]
 cmp eax, 3
 jne .Lx1585_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1585_10
.Lx1585_9:
 xor eax, eax
.Lx1585_10:
 test rax, rax
 jz .Lx1585_0
 mov r8d, 0
 lea rcx, [rip + .Lx1585_4]
 lea rdx, [rip + .Lx1585_5]
 jmp rax
.Lx1585_4:
 jmp xchain1546_n20_as
.Lx1585_5:
 jmp xchain1546_n20_af
.Lx1585_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S62]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1585_2:
 test rax, rax
 je .Lx1585_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1585_7]
 lea rdx, [rip + .Lx1585_8]
 jmp rax
.Lx1585_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1585_2
.Lx1585_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1585_2
.Lx1585_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1546_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1585_6]
 sub rsp, 8
 push rax
 jmp xchain1546_n20_as
.Lx1585_6:
 add rsp, 16
 jmp xchain1546_n20_af
 xchain1546_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1546_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1586_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1586_10
.Lx1586_9:
 xor eax, eax
.Lx1586_10:
 test rax, rax
 jz .Lx1586_0
 mov r8d, 0
 lea rcx, [rip + .Lx1586_4]
 lea rdx, [rip + .Lx1586_5]
 jmp rax
.Lx1586_4:
 jmp xchain1546_n23_α
.Lx1586_5:
 jmp xchain1546_n22_β
.Lx1586_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1586_2:
 test rax, rax
 je .Lx1586_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1586_7]
 lea rdx, [rip + .Lx1586_8]
 jmp rax
.Lx1586_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1586_2
.Lx1586_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1586_2
.Lx1586_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1546_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1586_6]
 sub rsp, 8
 push rax
 jmp xchain1546_n23_α
.Lx1586_6:
 add rsp, 16
 jmp xchain1546_n22_β
 xchain1546_n25_β:
 jmp qword ptr [rsp]
proc_PAT$68_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$68_γ
proc_PAT$68_scanfail:
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
jmp proc_PAT$68_attempt
8:
jmp proc_PAT$68_ω
proc_PAT$68_res:
add rsp, 8
pop rbp
proc_PAT$68_β:
jmp qword ptr [rbp + 784]
proc_PAT$68_γ:
push rbp
lea rax, [rip + proc_PAT$68_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$68_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$69_α
proc_PAT$69_α:
#=======================================================================================================================
    .global proc_PAT$69_α
    .global proc_PAT$69_β
    .global proc_PAT$69_γ
    .global proc_PAT$69_ω
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
proc_PAT$69_attempt:
proc_PAT$69_α_body:
lea rax, [rip + xchain1587_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1587_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1587_n1_α
 xchain1587_n0_β:
 add rsp, 16
 jmp proc_PAT$69_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1587_n1_α:
 jmp xchain1587_n3_α
xchain1587_n1_as:
 jmp xchain1587_n2_α
 xchain1587_n1_β:
 jmp xchain1587_n5_β
xchain1587_n1_af:
 jmp xchain1587_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1587_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$69_scanhit
 xchain1587_n2_β:
 sub r12, 24
 jmp xchain1587_n1_β
# IR_MATCH_LIT
 xchain1587_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1587_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1587_n1_af
 add r14d, 1
 jmp xchain1587_n4_α
 xchain1587_n3_β:
 sub r14d, 1
 jmp xchain1587_n1_af
# IR_MATCH_BAL
 xchain1587_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1587_n4_β:
.Lx1597_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1597_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1597_1
 add edx, 1
 jmp .Lx1597_2
.Lx1597_1:
 cmp esi, 41
 jne .Lx1597_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1597_3
.Lx1597_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1597_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1587_n5_α
.Lx1597_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1587_n3_β
# IR_MATCH_LIT
 xchain1587_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1587_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1587_n4_β
 add r14d, 1
 jmp xchain1587_n1_as
 xchain1587_n5_β:
 sub r14d, 1
 jmp xchain1587_n4_β
proc_PAT$69_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$69_γ
proc_PAT$69_scanfail:
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
jmp proc_PAT$69_attempt
8:
jmp proc_PAT$69_ω
proc_PAT$69_res:
add rsp, 8
pop rbp
proc_PAT$69_β:
jmp qword ptr [rbp + 160]
proc_PAT$69_γ:
push rbp
lea rax, [rip + proc_PAT$69_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$69_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$70_α
proc_PAT$70_α:
#=======================================================================================================================
    .global proc_PAT$70_α
    .global proc_PAT$70_β
    .global proc_PAT$70_γ
    .global proc_PAT$70_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$70_attempt:
proc_PAT$70_α_body:
lea rax, [rip + xchain1600_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1600_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1600_n1_α
 xchain1600_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$70_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1600_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1603_0
 mov r8d, 0
 lea rcx, [rip + .Lx1603_4]
 lea rdx, [rip + .Lx1603_5]
 jmp rax
.Lx1603_4:
 jmp xchain1600_n2_α
.Lx1603_5:
 jmp xchain1600_n0_β
.Lx1603_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1603_2:
 test rax, rax
 je .Lx1603_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1603_7]
 lea rdx, [rip + .Lx1603_8]
 jmp rax
.Lx1603_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1603_2
.Lx1603_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1603_2
.Lx1603_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1600_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1603_6]
 sub rsp, 8
 push rax
 jmp xchain1600_n2_α
.Lx1603_6:
 add rsp, 16
 jmp xchain1600_n0_β
 xchain1600_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1600_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S63]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$70_scanhit
 xchain1600_n2_β:
 sub r12, 24
 jmp xchain1600_n1_β
proc_PAT$70_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$70_γ
proc_PAT$70_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$70_attempt
8:
jmp proc_PAT$70_ω
proc_PAT$70_res:
add rsp, 8
pop rbp
proc_PAT$70_β:
jmp qword ptr [rbp + 96]
proc_PAT$70_γ:
push rbp
lea rax, [rip + proc_PAT$70_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$70_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$71_α
proc_PAT$71_α:
#=======================================================================================================================
    .global proc_PAT$71_α
    .global proc_PAT$71_β
    .global proc_PAT$71_γ
    .global proc_PAT$71_ω
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
proc_PAT$71_attempt:
proc_PAT$71_α_body:
lea rax, [rip + xchain1606_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1606_n0_α:
 mov rax, qword ptr [1879055568]
 mov rdx, qword ptr [1879055576]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1606_n1_α
# IR_COERCE_STRING
 xchain1606_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1606_n2_α
# IR_MATCH_SPAN
 xchain1606_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1611_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1611_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1611_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1611_0
.Lx1611_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1611_240
 add rsp, 16
 jmp proc_PAT$71_scanfail
.Lx1611_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$71_scanhit
 xchain1606_n2_β:
 xchain1606_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$71_scanfail
proc_PAT$71_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$71_γ
proc_PAT$71_scanfail:
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
jmp proc_PAT$71_attempt
8:
jmp proc_PAT$71_ω
proc_PAT$71_res:
add rsp, 8
pop rbp
proc_PAT$71_β:
jmp qword ptr [rbp + 112]
proc_PAT$71_γ:
push rbp
lea rax, [rip + proc_PAT$71_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$71_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$72_α
proc_PAT$72_α:
#=======================================================================================================================
    .global proc_PAT$72_α
    .global proc_PAT$72_β
    .global proc_PAT$72_γ
    .global proc_PAT$72_ω
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
proc_PAT$72_attempt:
proc_PAT$72_α_body:
lea rax, [rip + xchain1612_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1612_n0_α:
 mov rax, qword ptr [1879055600]
 mov rdx, qword ptr [1879055608]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1612_n1_α
 xchain1612_n0_β:
 jmp proc_PAT$72_scanfail
# IR_COERCE_STRING
 xchain1612_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1612_n2_α
 xchain1612_n1_β:
 jmp proc_PAT$72_scanfail
# IR_VAR
 xchain1612_n2_α:
 mov rax, qword ptr [1879055584]
 mov rdx, qword ptr [1879055592]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1612_n3_α
 xchain1612_n2_β:
 jmp proc_PAT$72_scanfail
# IR_COERCE_STRING
 xchain1612_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1612_n4_α
 xchain1612_n3_β:
 jmp proc_PAT$72_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1612_n4_α:
 jmp xchain1612_n5_α
xchain1612_n4_as:
 jmp proc_PAT$72_γ
 xchain1612_n4_β:
 jmp xchain1612_n6_β
xchain1612_n4_af:
 jmp proc_PAT$72_ω
# IR_MATCH_NOTANY
 xchain1612_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1612_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1612_n4_af
 add r14d, 1
 jmp xchain1612_n6_α
 xchain1612_n5_β:
 sub r14d, 1
 jmp xchain1612_n4_af
# IR_MATCH_BREAK
 xchain1612_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1623_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1623_240
 add rsp, 16
 jmp xchain1612_n5_β
.Lx1623_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1623_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1623_0
.Lx1623_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1612_n4_as
 xchain1612_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1612_n5_β
proc_PAT$72_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$72_γ
proc_PAT$72_scanfail:
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
jmp proc_PAT$72_attempt
8:
jmp proc_PAT$72_ω
proc_PAT$72_res:
add rsp, 8
pop rbp
proc_PAT$72_β:
jmp qword ptr [rbp + 224]
proc_PAT$72_γ:
push rbp
lea rax, [rip + proc_PAT$72_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$72_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$73_α
proc_PAT$73_α:
#=======================================================================================================================
    .global proc_PAT$73_α
    .global proc_PAT$73_β
    .global proc_PAT$73_γ
    .global proc_PAT$73_ω
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
proc_PAT$73_attempt:
proc_PAT$73_α_body:
lea rax, [rip + xchain1624_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1624_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1624_n1_α
xchain1624_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1624_n2_α
 cmp eax, 2
 je xchain1624_n4_α
 cmp eax, 3
 je xchain1624_n6_α
 cmp eax, 4
 je xchain1624_n7_α
 cmp eax, 5
 je xchain1624_n9_α
 jmp proc_PAT$73_γ
 xchain1624_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1624_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1624_n1_β
 cmp eax, 1
 je xchain1624_n3_β
 cmp eax, 2
 je xchain1624_n5_β
 cmp eax, 3
 je xchain1624_n6_β
 cmp eax, 4
 je xchain1624_n8_β
 cmp eax, 5
 je xchain1624_n9_β
 jmp proc_PAT$73_ω
# IR_MATCH_LIT
 xchain1624_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1624_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1624_n0_af
 add r14d, 1
 jmp xchain1624_n0_as
 xchain1624_n1_β:
 sub r14d, 1
 jmp xchain1624_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1624_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1624_n10_α
 xchain1624_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1624_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1624_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1624_n0_as
 xchain1624_n3_β:
 sub r12, 24
 jmp xchain1624_n10_β
# IR_LIT_STRING
 xchain1624_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1633_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1624_n11_α
 xchain1624_n4_β:
 jmp xchain1624_n0_af
.Lx1633_0:
 .quad .Lx1633_0_s
.Lx1633_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1624_n5_α:
 mov rax, qword ptr [1879055616]
 mov rdx, qword ptr [1879055624]
 cmp eax, 3
 jne .Lx1634_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1634_10
.Lx1634_9:
 xor eax, eax
.Lx1634_10:
 test rax, rax
 jz .Lx1634_0
 mov r8d, 0
 lea rcx, [rip + .Lx1634_4]
 lea rdx, [rip + .Lx1634_5]
 jmp rax
.Lx1634_4:
 jmp xchain1624_n0_as
.Lx1634_5:
 jmp xchain1624_n0_af
.Lx1634_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S64]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1634_2:
 test rax, rax
 je .Lx1634_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1634_7]
 lea rdx, [rip + .Lx1634_8]
 jmp rax
.Lx1634_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1634_2
.Lx1634_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1634_2
.Lx1634_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1624_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1634_6]
 sub rsp, 8
 push rax
 jmp xchain1624_n0_as
.Lx1634_6:
 add rsp, 16
 jmp xchain1624_n0_af
 xchain1624_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1624_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1624_n0_as
 xchain1624_n6_β:
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
 jmp xchain1624_n12_α
xchain1624_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1624_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1624_n0_as
xchain1624_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1636_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1624_n12_β
.Lx1636_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1624_n0_af
 xchain1624_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1638_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1638_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1638_6]
 lea rdx, [rip + .Lx1638_7]
 jmp rax
.Lx1638_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1638_2
.Lx1638_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1638_2
.Lx1638_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1638_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1638_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1638_3]
 lea rdx, [rip + .Lx1638_4]
 jmp rax
.Lx1638_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1638_2
.Lx1638_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1638_2
.Lx1638_1:
 call rt_faildescr@PLT
.Lx1638_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1624_n0_af
 jmp xchain1624_n14_α
 xchain1624_n7_β:
 jmp xchain1624_n0_af
.Lx1638_0:
 .quad .Lx1638_0_s
.Lx1638_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1624_n8_α:
 mov rax, qword ptr [1879055648]
 mov rdx, qword ptr [1879055656]
 cmp eax, 3
 jne .Lx1639_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1639_10
.Lx1639_9:
 xor eax, eax
.Lx1639_10:
 test rax, rax
 jz .Lx1639_0
 mov r8d, 0
 lea rcx, [rip + .Lx1639_4]
 lea rdx, [rip + .Lx1639_5]
 jmp rax
.Lx1639_4:
 jmp xchain1624_n0_as
.Lx1639_5:
 jmp xchain1624_n0_af
.Lx1639_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S65]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1639_2:
 test rax, rax
 je .Lx1639_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1639_7]
 lea rdx, [rip + .Lx1639_8]
 jmp rax
.Lx1639_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1639_2
.Lx1639_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1639_2
.Lx1639_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1624_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1639_6]
 sub rsp, 8
 push rax
 jmp xchain1624_n0_as
.Lx1639_6:
 add rsp, 16
 jmp xchain1624_n0_af
 xchain1624_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1624_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1624_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1624_n0_af
 add r14d, 1
 jmp xchain1624_n0_as
 xchain1624_n9_β:
 sub r14d, 1
 jmp xchain1624_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1624_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1642_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1642_10
.Lx1642_9:
 xor eax, eax
.Lx1642_10:
 test rax, rax
 jz .Lx1642_0
 mov r8d, 0
 lea rcx, [rip + .Lx1642_4]
 lea rdx, [rip + .Lx1642_5]
 jmp rax
.Lx1642_4:
 jmp xchain1624_n3_α
.Lx1642_5:
 jmp xchain1624_n2_β
.Lx1642_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1642_2:
 test rax, rax
 je .Lx1642_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1642_7]
 lea rdx, [rip + .Lx1642_8]
 jmp rax
.Lx1642_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1642_2
.Lx1642_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1642_2
.Lx1642_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1624_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1642_6]
 sub rsp, 8
 push rax
 jmp xchain1624_n3_α
.Lx1642_6:
 add rsp, 16
 jmp xchain1624_n2_β
 xchain1624_n10_β:
 jmp qword ptr [rsp]
 xchain1624_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1644_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1644_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1644_6]
 lea rdx, [rip + .Lx1644_7]
 jmp rax
.Lx1644_6:
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
 jmp .Lx1644_2
.Lx1644_7:
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
 jmp .Lx1644_2
.Lx1644_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1644_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1644_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1644_3]
 lea rdx, [rip + .Lx1644_4]
 jmp rax
.Lx1644_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1644_2
.Lx1644_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1644_2
.Lx1644_1:
 call rt_faildescr@PLT
.Lx1644_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1624_n0_af
 jmp xchain1624_n15_α
 xchain1624_n11_β:
 jmp xchain1624_n0_af
.Lx1644_0:
 .quad .Lx1644_0_s
.Lx1644_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1624_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1624_n16_α
xchain1624_n12_as:
 jmp xchain1624_n6_as
 xchain1624_n12_β:
 jmp xchain1624_n17_β
xchain1624_n12_af:
 jmp xchain1624_n6_af
# IR_LIT_STRING
 xchain1624_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1647_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1624_n18_α
 xchain1624_n13_β:
 jmp xchain1624_n20_af
.Lx1647_0:
 .quad .Lx1647_0_s
.Lx1647_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1624_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055648], rax
 mov qword ptr [1879055656], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1624_n8_α
# IR_ASSIGN gva
 xchain1624_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055616], rax
 mov qword ptr [1879055624], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1624_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1624_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1650_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1650_10
.Lx1650_9:
 xor eax, eax
.Lx1650_10:
 test rax, rax
 jz .Lx1650_0
 mov r8d, 0
 lea rcx, [rip + .Lx1650_4]
 lea rdx, [rip + .Lx1650_5]
 jmp rax
.Lx1650_4:
 jmp xchain1624_n17_α
.Lx1650_5:
 jmp xchain1624_n12_af
.Lx1650_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1650_2:
 test rax, rax
 je .Lx1650_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1650_7]
 lea rdx, [rip + .Lx1650_8]
 jmp rax
.Lx1650_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1650_2
.Lx1650_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1650_2
.Lx1650_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1624_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1650_6]
 sub rsp, 8
 push rax
 jmp xchain1624_n17_α
.Lx1650_6:
 add rsp, 16
 jmp xchain1624_n12_af
 xchain1624_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1624_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1624_n19_α
xchain1624_n17_as:
 jmp xchain1624_n12_as
 xchain1624_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1624_n19_β
 jmp xchain1624_n20_β
xchain1624_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1624_n20_α
 jmp xchain1624_n16_β
 xchain1624_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1654_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1654_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1654_6]
 lea rdx, [rip + .Lx1654_7]
 jmp rax
.Lx1654_6:
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
 jmp .Lx1654_2
.Lx1654_7:
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
 jmp .Lx1654_2
.Lx1654_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1654_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1654_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1654_3]
 lea rdx, [rip + .Lx1654_4]
 jmp rax
.Lx1654_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1654_2
.Lx1654_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1654_2
.Lx1654_1:
 call rt_faildescr@PLT
.Lx1654_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1624_n20_af
 jmp xchain1624_n21_α
 xchain1624_n18_β:
 jmp xchain1624_n20_af
.Lx1654_0:
 .quad .Lx1654_0_s
.Lx1654_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1624_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1655_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1655_10
.Lx1655_9:
 xor eax, eax
.Lx1655_10:
 test rax, rax
 jz .Lx1655_0
 mov r8d, 0
 lea rcx, [rip + .Lx1655_4]
 lea rdx, [rip + .Lx1655_5]
 jmp rax
.Lx1655_4:
 jmp xchain1624_n17_as
.Lx1655_5:
 jmp xchain1624_n17_af
.Lx1655_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1655_2:
 test rax, rax
 je .Lx1655_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1655_7]
 lea rdx, [rip + .Lx1655_8]
 jmp rax
.Lx1655_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1655_2
.Lx1655_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1655_2
.Lx1655_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1624_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1655_6]
 sub rsp, 8
 push rax
 jmp xchain1624_n17_as
.Lx1655_6:
 add rsp, 16
 jmp xchain1624_n17_af
 xchain1624_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1624_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1624_n22_α
xchain1624_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1624_n13_α
 jmp xchain1624_n17_as
 xchain1624_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1624_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1624_n23_β
 cmp eax, 1
 je xchain1624_n24_β
 jmp xchain1624_n17_af
# IR_ASSIGN gva
 xchain1624_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055632], rax
 mov qword ptr [1879055640], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1624_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1624_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1624_n25_α
 xchain1624_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1624_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1624_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1624_n20_as
 xchain1624_n23_β:
 sub r12, 24
 jmp xchain1624_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1624_n24_α:
 mov rax, qword ptr [1879055632]
 mov rdx, qword ptr [1879055640]
 cmp eax, 3
 jne .Lx1663_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1663_10
.Lx1663_9:
 xor eax, eax
.Lx1663_10:
 test rax, rax
 jz .Lx1663_0
 mov r8d, 0
 lea rcx, [rip + .Lx1663_4]
 lea rdx, [rip + .Lx1663_5]
 jmp rax
.Lx1663_4:
 jmp xchain1624_n20_as
.Lx1663_5:
 jmp xchain1624_n20_af
.Lx1663_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S66]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1663_2:
 test rax, rax
 je .Lx1663_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1663_7]
 lea rdx, [rip + .Lx1663_8]
 jmp rax
.Lx1663_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1663_2
.Lx1663_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1663_2
.Lx1663_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1624_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1663_6]
 sub rsp, 8
 push rax
 jmp xchain1624_n20_as
.Lx1663_6:
 add rsp, 16
 jmp xchain1624_n20_af
 xchain1624_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1624_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1664_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1664_10
.Lx1664_9:
 xor eax, eax
.Lx1664_10:
 test rax, rax
 jz .Lx1664_0
 mov r8d, 0
 lea rcx, [rip + .Lx1664_4]
 lea rdx, [rip + .Lx1664_5]
 jmp rax
.Lx1664_4:
 jmp xchain1624_n23_α
.Lx1664_5:
 jmp xchain1624_n22_β
.Lx1664_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1664_2:
 test rax, rax
 je .Lx1664_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1664_7]
 lea rdx, [rip + .Lx1664_8]
 jmp rax
.Lx1664_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1664_2
.Lx1664_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1664_2
.Lx1664_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1624_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1664_6]
 sub rsp, 8
 push rax
 jmp xchain1624_n23_α
.Lx1664_6:
 add rsp, 16
 jmp xchain1624_n22_β
 xchain1624_n25_β:
 jmp qword ptr [rsp]
proc_PAT$73_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$73_γ
proc_PAT$73_scanfail:
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
jmp proc_PAT$73_attempt
8:
jmp proc_PAT$73_ω
proc_PAT$73_res:
add rsp, 8
pop rbp
proc_PAT$73_β:
jmp qword ptr [rbp + 784]
proc_PAT$73_γ:
push rbp
lea rax, [rip + proc_PAT$73_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$73_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$74_α
proc_PAT$74_α:
#=======================================================================================================================
    .global proc_PAT$74_α
    .global proc_PAT$74_β
    .global proc_PAT$74_γ
    .global proc_PAT$74_ω
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
proc_PAT$74_attempt:
proc_PAT$74_α_body:
lea rax, [rip + xchain1665_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1665_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1665_n1_α
 xchain1665_n0_β:
 add rsp, 16
 jmp proc_PAT$74_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1665_n1_α:
 jmp xchain1665_n3_α
xchain1665_n1_as:
 jmp xchain1665_n2_α
 xchain1665_n1_β:
 jmp xchain1665_n5_β
xchain1665_n1_af:
 jmp xchain1665_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1665_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$74_scanhit
 xchain1665_n2_β:
 sub r12, 24
 jmp xchain1665_n1_β
# IR_MATCH_LIT
 xchain1665_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1665_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1665_n1_af
 add r14d, 1
 jmp xchain1665_n4_α
 xchain1665_n3_β:
 sub r14d, 1
 jmp xchain1665_n1_af
# IR_MATCH_BAL
 xchain1665_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1665_n4_β:
.Lx1675_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1675_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1675_1
 add edx, 1
 jmp .Lx1675_2
.Lx1675_1:
 cmp esi, 41
 jne .Lx1675_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1675_3
.Lx1675_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1675_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1665_n5_α
.Lx1675_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1665_n3_β
# IR_MATCH_LIT
 xchain1665_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1665_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1665_n4_β
 add r14d, 1
 jmp xchain1665_n1_as
 xchain1665_n5_β:
 sub r14d, 1
 jmp xchain1665_n4_β
proc_PAT$74_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$74_γ
proc_PAT$74_scanfail:
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
jmp proc_PAT$74_attempt
8:
jmp proc_PAT$74_ω
proc_PAT$74_res:
add rsp, 8
pop rbp
proc_PAT$74_β:
jmp qword ptr [rbp + 160]
proc_PAT$74_γ:
push rbp
lea rax, [rip + proc_PAT$74_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$74_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$75_α
proc_PAT$75_α:
#=======================================================================================================================
    .global proc_PAT$75_α
    .global proc_PAT$75_β
    .global proc_PAT$75_γ
    .global proc_PAT$75_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$75_attempt:
proc_PAT$75_α_body:
lea rax, [rip + xchain1678_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1678_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1678_n1_α
 xchain1678_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$75_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1678_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1681_0
 mov r8d, 0
 lea rcx, [rip + .Lx1681_4]
 lea rdx, [rip + .Lx1681_5]
 jmp rax
.Lx1681_4:
 jmp xchain1678_n2_α
.Lx1681_5:
 jmp xchain1678_n0_β
.Lx1681_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1681_2:
 test rax, rax
 je .Lx1681_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1681_7]
 lea rdx, [rip + .Lx1681_8]
 jmp rax
.Lx1681_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1681_2
.Lx1681_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1681_2
.Lx1681_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1678_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1681_6]
 sub rsp, 8
 push rax
 jmp xchain1678_n2_α
.Lx1681_6:
 add rsp, 16
 jmp xchain1678_n0_β
 xchain1678_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1678_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S67]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$75_scanhit
 xchain1678_n2_β:
 sub r12, 24
 jmp xchain1678_n1_β
proc_PAT$75_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$75_γ
proc_PAT$75_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$75_attempt
8:
jmp proc_PAT$75_ω
proc_PAT$75_res:
add rsp, 8
pop rbp
proc_PAT$75_β:
jmp qword ptr [rbp + 96]
proc_PAT$75_γ:
push rbp
lea rax, [rip + proc_PAT$75_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$75_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$76_α
proc_PAT$76_α:
#=======================================================================================================================
    .global proc_PAT$76_α
    .global proc_PAT$76_β
    .global proc_PAT$76_γ
    .global proc_PAT$76_ω
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
proc_PAT$76_attempt:
proc_PAT$76_α_body:
lea rax, [rip + xchain1684_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1684_n0_α:
 mov rax, qword ptr [1879055664]
 mov rdx, qword ptr [1879055672]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1684_n1_α
# IR_COERCE_STRING
 xchain1684_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1684_n2_α
# IR_MATCH_SPAN
 xchain1684_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1689_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1689_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1689_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1689_0
.Lx1689_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1689_240
 add rsp, 16
 jmp proc_PAT$76_scanfail
.Lx1689_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$76_scanhit
 xchain1684_n2_β:
 xchain1684_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$76_scanfail
proc_PAT$76_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$76_γ
proc_PAT$76_scanfail:
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
jmp proc_PAT$76_attempt
8:
jmp proc_PAT$76_ω
proc_PAT$76_res:
add rsp, 8
pop rbp
proc_PAT$76_β:
jmp qword ptr [rbp + 112]
proc_PAT$76_γ:
push rbp
lea rax, [rip + proc_PAT$76_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$76_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$77_α
proc_PAT$77_α:
#=======================================================================================================================
    .global proc_PAT$77_α
    .global proc_PAT$77_β
    .global proc_PAT$77_γ
    .global proc_PAT$77_ω
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
proc_PAT$77_attempt:
proc_PAT$77_α_body:
lea rax, [rip + xchain1690_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1690_n0_α:
 mov rax, qword ptr [1879055696]
 mov rdx, qword ptr [1879055704]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1690_n1_α
 xchain1690_n0_β:
 jmp proc_PAT$77_scanfail
# IR_COERCE_STRING
 xchain1690_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1690_n2_α
 xchain1690_n1_β:
 jmp proc_PAT$77_scanfail
# IR_VAR
 xchain1690_n2_α:
 mov rax, qword ptr [1879055680]
 mov rdx, qword ptr [1879055688]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1690_n3_α
 xchain1690_n2_β:
 jmp proc_PAT$77_scanfail
# IR_COERCE_STRING
 xchain1690_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1690_n4_α
 xchain1690_n3_β:
 jmp proc_PAT$77_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1690_n4_α:
 jmp xchain1690_n5_α
xchain1690_n4_as:
 jmp proc_PAT$77_γ
 xchain1690_n4_β:
 jmp xchain1690_n6_β
xchain1690_n4_af:
 jmp proc_PAT$77_ω
# IR_MATCH_NOTANY
 xchain1690_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1690_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1690_n4_af
 add r14d, 1
 jmp xchain1690_n6_α
 xchain1690_n5_β:
 sub r14d, 1
 jmp xchain1690_n4_af
# IR_MATCH_BREAK
 xchain1690_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1701_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1701_240
 add rsp, 16
 jmp xchain1690_n5_β
.Lx1701_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1701_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1701_0
.Lx1701_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1690_n4_as
 xchain1690_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1690_n5_β
proc_PAT$77_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$77_γ
proc_PAT$77_scanfail:
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
jmp proc_PAT$77_attempt
8:
jmp proc_PAT$77_ω
proc_PAT$77_res:
add rsp, 8
pop rbp
proc_PAT$77_β:
jmp qword ptr [rbp + 224]
proc_PAT$77_γ:
push rbp
lea rax, [rip + proc_PAT$77_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$77_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$78_α
proc_PAT$78_α:
#=======================================================================================================================
    .global proc_PAT$78_α
    .global proc_PAT$78_β
    .global proc_PAT$78_γ
    .global proc_PAT$78_ω
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
proc_PAT$78_attempt:
proc_PAT$78_α_body:
lea rax, [rip + xchain1702_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1702_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1702_n1_α
xchain1702_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1702_n2_α
 cmp eax, 2
 je xchain1702_n4_α
 cmp eax, 3
 je xchain1702_n6_α
 cmp eax, 4
 je xchain1702_n7_α
 cmp eax, 5
 je xchain1702_n9_α
 jmp proc_PAT$78_γ
 xchain1702_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1702_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1702_n1_β
 cmp eax, 1
 je xchain1702_n3_β
 cmp eax, 2
 je xchain1702_n5_β
 cmp eax, 3
 je xchain1702_n6_β
 cmp eax, 4
 je xchain1702_n8_β
 cmp eax, 5
 je xchain1702_n9_β
 jmp proc_PAT$78_ω
# IR_MATCH_LIT
 xchain1702_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1702_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1702_n0_af
 add r14d, 1
 jmp xchain1702_n0_as
 xchain1702_n1_β:
 sub r14d, 1
 jmp xchain1702_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1702_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1702_n10_α
 xchain1702_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1702_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1702_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1702_n0_as
 xchain1702_n3_β:
 sub r12, 24
 jmp xchain1702_n10_β
# IR_LIT_STRING
 xchain1702_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1711_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1702_n11_α
 xchain1702_n4_β:
 jmp xchain1702_n0_af
.Lx1711_0:
 .quad .Lx1711_0_s
.Lx1711_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1702_n5_α:
 mov rax, qword ptr [1879055712]
 mov rdx, qword ptr [1879055720]
 cmp eax, 3
 jne .Lx1712_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1712_10
.Lx1712_9:
 xor eax, eax
.Lx1712_10:
 test rax, rax
 jz .Lx1712_0
 mov r8d, 0
 lea rcx, [rip + .Lx1712_4]
 lea rdx, [rip + .Lx1712_5]
 jmp rax
.Lx1712_4:
 jmp xchain1702_n0_as
.Lx1712_5:
 jmp xchain1702_n0_af
.Lx1712_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S68]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1712_2:
 test rax, rax
 je .Lx1712_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1712_7]
 lea rdx, [rip + .Lx1712_8]
 jmp rax
.Lx1712_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1712_2
.Lx1712_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1712_2
.Lx1712_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1702_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1712_6]
 sub rsp, 8
 push rax
 jmp xchain1702_n0_as
.Lx1712_6:
 add rsp, 16
 jmp xchain1702_n0_af
 xchain1702_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1702_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1702_n0_as
 xchain1702_n6_β:
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
 jmp xchain1702_n12_α
xchain1702_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1702_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1702_n0_as
xchain1702_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1714_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1702_n12_β
.Lx1714_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1702_n0_af
 xchain1702_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1716_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1716_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1716_6]
 lea rdx, [rip + .Lx1716_7]
 jmp rax
.Lx1716_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1716_2
.Lx1716_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1716_2
.Lx1716_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1716_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1716_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1716_3]
 lea rdx, [rip + .Lx1716_4]
 jmp rax
.Lx1716_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1716_2
.Lx1716_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1716_2
.Lx1716_1:
 call rt_faildescr@PLT
.Lx1716_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1702_n0_af
 jmp xchain1702_n14_α
 xchain1702_n7_β:
 jmp xchain1702_n0_af
.Lx1716_0:
 .quad .Lx1716_0_s
.Lx1716_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1702_n8_α:
 mov rax, qword ptr [1879055744]
 mov rdx, qword ptr [1879055752]
 cmp eax, 3
 jne .Lx1717_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1717_10
.Lx1717_9:
 xor eax, eax
.Lx1717_10:
 test rax, rax
 jz .Lx1717_0
 mov r8d, 0
 lea rcx, [rip + .Lx1717_4]
 lea rdx, [rip + .Lx1717_5]
 jmp rax
.Lx1717_4:
 jmp xchain1702_n0_as
.Lx1717_5:
 jmp xchain1702_n0_af
.Lx1717_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S69]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1717_2:
 test rax, rax
 je .Lx1717_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1717_7]
 lea rdx, [rip + .Lx1717_8]
 jmp rax
.Lx1717_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1717_2
.Lx1717_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1717_2
.Lx1717_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1702_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1717_6]
 sub rsp, 8
 push rax
 jmp xchain1702_n0_as
.Lx1717_6:
 add rsp, 16
 jmp xchain1702_n0_af
 xchain1702_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1702_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1702_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1702_n0_af
 add r14d, 1
 jmp xchain1702_n0_as
 xchain1702_n9_β:
 sub r14d, 1
 jmp xchain1702_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1702_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1720_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1720_10
.Lx1720_9:
 xor eax, eax
.Lx1720_10:
 test rax, rax
 jz .Lx1720_0
 mov r8d, 0
 lea rcx, [rip + .Lx1720_4]
 lea rdx, [rip + .Lx1720_5]
 jmp rax
.Lx1720_4:
 jmp xchain1702_n3_α
.Lx1720_5:
 jmp xchain1702_n2_β
.Lx1720_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1720_2:
 test rax, rax
 je .Lx1720_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1720_7]
 lea rdx, [rip + .Lx1720_8]
 jmp rax
.Lx1720_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1720_2
.Lx1720_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1720_2
.Lx1720_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1702_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1720_6]
 sub rsp, 8
 push rax
 jmp xchain1702_n3_α
.Lx1720_6:
 add rsp, 16
 jmp xchain1702_n2_β
 xchain1702_n10_β:
 jmp qword ptr [rsp]
 xchain1702_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1722_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1722_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1722_6]
 lea rdx, [rip + .Lx1722_7]
 jmp rax
.Lx1722_6:
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
 jmp .Lx1722_2
.Lx1722_7:
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
 jmp .Lx1722_2
.Lx1722_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1722_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1722_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1722_3]
 lea rdx, [rip + .Lx1722_4]
 jmp rax
.Lx1722_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1722_2
.Lx1722_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1722_2
.Lx1722_1:
 call rt_faildescr@PLT
.Lx1722_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1702_n0_af
 jmp xchain1702_n15_α
 xchain1702_n11_β:
 jmp xchain1702_n0_af
.Lx1722_0:
 .quad .Lx1722_0_s
.Lx1722_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1702_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1702_n16_α
xchain1702_n12_as:
 jmp xchain1702_n6_as
 xchain1702_n12_β:
 jmp xchain1702_n17_β
xchain1702_n12_af:
 jmp xchain1702_n6_af
# IR_LIT_STRING
 xchain1702_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1725_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1702_n18_α
 xchain1702_n13_β:
 jmp xchain1702_n20_af
.Lx1725_0:
 .quad .Lx1725_0_s
.Lx1725_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1702_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055744], rax
 mov qword ptr [1879055752], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1702_n8_α
# IR_ASSIGN gva
 xchain1702_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055712], rax
 mov qword ptr [1879055720], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1702_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1702_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1728_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1728_10
.Lx1728_9:
 xor eax, eax
.Lx1728_10:
 test rax, rax
 jz .Lx1728_0
 mov r8d, 0
 lea rcx, [rip + .Lx1728_4]
 lea rdx, [rip + .Lx1728_5]
 jmp rax
.Lx1728_4:
 jmp xchain1702_n17_α
.Lx1728_5:
 jmp xchain1702_n12_af
.Lx1728_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1728_2:
 test rax, rax
 je .Lx1728_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1728_7]
 lea rdx, [rip + .Lx1728_8]
 jmp rax
.Lx1728_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1728_2
.Lx1728_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1728_2
.Lx1728_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1702_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1728_6]
 sub rsp, 8
 push rax
 jmp xchain1702_n17_α
.Lx1728_6:
 add rsp, 16
 jmp xchain1702_n12_af
 xchain1702_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1702_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1702_n19_α
xchain1702_n17_as:
 jmp xchain1702_n12_as
 xchain1702_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1702_n19_β
 jmp xchain1702_n20_β
xchain1702_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1702_n20_α
 jmp xchain1702_n16_β
 xchain1702_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1732_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1732_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1732_6]
 lea rdx, [rip + .Lx1732_7]
 jmp rax
.Lx1732_6:
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
 jmp .Lx1732_2
.Lx1732_7:
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
 jmp .Lx1732_2
.Lx1732_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1732_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1732_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1732_3]
 lea rdx, [rip + .Lx1732_4]
 jmp rax
.Lx1732_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1732_2
.Lx1732_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1732_2
.Lx1732_1:
 call rt_faildescr@PLT
.Lx1732_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1702_n20_af
 jmp xchain1702_n21_α
 xchain1702_n18_β:
 jmp xchain1702_n20_af
.Lx1732_0:
 .quad .Lx1732_0_s
.Lx1732_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1702_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1733_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1733_10
.Lx1733_9:
 xor eax, eax
.Lx1733_10:
 test rax, rax
 jz .Lx1733_0
 mov r8d, 0
 lea rcx, [rip + .Lx1733_4]
 lea rdx, [rip + .Lx1733_5]
 jmp rax
.Lx1733_4:
 jmp xchain1702_n17_as
.Lx1733_5:
 jmp xchain1702_n17_af
.Lx1733_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1733_2:
 test rax, rax
 je .Lx1733_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1733_7]
 lea rdx, [rip + .Lx1733_8]
 jmp rax
.Lx1733_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1733_2
.Lx1733_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1733_2
.Lx1733_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1702_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1733_6]
 sub rsp, 8
 push rax
 jmp xchain1702_n17_as
.Lx1733_6:
 add rsp, 16
 jmp xchain1702_n17_af
 xchain1702_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1702_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1702_n22_α
xchain1702_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1702_n13_α
 jmp xchain1702_n17_as
 xchain1702_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1702_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1702_n23_β
 cmp eax, 1
 je xchain1702_n24_β
 jmp xchain1702_n17_af
# IR_ASSIGN gva
 xchain1702_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055728], rax
 mov qword ptr [1879055736], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1702_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1702_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1702_n25_α
 xchain1702_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1702_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1702_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1702_n20_as
 xchain1702_n23_β:
 sub r12, 24
 jmp xchain1702_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1702_n24_α:
 mov rax, qword ptr [1879055728]
 mov rdx, qword ptr [1879055736]
 cmp eax, 3
 jne .Lx1741_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1741_10
.Lx1741_9:
 xor eax, eax
.Lx1741_10:
 test rax, rax
 jz .Lx1741_0
 mov r8d, 0
 lea rcx, [rip + .Lx1741_4]
 lea rdx, [rip + .Lx1741_5]
 jmp rax
.Lx1741_4:
 jmp xchain1702_n20_as
.Lx1741_5:
 jmp xchain1702_n20_af
.Lx1741_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S70]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1741_2:
 test rax, rax
 je .Lx1741_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1741_7]
 lea rdx, [rip + .Lx1741_8]
 jmp rax
.Lx1741_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1741_2
.Lx1741_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1741_2
.Lx1741_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1702_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1741_6]
 sub rsp, 8
 push rax
 jmp xchain1702_n20_as
.Lx1741_6:
 add rsp, 16
 jmp xchain1702_n20_af
 xchain1702_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1702_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1742_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1742_10
.Lx1742_9:
 xor eax, eax
.Lx1742_10:
 test rax, rax
 jz .Lx1742_0
 mov r8d, 0
 lea rcx, [rip + .Lx1742_4]
 lea rdx, [rip + .Lx1742_5]
 jmp rax
.Lx1742_4:
 jmp xchain1702_n23_α
.Lx1742_5:
 jmp xchain1702_n22_β
.Lx1742_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1742_2:
 test rax, rax
 je .Lx1742_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1742_7]
 lea rdx, [rip + .Lx1742_8]
 jmp rax
.Lx1742_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1742_2
.Lx1742_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1742_2
.Lx1742_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1702_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1742_6]
 sub rsp, 8
 push rax
 jmp xchain1702_n23_α
.Lx1742_6:
 add rsp, 16
 jmp xchain1702_n22_β
 xchain1702_n25_β:
 jmp qword ptr [rsp]
proc_PAT$78_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$78_γ
proc_PAT$78_scanfail:
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
jmp proc_PAT$78_attempt
8:
jmp proc_PAT$78_ω
proc_PAT$78_res:
add rsp, 8
pop rbp
proc_PAT$78_β:
jmp qword ptr [rbp + 784]
proc_PAT$78_γ:
push rbp
lea rax, [rip + proc_PAT$78_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$78_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$79_α
proc_PAT$79_α:
#=======================================================================================================================
    .global proc_PAT$79_α
    .global proc_PAT$79_β
    .global proc_PAT$79_γ
    .global proc_PAT$79_ω
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
proc_PAT$79_attempt:
proc_PAT$79_α_body:
lea rax, [rip + xchain1743_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1743_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1743_n1_α
 xchain1743_n0_β:
 add rsp, 16
 jmp proc_PAT$79_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1743_n1_α:
 jmp xchain1743_n3_α
xchain1743_n1_as:
 jmp xchain1743_n2_α
 xchain1743_n1_β:
 jmp xchain1743_n5_β
xchain1743_n1_af:
 jmp xchain1743_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1743_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$79_scanhit
 xchain1743_n2_β:
 sub r12, 24
 jmp xchain1743_n1_β
# IR_MATCH_LIT
 xchain1743_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1743_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1743_n1_af
 add r14d, 1
 jmp xchain1743_n4_α
 xchain1743_n3_β:
 sub r14d, 1
 jmp xchain1743_n1_af
# IR_MATCH_BAL
 xchain1743_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1743_n4_β:
.Lx1753_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1753_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1753_1
 add edx, 1
 jmp .Lx1753_2
.Lx1753_1:
 cmp esi, 41
 jne .Lx1753_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1753_3
.Lx1753_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1753_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1743_n5_α
.Lx1753_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1743_n3_β
# IR_MATCH_LIT
 xchain1743_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1743_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1743_n4_β
 add r14d, 1
 jmp xchain1743_n1_as
 xchain1743_n5_β:
 sub r14d, 1
 jmp xchain1743_n4_β
proc_PAT$79_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$79_γ
proc_PAT$79_scanfail:
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
jmp proc_PAT$79_attempt
8:
jmp proc_PAT$79_ω
proc_PAT$79_res:
add rsp, 8
pop rbp
proc_PAT$79_β:
jmp qword ptr [rbp + 160]
proc_PAT$79_γ:
push rbp
lea rax, [rip + proc_PAT$79_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$79_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$80_α
proc_PAT$80_α:
#=======================================================================================================================
    .global proc_PAT$80_α
    .global proc_PAT$80_β
    .global proc_PAT$80_γ
    .global proc_PAT$80_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$80_attempt:
proc_PAT$80_α_body:
lea rax, [rip + xchain1756_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1756_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1756_n1_α
 xchain1756_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$80_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1756_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1759_0
 mov r8d, 0
 lea rcx, [rip + .Lx1759_4]
 lea rdx, [rip + .Lx1759_5]
 jmp rax
.Lx1759_4:
 jmp xchain1756_n2_α
.Lx1759_5:
 jmp xchain1756_n0_β
.Lx1759_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1759_2:
 test rax, rax
 je .Lx1759_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1759_7]
 lea rdx, [rip + .Lx1759_8]
 jmp rax
.Lx1759_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1759_2
.Lx1759_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1759_2
.Lx1759_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1756_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1759_6]
 sub rsp, 8
 push rax
 jmp xchain1756_n2_α
.Lx1759_6:
 add rsp, 16
 jmp xchain1756_n0_β
 xchain1756_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1756_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S71]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$80_scanhit
 xchain1756_n2_β:
 sub r12, 24
 jmp xchain1756_n1_β
proc_PAT$80_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$80_γ
proc_PAT$80_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$80_attempt
8:
jmp proc_PAT$80_ω
proc_PAT$80_res:
add rsp, 8
pop rbp
proc_PAT$80_β:
jmp qword ptr [rbp + 96]
proc_PAT$80_γ:
push rbp
lea rax, [rip + proc_PAT$80_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$80_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$81_α
proc_PAT$81_α:
#=======================================================================================================================
    .global proc_PAT$81_α
    .global proc_PAT$81_β
    .global proc_PAT$81_γ
    .global proc_PAT$81_ω
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
proc_PAT$81_attempt:
proc_PAT$81_α_body:
lea rax, [rip + xchain1762_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1762_n0_α:
 mov rax, qword ptr [1879055760]
 mov rdx, qword ptr [1879055768]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1762_n1_α
# IR_COERCE_STRING
 xchain1762_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1762_n2_α
# IR_MATCH_SPAN
 xchain1762_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1767_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1767_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1767_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1767_0
.Lx1767_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1767_240
 add rsp, 16
 jmp proc_PAT$81_scanfail
.Lx1767_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$81_scanhit
 xchain1762_n2_β:
 xchain1762_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$81_scanfail
proc_PAT$81_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$81_γ
proc_PAT$81_scanfail:
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
jmp proc_PAT$81_attempt
8:
jmp proc_PAT$81_ω
proc_PAT$81_res:
add rsp, 8
pop rbp
proc_PAT$81_β:
jmp qword ptr [rbp + 112]
proc_PAT$81_γ:
push rbp
lea rax, [rip + proc_PAT$81_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$81_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$82_α
proc_PAT$82_α:
#=======================================================================================================================
    .global proc_PAT$82_α
    .global proc_PAT$82_β
    .global proc_PAT$82_γ
    .global proc_PAT$82_ω
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
proc_PAT$82_attempt:
proc_PAT$82_α_body:
lea rax, [rip + xchain1768_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1768_n0_α:
 mov rax, qword ptr [1879055792]
 mov rdx, qword ptr [1879055800]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1768_n1_α
 xchain1768_n0_β:
 jmp proc_PAT$82_scanfail
# IR_COERCE_STRING
 xchain1768_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1768_n2_α
 xchain1768_n1_β:
 jmp proc_PAT$82_scanfail
# IR_VAR
 xchain1768_n2_α:
 mov rax, qword ptr [1879055776]
 mov rdx, qword ptr [1879055784]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1768_n3_α
 xchain1768_n2_β:
 jmp proc_PAT$82_scanfail
# IR_COERCE_STRING
 xchain1768_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1768_n4_α
 xchain1768_n3_β:
 jmp proc_PAT$82_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1768_n4_α:
 jmp xchain1768_n5_α
xchain1768_n4_as:
 jmp proc_PAT$82_γ
 xchain1768_n4_β:
 jmp xchain1768_n6_β
xchain1768_n4_af:
 jmp proc_PAT$82_ω
# IR_MATCH_NOTANY
 xchain1768_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1768_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1768_n4_af
 add r14d, 1
 jmp xchain1768_n6_α
 xchain1768_n5_β:
 sub r14d, 1
 jmp xchain1768_n4_af
# IR_MATCH_BREAK
 xchain1768_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1779_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1779_240
 add rsp, 16
 jmp xchain1768_n5_β
.Lx1779_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1779_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1779_0
.Lx1779_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1768_n4_as
 xchain1768_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1768_n5_β
proc_PAT$82_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$82_γ
proc_PAT$82_scanfail:
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
jmp proc_PAT$82_attempt
8:
jmp proc_PAT$82_ω
proc_PAT$82_res:
add rsp, 8
pop rbp
proc_PAT$82_β:
jmp qword ptr [rbp + 224]
proc_PAT$82_γ:
push rbp
lea rax, [rip + proc_PAT$82_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$82_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$83_α
proc_PAT$83_α:
#=======================================================================================================================
    .global proc_PAT$83_α
    .global proc_PAT$83_β
    .global proc_PAT$83_γ
    .global proc_PAT$83_ω
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
proc_PAT$83_attempt:
proc_PAT$83_α_body:
lea rax, [rip + xchain1780_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1780_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1780_n1_α
xchain1780_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1780_n2_α
 cmp eax, 2
 je xchain1780_n4_α
 cmp eax, 3
 je xchain1780_n6_α
 cmp eax, 4
 je xchain1780_n7_α
 cmp eax, 5
 je xchain1780_n9_α
 jmp proc_PAT$83_γ
 xchain1780_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1780_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1780_n1_β
 cmp eax, 1
 je xchain1780_n3_β
 cmp eax, 2
 je xchain1780_n5_β
 cmp eax, 3
 je xchain1780_n6_β
 cmp eax, 4
 je xchain1780_n8_β
 cmp eax, 5
 je xchain1780_n9_β
 jmp proc_PAT$83_ω
# IR_MATCH_LIT
 xchain1780_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1780_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1780_n0_af
 add r14d, 1
 jmp xchain1780_n0_as
 xchain1780_n1_β:
 sub r14d, 1
 jmp xchain1780_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1780_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1780_n10_α
 xchain1780_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1780_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1780_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1780_n0_as
 xchain1780_n3_β:
 sub r12, 24
 jmp xchain1780_n10_β
# IR_LIT_STRING
 xchain1780_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1789_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1780_n11_α
 xchain1780_n4_β:
 jmp xchain1780_n0_af
.Lx1789_0:
 .quad .Lx1789_0_s
.Lx1789_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1780_n5_α:
 mov rax, qword ptr [1879055808]
 mov rdx, qword ptr [1879055816]
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
 jmp xchain1780_n0_as
.Lx1790_5:
 jmp xchain1780_n0_af
.Lx1790_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S72]
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
 js xchain1780_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1790_6]
 sub rsp, 8
 push rax
 jmp xchain1780_n0_as
.Lx1790_6:
 add rsp, 16
 jmp xchain1780_n0_af
 xchain1780_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1780_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1780_n0_as
 xchain1780_n6_β:
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
 jmp xchain1780_n12_α
xchain1780_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1780_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1780_n0_as
xchain1780_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1792_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1780_n12_β
.Lx1792_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1780_n0_af
 xchain1780_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1794_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1794_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1794_6]
 lea rdx, [rip + .Lx1794_7]
 jmp rax
.Lx1794_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1794_2
.Lx1794_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1794_2
.Lx1794_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1794_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1794_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1794_3]
 lea rdx, [rip + .Lx1794_4]
 jmp rax
.Lx1794_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1794_2
.Lx1794_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1794_2
.Lx1794_1:
 call rt_faildescr@PLT
.Lx1794_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1780_n0_af
 jmp xchain1780_n14_α
 xchain1780_n7_β:
 jmp xchain1780_n0_af
.Lx1794_0:
 .quad .Lx1794_0_s
.Lx1794_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1780_n8_α:
 mov rax, qword ptr [1879055840]
 mov rdx, qword ptr [1879055848]
 cmp eax, 3
 jne .Lx1795_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1795_10
.Lx1795_9:
 xor eax, eax
.Lx1795_10:
 test rax, rax
 jz .Lx1795_0
 mov r8d, 0
 lea rcx, [rip + .Lx1795_4]
 lea rdx, [rip + .Lx1795_5]
 jmp rax
.Lx1795_4:
 jmp xchain1780_n0_as
.Lx1795_5:
 jmp xchain1780_n0_af
.Lx1795_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S73]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1795_2:
 test rax, rax
 je .Lx1795_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1795_7]
 lea rdx, [rip + .Lx1795_8]
 jmp rax
.Lx1795_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1795_2
.Lx1795_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1795_2
.Lx1795_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1780_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1795_6]
 sub rsp, 8
 push rax
 jmp xchain1780_n0_as
.Lx1795_6:
 add rsp, 16
 jmp xchain1780_n0_af
 xchain1780_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1780_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1780_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1780_n0_af
 add r14d, 1
 jmp xchain1780_n0_as
 xchain1780_n9_β:
 sub r14d, 1
 jmp xchain1780_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1780_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1798_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1798_10
.Lx1798_9:
 xor eax, eax
.Lx1798_10:
 test rax, rax
 jz .Lx1798_0
 mov r8d, 0
 lea rcx, [rip + .Lx1798_4]
 lea rdx, [rip + .Lx1798_5]
 jmp rax
.Lx1798_4:
 jmp xchain1780_n3_α
.Lx1798_5:
 jmp xchain1780_n2_β
.Lx1798_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1798_2:
 test rax, rax
 je .Lx1798_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1798_7]
 lea rdx, [rip + .Lx1798_8]
 jmp rax
.Lx1798_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1798_2
.Lx1798_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1798_2
.Lx1798_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1780_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1798_6]
 sub rsp, 8
 push rax
 jmp xchain1780_n3_α
.Lx1798_6:
 add rsp, 16
 jmp xchain1780_n2_β
 xchain1780_n10_β:
 jmp qword ptr [rsp]
 xchain1780_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1800_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1800_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1800_6]
 lea rdx, [rip + .Lx1800_7]
 jmp rax
.Lx1800_6:
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
 jmp .Lx1800_2
.Lx1800_7:
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
 jmp .Lx1800_2
.Lx1800_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1800_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1800_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1800_3]
 lea rdx, [rip + .Lx1800_4]
 jmp rax
.Lx1800_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1800_2
.Lx1800_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1800_2
.Lx1800_1:
 call rt_faildescr@PLT
.Lx1800_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1780_n0_af
 jmp xchain1780_n15_α
 xchain1780_n11_β:
 jmp xchain1780_n0_af
.Lx1800_0:
 .quad .Lx1800_0_s
.Lx1800_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1780_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1780_n16_α
xchain1780_n12_as:
 jmp xchain1780_n6_as
 xchain1780_n12_β:
 jmp xchain1780_n17_β
xchain1780_n12_af:
 jmp xchain1780_n6_af
# IR_LIT_STRING
 xchain1780_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1803_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1780_n18_α
 xchain1780_n13_β:
 jmp xchain1780_n20_af
.Lx1803_0:
 .quad .Lx1803_0_s
.Lx1803_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1780_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055840], rax
 mov qword ptr [1879055848], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1780_n8_α
# IR_ASSIGN gva
 xchain1780_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055808], rax
 mov qword ptr [1879055816], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1780_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1780_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1806_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1806_10
.Lx1806_9:
 xor eax, eax
.Lx1806_10:
 test rax, rax
 jz .Lx1806_0
 mov r8d, 0
 lea rcx, [rip + .Lx1806_4]
 lea rdx, [rip + .Lx1806_5]
 jmp rax
.Lx1806_4:
 jmp xchain1780_n17_α
.Lx1806_5:
 jmp xchain1780_n12_af
.Lx1806_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1806_2:
 test rax, rax
 je .Lx1806_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1806_7]
 lea rdx, [rip + .Lx1806_8]
 jmp rax
.Lx1806_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1806_2
.Lx1806_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1806_2
.Lx1806_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1780_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1806_6]
 sub rsp, 8
 push rax
 jmp xchain1780_n17_α
.Lx1806_6:
 add rsp, 16
 jmp xchain1780_n12_af
 xchain1780_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1780_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1780_n19_α
xchain1780_n17_as:
 jmp xchain1780_n12_as
 xchain1780_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1780_n19_β
 jmp xchain1780_n20_β
xchain1780_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1780_n20_α
 jmp xchain1780_n16_β
 xchain1780_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1810_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1810_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1810_6]
 lea rdx, [rip + .Lx1810_7]
 jmp rax
.Lx1810_6:
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
 jmp .Lx1810_2
.Lx1810_7:
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
 jmp .Lx1810_2
.Lx1810_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1810_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1810_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1810_3]
 lea rdx, [rip + .Lx1810_4]
 jmp rax
.Lx1810_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1810_2
.Lx1810_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1810_2
.Lx1810_1:
 call rt_faildescr@PLT
.Lx1810_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1780_n20_af
 jmp xchain1780_n21_α
 xchain1780_n18_β:
 jmp xchain1780_n20_af
.Lx1810_0:
 .quad .Lx1810_0_s
.Lx1810_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1780_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1811_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1811_10
.Lx1811_9:
 xor eax, eax
.Lx1811_10:
 test rax, rax
 jz .Lx1811_0
 mov r8d, 0
 lea rcx, [rip + .Lx1811_4]
 lea rdx, [rip + .Lx1811_5]
 jmp rax
.Lx1811_4:
 jmp xchain1780_n17_as
.Lx1811_5:
 jmp xchain1780_n17_af
.Lx1811_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1811_2:
 test rax, rax
 je .Lx1811_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1811_7]
 lea rdx, [rip + .Lx1811_8]
 jmp rax
.Lx1811_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1811_2
.Lx1811_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1811_2
.Lx1811_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1780_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1811_6]
 sub rsp, 8
 push rax
 jmp xchain1780_n17_as
.Lx1811_6:
 add rsp, 16
 jmp xchain1780_n17_af
 xchain1780_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1780_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1780_n22_α
xchain1780_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1780_n13_α
 jmp xchain1780_n17_as
 xchain1780_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1780_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1780_n23_β
 cmp eax, 1
 je xchain1780_n24_β
 jmp xchain1780_n17_af
# IR_ASSIGN gva
 xchain1780_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055824], rax
 mov qword ptr [1879055832], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1780_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1780_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1780_n25_α
 xchain1780_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1780_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1780_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1780_n20_as
 xchain1780_n23_β:
 sub r12, 24
 jmp xchain1780_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1780_n24_α:
 mov rax, qword ptr [1879055824]
 mov rdx, qword ptr [1879055832]
 cmp eax, 3
 jne .Lx1819_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1819_10
.Lx1819_9:
 xor eax, eax
.Lx1819_10:
 test rax, rax
 jz .Lx1819_0
 mov r8d, 0
 lea rcx, [rip + .Lx1819_4]
 lea rdx, [rip + .Lx1819_5]
 jmp rax
.Lx1819_4:
 jmp xchain1780_n20_as
.Lx1819_5:
 jmp xchain1780_n20_af
.Lx1819_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S74]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1819_2:
 test rax, rax
 je .Lx1819_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1819_7]
 lea rdx, [rip + .Lx1819_8]
 jmp rax
.Lx1819_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1819_2
.Lx1819_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1819_2
.Lx1819_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1780_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1819_6]
 sub rsp, 8
 push rax
 jmp xchain1780_n20_as
.Lx1819_6:
 add rsp, 16
 jmp xchain1780_n20_af
 xchain1780_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1780_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1820_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1820_10
.Lx1820_9:
 xor eax, eax
.Lx1820_10:
 test rax, rax
 jz .Lx1820_0
 mov r8d, 0
 lea rcx, [rip + .Lx1820_4]
 lea rdx, [rip + .Lx1820_5]
 jmp rax
.Lx1820_4:
 jmp xchain1780_n23_α
.Lx1820_5:
 jmp xchain1780_n22_β
.Lx1820_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1820_2:
 test rax, rax
 je .Lx1820_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1820_7]
 lea rdx, [rip + .Lx1820_8]
 jmp rax
.Lx1820_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1820_2
.Lx1820_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1820_2
.Lx1820_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1780_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1820_6]
 sub rsp, 8
 push rax
 jmp xchain1780_n23_α
.Lx1820_6:
 add rsp, 16
 jmp xchain1780_n22_β
 xchain1780_n25_β:
 jmp qword ptr [rsp]
proc_PAT$83_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$83_γ
proc_PAT$83_scanfail:
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
jmp proc_PAT$83_attempt
8:
jmp proc_PAT$83_ω
proc_PAT$83_res:
add rsp, 8
pop rbp
proc_PAT$83_β:
jmp qword ptr [rbp + 784]
proc_PAT$83_γ:
push rbp
lea rax, [rip + proc_PAT$83_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$83_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$84_α
proc_PAT$84_α:
#=======================================================================================================================
    .global proc_PAT$84_α
    .global proc_PAT$84_β
    .global proc_PAT$84_γ
    .global proc_PAT$84_ω
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
proc_PAT$84_attempt:
proc_PAT$84_α_body:
lea rax, [rip + xchain1821_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1821_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1821_n1_α
 xchain1821_n0_β:
 add rsp, 16
 jmp proc_PAT$84_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1821_n1_α:
 jmp xchain1821_n3_α
xchain1821_n1_as:
 jmp xchain1821_n2_α
 xchain1821_n1_β:
 jmp xchain1821_n5_β
xchain1821_n1_af:
 jmp xchain1821_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1821_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$84_scanhit
 xchain1821_n2_β:
 sub r12, 24
 jmp xchain1821_n1_β
# IR_MATCH_LIT
 xchain1821_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1821_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1821_n1_af
 add r14d, 1
 jmp xchain1821_n4_α
 xchain1821_n3_β:
 sub r14d, 1
 jmp xchain1821_n1_af
# IR_MATCH_BAL
 xchain1821_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1821_n4_β:
.Lx1831_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1831_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1831_1
 add edx, 1
 jmp .Lx1831_2
.Lx1831_1:
 cmp esi, 41
 jne .Lx1831_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1831_3
.Lx1831_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1831_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1821_n5_α
.Lx1831_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1821_n3_β
# IR_MATCH_LIT
 xchain1821_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1821_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1821_n4_β
 add r14d, 1
 jmp xchain1821_n1_as
 xchain1821_n5_β:
 sub r14d, 1
 jmp xchain1821_n4_β
proc_PAT$84_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$84_γ
proc_PAT$84_scanfail:
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
jmp proc_PAT$84_attempt
8:
jmp proc_PAT$84_ω
proc_PAT$84_res:
add rsp, 8
pop rbp
proc_PAT$84_β:
jmp qword ptr [rbp + 160]
proc_PAT$84_γ:
push rbp
lea rax, [rip + proc_PAT$84_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$84_ω:
mov rax, [rbp + 208]
lea rsp, [rbp + 224]
mov rbp, [rbp + 216]
jmp rax
  .globl proc_PAT$85_α
proc_PAT$85_α:
#=======================================================================================================================
    .global proc_PAT$85_α
    .global proc_PAT$85_β
    .global proc_PAT$85_γ
    .global proc_PAT$85_ω
  sub rsp, 160
  mov [rsp + 136], rcx
  mov [rsp + 144], rdx
  mov [rsp + 152], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 128
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 120], rsp
mov qword ptr [rbp + 128], r8
mov dword ptr [rbp + 120], r14d
proc_PAT$85_attempt:
proc_PAT$85_α_body:
lea rax, [rip + xchain1834_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain1834_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1834_n1_α
 xchain1834_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$85_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1834_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx1837_0
 mov r8d, 0
 lea rcx, [rip + .Lx1837_4]
 lea rdx, [rip + .Lx1837_5]
 jmp rax
.Lx1837_4:
 jmp xchain1834_n2_α
.Lx1837_5:
 jmp xchain1834_n0_β
.Lx1837_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1837_2:
 test rax, rax
 je .Lx1837_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1837_7]
 lea rdx, [rip + .Lx1837_8]
 jmp rax
.Lx1837_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1837_2
.Lx1837_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1837_2
.Lx1837_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1834_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx1837_6]
 sub rsp, 8
 push rax
 jmp xchain1834_n2_α
.Lx1837_6:
 add rsp, 16
 jmp xchain1834_n0_β
 xchain1834_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1834_n2_α:
 lea rdi, [rbp + 48]
 call rt_cap_top@PLT
 lea rcx, [rip + .S75]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$85_scanhit
 xchain1834_n2_β:
 sub r12, 24
 jmp xchain1834_n1_β
proc_PAT$85_scanhit:
cmp qword ptr [rbp + 128], 1
jne 7f
mov ecx, dword ptr [rbp + 120]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$85_γ
proc_PAT$85_scanfail:
cmp qword ptr [rbp + 128], 1
jne 8f
mov eax, dword ptr [rbp + 120]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 120], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$85_attempt
8:
jmp proc_PAT$85_ω
proc_PAT$85_res:
add rsp, 8
pop rbp
proc_PAT$85_β:
jmp qword ptr [rbp + 96]
proc_PAT$85_γ:
push rbp
lea rax, [rip + proc_PAT$85_res]
push rax
mov rax, [rbp + 136]
mov rbp, [rbp + 152]
jmp rax
proc_PAT$85_ω:
mov rax, [rbp + 144]
lea rsp, [rbp + 160]
mov rbp, [rbp + 152]
jmp rax
  .globl proc_PAT$86_α
proc_PAT$86_α:
#=======================================================================================================================
    .global proc_PAT$86_α
    .global proc_PAT$86_β
    .global proc_PAT$86_γ
    .global proc_PAT$86_ω
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
proc_PAT$86_attempt:
proc_PAT$86_α_body:
lea rax, [rip + xchain1840_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain1840_n0_α:
 mov rax, qword ptr [1879055856]
 mov rdx, qword ptr [1879055864]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain1840_n1_α
# IR_COERCE_STRING
 xchain1840_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain1840_n2_α
# IR_MATCH_SPAN
 xchain1840_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1845_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1845_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx1845_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1845_0
.Lx1845_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx1845_240
 add rsp, 16
 jmp proc_PAT$86_scanfail
.Lx1845_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$86_scanhit
 xchain1840_n2_β:
 xchain1840_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$86_scanfail
proc_PAT$86_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$86_γ
proc_PAT$86_scanfail:
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
jmp proc_PAT$86_attempt
8:
jmp proc_PAT$86_ω
proc_PAT$86_res:
add rsp, 8
pop rbp
proc_PAT$86_β:
jmp qword ptr [rbp + 112]
proc_PAT$86_γ:
push rbp
lea rax, [rip + proc_PAT$86_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$86_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$87_α
proc_PAT$87_α:
#=======================================================================================================================
    .global proc_PAT$87_α
    .global proc_PAT$87_β
    .global proc_PAT$87_γ
    .global proc_PAT$87_ω
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
proc_PAT$87_attempt:
proc_PAT$87_α_body:
lea rax, [rip + xchain1846_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain1846_n0_α:
 mov rax, qword ptr [1879055888]
 mov rdx, qword ptr [1879055896]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain1846_n1_α
 xchain1846_n0_β:
 jmp proc_PAT$87_scanfail
# IR_COERCE_STRING
 xchain1846_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain1846_n2_α
 xchain1846_n1_β:
 jmp proc_PAT$87_scanfail
# IR_VAR
 xchain1846_n2_α:
 mov rax, qword ptr [1879055872]
 mov rdx, qword ptr [1879055880]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain1846_n3_α
 xchain1846_n2_β:
 jmp proc_PAT$87_scanfail
# IR_COERCE_STRING
 xchain1846_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain1846_n4_α
 xchain1846_n3_β:
 jmp proc_PAT$87_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1846_n4_α:
 jmp xchain1846_n5_α
xchain1846_n4_as:
 jmp proc_PAT$87_γ
 xchain1846_n4_β:
 jmp xchain1846_n6_β
xchain1846_n4_af:
 jmp proc_PAT$87_ω
# IR_MATCH_NOTANY
 xchain1846_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain1846_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain1846_n4_af
 add r14d, 1
 jmp xchain1846_n6_α
 xchain1846_n5_β:
 sub r14d, 1
 jmp xchain1846_n4_af
# IR_MATCH_BREAK
 xchain1846_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx1857_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx1857_240
 add rsp, 16
 jmp xchain1846_n5_β
.Lx1857_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx1857_1
 add dword ptr [rsp + 0], 1
 jmp .Lx1857_0
.Lx1857_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1846_n4_as
 xchain1846_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain1846_n5_β
proc_PAT$87_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$87_γ
proc_PAT$87_scanfail:
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
jmp proc_PAT$87_attempt
8:
jmp proc_PAT$87_ω
proc_PAT$87_res:
add rsp, 8
pop rbp
proc_PAT$87_β:
jmp qword ptr [rbp + 224]
proc_PAT$87_γ:
push rbp
lea rax, [rip + proc_PAT$87_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$87_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_PAT$88_α
proc_PAT$88_α:
#=======================================================================================================================
    .global proc_PAT$88_α
    .global proc_PAT$88_β
    .global proc_PAT$88_γ
    .global proc_PAT$88_ω
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
proc_PAT$88_attempt:
proc_PAT$88_α_body:
lea rax, [rip + xchain1858_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain1858_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain1858_n1_α
xchain1858_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain1858_n2_α
 cmp eax, 2
 je xchain1858_n4_α
 cmp eax, 3
 je xchain1858_n6_α
 cmp eax, 4
 je xchain1858_n7_α
 cmp eax, 5
 je xchain1858_n9_α
 jmp proc_PAT$88_γ
 xchain1858_n0_β:
 mov dword ptr [rbp + 36], 6
xchain1858_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain1858_n1_β
 cmp eax, 1
 je xchain1858_n3_β
 cmp eax, 2
 je xchain1858_n5_β
 cmp eax, 3
 je xchain1858_n6_β
 cmp eax, 4
 je xchain1858_n8_β
 cmp eax, 5
 je xchain1858_n9_β
 jmp proc_PAT$88_ω
# IR_MATCH_LIT
 xchain1858_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1858_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1858_n0_af
 add r14d, 1
 jmp xchain1858_n0_as
 xchain1858_n1_β:
 sub r14d, 1
 jmp xchain1858_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain1858_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1858_n10_α
 xchain1858_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain1858_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1858_n3_α:
 lea rdi, [rbp + 96]
 call rt_cap_top@PLT
 lea rcx, [rip + .S2]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1858_n0_as
 xchain1858_n3_β:
 sub r12, 24
 jmp xchain1858_n10_β
# IR_LIT_STRING
 xchain1858_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx1867_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain1858_n11_α
 xchain1858_n4_β:
 jmp xchain1858_n0_af
.Lx1867_0:
 .quad .Lx1867_0_s
.Lx1867_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1858_n5_α:
 mov rax, qword ptr [1879055904]
 mov rdx, qword ptr [1879055912]
 cmp eax, 3
 jne .Lx1868_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1868_10
.Lx1868_9:
 xor eax, eax
.Lx1868_10:
 test rax, rax
 jz .Lx1868_0
 mov r8d, 0
 lea rcx, [rip + .Lx1868_4]
 lea rdx, [rip + .Lx1868_5]
 jmp rax
.Lx1868_4:
 jmp xchain1858_n0_as
.Lx1868_5:
 jmp xchain1858_n0_af
.Lx1868_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S76]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1868_2:
 test rax, rax
 je .Lx1868_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1868_7]
 lea rdx, [rip + .Lx1868_8]
 jmp rax
.Lx1868_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1868_2
.Lx1868_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1868_2
.Lx1868_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1858_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1868_6]
 sub rsp, 8
 push rax
 jmp xchain1858_n0_as
.Lx1868_6:
 add rsp, 16
 jmp xchain1858_n0_af
 xchain1858_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain1858_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain1858_n0_as
 xchain1858_n6_β:
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
 jmp xchain1858_n12_α
xchain1858_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain1858_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain1858_n0_as
xchain1858_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx1870_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain1858_n12_β
.Lx1870_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain1858_n0_af
 xchain1858_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1872_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1872_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1872_6]
 lea rdx, [rip + .Lx1872_7]
 jmp rax
.Lx1872_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1872_2
.Lx1872_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1872_2
.Lx1872_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1872_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1872_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1872_3]
 lea rdx, [rip + .Lx1872_4]
 jmp rax
.Lx1872_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1872_2
.Lx1872_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1872_2
.Lx1872_1:
 call rt_faildescr@PLT
.Lx1872_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain1858_n0_af
 jmp xchain1858_n14_α
 xchain1858_n7_β:
 jmp xchain1858_n0_af
.Lx1872_0:
 .quad .Lx1872_0_s
.Lx1872_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1858_n8_α:
 mov rax, qword ptr [1879055936]
 mov rdx, qword ptr [1879055944]
 cmp eax, 3
 jne .Lx1873_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1873_10
.Lx1873_9:
 xor eax, eax
.Lx1873_10:
 test rax, rax
 jz .Lx1873_0
 mov r8d, 0
 lea rcx, [rip + .Lx1873_4]
 lea rdx, [rip + .Lx1873_5]
 jmp rax
.Lx1873_4:
 jmp xchain1858_n0_as
.Lx1873_5:
 jmp xchain1858_n0_af
.Lx1873_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S77]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1873_2:
 test rax, rax
 je .Lx1873_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1873_7]
 lea rdx, [rip + .Lx1873_8]
 jmp rax
.Lx1873_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1873_2
.Lx1873_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1873_2
.Lx1873_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1858_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx1873_6]
 sub rsp, 8
 push rax
 jmp xchain1858_n0_as
.Lx1873_6:
 add rsp, 16
 jmp xchain1858_n0_af
 xchain1858_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain1858_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1858_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1858_n0_af
 add r14d, 1
 jmp xchain1858_n0_as
 xchain1858_n9_β:
 sub r14d, 1
 jmp xchain1858_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1858_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1876_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1876_10
.Lx1876_9:
 xor eax, eax
.Lx1876_10:
 test rax, rax
 jz .Lx1876_0
 mov r8d, 0
 lea rcx, [rip + .Lx1876_4]
 lea rdx, [rip + .Lx1876_5]
 jmp rax
.Lx1876_4:
 jmp xchain1858_n3_α
.Lx1876_5:
 jmp xchain1858_n2_β
.Lx1876_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1876_2:
 test rax, rax
 je .Lx1876_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1876_7]
 lea rdx, [rip + .Lx1876_8]
 jmp rax
.Lx1876_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1876_2
.Lx1876_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1876_2
.Lx1876_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1858_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx1876_6]
 sub rsp, 8
 push rax
 jmp xchain1858_n3_α
.Lx1876_6:
 add rsp, 16
 jmp xchain1858_n2_β
 xchain1858_n10_β:
 jmp qword ptr [rsp]
 xchain1858_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1878_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1878_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1878_6]
 lea rdx, [rip + .Lx1878_7]
 jmp rax
.Lx1878_6:
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
 jmp .Lx1878_2
.Lx1878_7:
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
 jmp .Lx1878_2
.Lx1878_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1878_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1878_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1878_3]
 lea rdx, [rip + .Lx1878_4]
 jmp rax
.Lx1878_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1878_2
.Lx1878_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1878_2
.Lx1878_1:
 call rt_faildescr@PLT
.Lx1878_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain1858_n0_af
 jmp xchain1858_n15_α
 xchain1858_n11_β:
 jmp xchain1858_n0_af
.Lx1878_0:
 .quad .Lx1878_0_s
.Lx1878_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain1858_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain1858_n16_α
xchain1858_n12_as:
 jmp xchain1858_n6_as
 xchain1858_n12_β:
 jmp xchain1858_n17_β
xchain1858_n12_af:
 jmp xchain1858_n6_af
# IR_LIT_STRING
 xchain1858_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx1881_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain1858_n18_α
 xchain1858_n13_β:
 jmp xchain1858_n20_af
.Lx1881_0:
 .quad .Lx1881_0_s
.Lx1881_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain1858_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055936], rax
 mov qword ptr [1879055944], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain1858_n8_α
# IR_ASSIGN gva
 xchain1858_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055904], rax
 mov qword ptr [1879055912], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain1858_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1858_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx1884_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1884_10
.Lx1884_9:
 xor eax, eax
.Lx1884_10:
 test rax, rax
 jz .Lx1884_0
 mov r8d, 0
 lea rcx, [rip + .Lx1884_4]
 lea rdx, [rip + .Lx1884_5]
 jmp rax
.Lx1884_4:
 jmp xchain1858_n17_α
.Lx1884_5:
 jmp xchain1858_n12_af
.Lx1884_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1884_2:
 test rax, rax
 je .Lx1884_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1884_7]
 lea rdx, [rip + .Lx1884_8]
 jmp rax
.Lx1884_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1884_2
.Lx1884_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1884_2
.Lx1884_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1858_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx1884_6]
 sub rsp, 8
 push rax
 jmp xchain1858_n17_α
.Lx1884_6:
 add rsp, 16
 jmp xchain1858_n12_af
 xchain1858_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain1858_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain1858_n19_α
xchain1858_n17_as:
 jmp xchain1858_n12_as
 xchain1858_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain1858_n19_β
 jmp xchain1858_n20_β
xchain1858_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain1858_n20_α
 jmp xchain1858_n16_β
 xchain1858_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1888_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1888_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1888_6]
 lea rdx, [rip + .Lx1888_7]
 jmp rax
.Lx1888_6:
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
 jmp .Lx1888_2
.Lx1888_7:
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
 jmp .Lx1888_2
.Lx1888_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1888_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1888_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1888_3]
 lea rdx, [rip + .Lx1888_4]
 jmp rax
.Lx1888_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1888_2
.Lx1888_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1888_2
.Lx1888_1:
 call rt_faildescr@PLT
.Lx1888_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain1858_n20_af
 jmp xchain1858_n21_α
 xchain1858_n18_β:
 jmp xchain1858_n20_af
.Lx1888_0:
 .quad .Lx1888_0_s
.Lx1888_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1858_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx1889_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1889_10
.Lx1889_9:
 xor eax, eax
.Lx1889_10:
 test rax, rax
 jz .Lx1889_0
 mov r8d, 0
 lea rcx, [rip + .Lx1889_4]
 lea rdx, [rip + .Lx1889_5]
 jmp rax
.Lx1889_4:
 jmp xchain1858_n17_as
.Lx1889_5:
 jmp xchain1858_n17_af
.Lx1889_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1889_2:
 test rax, rax
 je .Lx1889_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1889_7]
 lea rdx, [rip + .Lx1889_8]
 jmp rax
.Lx1889_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1889_2
.Lx1889_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1889_2
.Lx1889_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1858_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx1889_6]
 sub rsp, 8
 push rax
 jmp xchain1858_n17_as
.Lx1889_6:
 add rsp, 16
 jmp xchain1858_n17_af
 xchain1858_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain1858_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain1858_n22_α
xchain1858_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain1858_n13_α
 jmp xchain1858_n17_as
 xchain1858_n20_β:
 mov dword ptr [rbp + 468], 2
xchain1858_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain1858_n23_β
 cmp eax, 1
 je xchain1858_n24_β
 jmp xchain1858_n17_af
# IR_ASSIGN gva
 xchain1858_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055920], rax
 mov qword ptr [1879055928], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain1858_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain1858_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain1858_n25_α
 xchain1858_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain1858_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1858_n23_α:
 lea rdi, [rbp + 512]
 call rt_cap_top@PLT
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1858_n20_as
 xchain1858_n23_β:
 sub r12, 24
 jmp xchain1858_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1858_n24_α:
 mov rax, qword ptr [1879055920]
 mov rdx, qword ptr [1879055928]
 cmp eax, 3
 jne .Lx1897_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1897_10
.Lx1897_9:
 xor eax, eax
.Lx1897_10:
 test rax, rax
 jz .Lx1897_0
 mov r8d, 0
 lea rcx, [rip + .Lx1897_4]
 lea rdx, [rip + .Lx1897_5]
 jmp rax
.Lx1897_4:
 jmp xchain1858_n20_as
.Lx1897_5:
 jmp xchain1858_n20_af
.Lx1897_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S78]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1897_2:
 test rax, rax
 je .Lx1897_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1897_7]
 lea rdx, [rip + .Lx1897_8]
 jmp rax
.Lx1897_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1897_2
.Lx1897_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1897_2
.Lx1897_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1858_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx1897_6]
 sub rsp, 8
 push rax
 jmp xchain1858_n20_as
.Lx1897_6:
 add rsp, 16
 jmp xchain1858_n20_af
 xchain1858_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1858_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx1898_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1898_10
.Lx1898_9:
 xor eax, eax
.Lx1898_10:
 test rax, rax
 jz .Lx1898_0
 mov r8d, 0
 lea rcx, [rip + .Lx1898_4]
 lea rdx, [rip + .Lx1898_5]
 jmp rax
.Lx1898_4:
 jmp xchain1858_n23_α
.Lx1898_5:
 jmp xchain1858_n22_β
.Lx1898_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1898_2:
 test rax, rax
 je .Lx1898_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1898_7]
 lea rdx, [rip + .Lx1898_8]
 jmp rax
.Lx1898_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1898_2
.Lx1898_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1898_2
.Lx1898_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1858_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx1898_6]
 sub rsp, 8
 push rax
 jmp xchain1858_n23_α
.Lx1898_6:
 add rsp, 16
 jmp xchain1858_n22_β
 xchain1858_n25_β:
 jmp qword ptr [rsp]
proc_PAT$88_scanhit:
cmp qword ptr [rbp + 816], 1
jne 7f
mov ecx, dword ptr [rbp + 808]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$88_γ
proc_PAT$88_scanfail:
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
jmp proc_PAT$88_attempt
8:
jmp proc_PAT$88_ω
proc_PAT$88_res:
add rsp, 8
pop rbp
proc_PAT$88_β:
jmp qword ptr [rbp + 784]
proc_PAT$88_γ:
push rbp
lea rax, [rip + proc_PAT$88_res]
push rax
mov rax, [rbp + 824]
mov rbp, [rbp + 840]
jmp rax
proc_PAT$88_ω:
mov rax, [rbp + 832]
lea rsp, [rbp + 848]
mov rbp, [rbp + 840]
jmp rax
  .globl proc_PAT$89_α
proc_PAT$89_α:
#=======================================================================================================================
    .global proc_PAT$89_α
    .global proc_PAT$89_β
    .global proc_PAT$89_γ
    .global proc_PAT$89_ω
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
proc_PAT$89_attempt:
proc_PAT$89_α_body:
lea rax, [rip + xchain1899_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1899_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1899_n1_α
 xchain1899_n0_β:
 add rsp, 16
 jmp proc_PAT$89_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1899_n1_α:
 jmp xchain1899_n3_α
xchain1899_n1_as:
 jmp xchain1899_n2_α
 xchain1899_n1_β:
 jmp xchain1899_n5_β
xchain1899_n1_af:
 jmp xchain1899_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1899_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S10]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$89_scanhit
 xchain1899_n2_β:
 sub r12, 24
 jmp xchain1899_n1_β
# IR_MATCH_LIT
 xchain1899_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1899_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain1899_n1_af
 add r14d, 1
 jmp xchain1899_n4_α
 xchain1899_n3_β:
 sub r14d, 1
 jmp xchain1899_n1_af
# IR_MATCH_BAL
 xchain1899_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain1899_n4_β:
.Lx1909_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx1909_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx1909_1
 add edx, 1
 jmp .Lx1909_2
.Lx1909_1:
 cmp esi, 41
 jne .Lx1909_2
 sub edx, 1
 cmp edx, 0
 jl .Lx1909_3
.Lx1909_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx1909_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain1899_n5_α
.Lx1909_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain1899_n3_β
# IR_MATCH_LIT
 xchain1899_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain1899_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain1899_n4_β
 add r14d, 1
 jmp xchain1899_n1_as
 xchain1899_n5_β:
 sub r14d, 1
 jmp xchain1899_n4_β
proc_PAT$89_scanhit:
cmp qword ptr [rbp + 192], 1
jne 7f
mov ecx, dword ptr [rbp + 184]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$89_γ
proc_PAT$89_scanfail:
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
jmp proc_PAT$89_attempt
8:
jmp proc_PAT$89_ω
proc_PAT$89_res:
add rsp, 8
pop rbp
proc_PAT$89_β:
jmp qword ptr [rbp + 160]
proc_PAT$89_γ:
push rbp
lea rax, [rip + proc_PAT$89_res]
push rax
mov rax, [rbp + 200]
mov rbp, [rbp + 216]
jmp rax
proc_PAT$89_ω:
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 13168
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 144
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
  mov esi, 256
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
  mov esi, 816
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
  mov esi, 192
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
  mov esi, 128
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
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname107: .string "PAT$72"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname107]
  lea rsi, [rip + proc_PAT$72_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname108: .string "PAT$73"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname108]
  lea rsi, [rip + proc_PAT$73_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname109: .string "PAT$74"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname109]
  lea rsi, [rip + proc_PAT$74_α]
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
  .Lstartup_pname110: .string "PAT$75"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname110]
  lea rsi, [rip + proc_PAT$75_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname111: .string "PAT$76"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname111]
  lea rsi, [rip + proc_PAT$76_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname112: .string "PAT$77"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname112]
  lea rsi, [rip + proc_PAT$77_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname113: .string "PAT$78"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname113]
  lea rsi, [rip + proc_PAT$78_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname113]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname113]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname113]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname114: .string "PAT$79"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname114]
  lea rsi, [rip + proc_PAT$79_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname114]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname114]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname114]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname115: .string "PAT$80"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname115]
  lea rsi, [rip + proc_PAT$80_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname116: .string "PAT$81"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname116]
  lea rsi, [rip + proc_PAT$81_α]
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
  .Lstartup_pname117: .string "PAT$82"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname117]
  lea rsi, [rip + proc_PAT$82_α]
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
  .Lstartup_pname118: .string "PAT$83"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname118]
  lea rsi, [rip + proc_PAT$83_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname119: .string "PAT$84"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname119]
  lea rsi, [rip + proc_PAT$84_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname119]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname119]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname119]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname120: .string "PAT$85"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname120]
  lea rsi, [rip + proc_PAT$85_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname120]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname120]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname120]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname121: .string "PAT$86"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname121]
  lea rsi, [rip + proc_PAT$86_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname121]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname121]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname121]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname122: .string "PAT$87"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname122]
  lea rsi, [rip + proc_PAT$87_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname122]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname122]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname122]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname123: .string "PAT$88"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname123]
  lea rsi, [rip + proc_PAT$88_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname123]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname123]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname123]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname124: .string "PAT$89"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname124]
  lea rsi, [rip + proc_PAT$89_α]
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
  .Lgvan40: .string "bank"
  .Lgvan41: .string "delim"
  .Lgvan42: .string "word"
  .Lgvan43: .string "group"
  .Lgvan44: .string "PATTMP$P0"
  .Lgvan45: .string "wrd"
  .Lgvan46: .string "PATTMP$P1"
  .Lgvan47: .string "PATTMP$P2"
  .Lgvan48: .string "spat"
  .Lgvan49: .string "item"
  .Lgvan50: .string "line"
  .Lgvan51: .string "src"
  .Lgvan52: .string "PATTMP$P3"
  .Lgvan53: .string "PATTMP$P4"
  .Lgvan54: .string "PATTMP$P5"
  .Lgvan55: .string "PATTMP$P6"
  .Lgvan56: .string "PATTMP$P7"
  .Lgvan57: .string "PATTMP$P8"
  .Lgvan58: .string "PATTMP$P9"
  .Lgvan59: .string "PATTMP$P10"
  .Lgvan60: .string "PATTMP$P11"
  .Lgvan61: .string "PATTMP$P12"
  .Lgvan62: .string "PATTMP$P13"
  .Lgvan63: .string "PATTMP$P14"
  .Lgvan64: .string "PATTMP$P15"
  .Lgvan65: .string "PATTMP$P16"
  .Lgvan66: .string "PATTMP$P17"
  .Lgvan67: .string "PATTMP$P18"
  .Lgvan68: .string "PATTMP$P19"
  .Lgvan69: .string "PATTMP$P20"
  .Lgvan70: .string "PATTMP$P21"
  .Lgvan71: .string "PATTMP$P22"
  .Lgvan72: .string "PATTMP$P23"
  .Lgvan73: .string "PATTMP$P24"
  .Lgvan74: .string "PATTMP$P25"
  .Lgvan75: .string "PATTMP$P26"
  .Lgvan76: .string "PATTMP$P27"
  .Lgvan77: .string "PATTMP$P28"
  .Lgvan78: .string "PATTMP$P29"
  .Lgvan79: .string "PATTMP$P30"
  .Lgvan80: .string "PATTMP$P31"
  .Lgvan81: .string "PATTMP$P32"
  .Lgvan82: .string "PATTMP$P33"
  .Lgvan83: .string "PATTMP$P34"
  .Lgvan84: .string "PATTMP$P35"
  .Lgvan85: .string "PATTMP$P36"
  .Lgvan86: .string "PATTMP$P37"
  .Lgvan87: .string "PATTMP$P38"
  .Lgvan88: .string "PATTMP$P39"
  .Lgvan89: .string "PATTMP$P40"
  .Lgvan90: .string "PATTMP$P41"
  .Lgvan91: .string "PATTMP$P42"
  .Lgvan92: .string "PATTMP$P43"
  .Lgvan93: .string "PATTMP$P44"
  .Lgvan94: .string "PATTMP$P45"
  .Lgvan95: .string "PATTMP$P46"
  .Lgvan96: .string "PATTMP$P47"
  .Lgvan97: .string "PATTMP$P48"
  .Lgvan98: .string "PATTMP$P49"
  .Lgvan99: .string "PATTMP$P50"
  .Lgvan100: .string "PATTMP$P51"
  .Lgvan101: .string "PATTMP$P52"
  .Lgvan102: .string "PATTMP$P53"
  .Lgvan103: .string "EXPR$0"
  .Lgvan104: .string "EXPR$1"
  .Lgvan105: .string "EXPR$2"
  .Lgvan106: .string "EXPR$3"
  .Lgvan107: .string "EXPR$4"
  .Lgvan108: .string "EXPR$5"
  .Lgvan109: .string "EXPR$6"
  .Lgvan110: .string "EXPR$7"
  .Lgvan111: .string "EXPR$8"
  .Lgvan112: .string "EXPR$9"
  .Lgvan113: .string "EXPR$10"
  .Lgvan114: .string "EXPR$11"
  .Lgvan115: .string "EXPR$12"
  .Lgvan116: .string "EXPR$13"
  .Lgvan117: .string "EXPR$14"
  .Lgvan118: .string "EXPR$15"
  .Lgvan119: .string "EXPR$16"
  .Lgvan120: .string "EXPR$17"
  .Lgvan121: .string "PAT$1$A0"
  .Lgvan122: .string "PAT$2$A0"
  .Lgvan123: .string "PAT$2$A1"
  .Lgvan124: .string "PATTMP$P54"
  .Lgvan125: .string "PATTMP$P55"
  .Lgvan126: .string "PATTMP$P56"
  .Lgvan127: .string "PAT$6$A0"
  .Lgvan128: .string "PAT$7$A0"
  .Lgvan129: .string "PAT$7$A1"
  .Lgvan130: .string "PATTMP$P57"
  .Lgvan131: .string "PATTMP$P58"
  .Lgvan132: .string "PATTMP$P59"
  .Lgvan133: .string "PAT$11$A0"
  .Lgvan134: .string "PAT$12$A0"
  .Lgvan135: .string "PAT$12$A1"
  .Lgvan136: .string "PATTMP$P60"
  .Lgvan137: .string "PATTMP$P61"
  .Lgvan138: .string "PATTMP$P62"
  .Lgvan139: .string "PAT$16$A0"
  .Lgvan140: .string "PAT$17$A0"
  .Lgvan141: .string "PAT$17$A1"
  .Lgvan142: .string "PATTMP$P63"
  .Lgvan143: .string "PATTMP$P64"
  .Lgvan144: .string "PATTMP$P65"
  .Lgvan145: .string "PAT$21$A0"
  .Lgvan146: .string "PAT$22$A0"
  .Lgvan147: .string "PAT$22$A1"
  .Lgvan148: .string "PATTMP$P66"
  .Lgvan149: .string "PATTMP$P67"
  .Lgvan150: .string "PATTMP$P68"
  .Lgvan151: .string "PAT$26$A0"
  .Lgvan152: .string "PAT$27$A0"
  .Lgvan153: .string "PAT$27$A1"
  .Lgvan154: .string "PATTMP$P69"
  .Lgvan155: .string "PATTMP$P70"
  .Lgvan156: .string "PATTMP$P71"
  .Lgvan157: .string "PAT$31$A0"
  .Lgvan158: .string "PAT$32$A0"
  .Lgvan159: .string "PAT$32$A1"
  .Lgvan160: .string "PATTMP$P72"
  .Lgvan161: .string "PATTMP$P73"
  .Lgvan162: .string "PATTMP$P74"
  .Lgvan163: .string "PAT$36$A0"
  .Lgvan164: .string "PAT$37$A0"
  .Lgvan165: .string "PAT$37$A1"
  .Lgvan166: .string "PATTMP$P75"
  .Lgvan167: .string "PATTMP$P76"
  .Lgvan168: .string "PATTMP$P77"
  .Lgvan169: .string "PAT$41$A0"
  .Lgvan170: .string "PAT$42$A0"
  .Lgvan171: .string "PAT$42$A1"
  .Lgvan172: .string "PATTMP$P78"
  .Lgvan173: .string "PATTMP$P79"
  .Lgvan174: .string "PATTMP$P80"
  .Lgvan175: .string "PAT$46$A0"
  .Lgvan176: .string "PAT$47$A0"
  .Lgvan177: .string "PAT$47$A1"
  .Lgvan178: .string "PATTMP$P81"
  .Lgvan179: .string "PATTMP$P82"
  .Lgvan180: .string "PATTMP$P83"
  .Lgvan181: .string "PAT$51$A0"
  .Lgvan182: .string "PAT$52$A0"
  .Lgvan183: .string "PAT$52$A1"
  .Lgvan184: .string "PATTMP$P84"
  .Lgvan185: .string "PATTMP$P85"
  .Lgvan186: .string "PATTMP$P86"
  .Lgvan187: .string "PAT$56$A0"
  .Lgvan188: .string "PAT$57$A0"
  .Lgvan189: .string "PAT$57$A1"
  .Lgvan190: .string "PATTMP$P87"
  .Lgvan191: .string "PATTMP$P88"
  .Lgvan192: .string "PATTMP$P89"
  .Lgvan193: .string "PAT$61$A0"
  .Lgvan194: .string "PAT$62$A0"
  .Lgvan195: .string "PAT$62$A1"
  .Lgvan196: .string "PATTMP$P90"
  .Lgvan197: .string "PATTMP$P91"
  .Lgvan198: .string "PATTMP$P92"
  .Lgvan199: .string "PAT$66$A0"
  .Lgvan200: .string "PAT$67$A0"
  .Lgvan201: .string "PAT$67$A1"
  .Lgvan202: .string "PATTMP$P93"
  .Lgvan203: .string "PATTMP$P94"
  .Lgvan204: .string "PATTMP$P95"
  .Lgvan205: .string "PAT$71$A0"
  .Lgvan206: .string "PAT$72$A0"
  .Lgvan207: .string "PAT$72$A1"
  .Lgvan208: .string "PATTMP$P96"
  .Lgvan209: .string "PATTMP$P97"
  .Lgvan210: .string "PATTMP$P98"
  .Lgvan211: .string "PAT$76$A0"
  .Lgvan212: .string "PAT$77$A0"
  .Lgvan213: .string "PAT$77$A1"
  .Lgvan214: .string "PATTMP$P99"
  .Lgvan215: .string "PATTMP$P100"
  .Lgvan216: .string "PATTMP$P101"
  .Lgvan217: .string "PAT$81$A0"
  .Lgvan218: .string "PAT$82$A0"
  .Lgvan219: .string "PAT$82$A1"
  .Lgvan220: .string "PATTMP$P102"
  .Lgvan221: .string "PATTMP$P103"
  .Lgvan222: .string "PATTMP$P104"
  .Lgvan223: .string "PAT$86$A0"
  .Lgvan224: .string "PAT$87$A0"
  .Lgvan225: .string "PAT$87$A1"
  .Lgvan226: .string "PATTMP$P105"
  .Lgvan227: .string "PATTMP$P106"
  .Lgvan228: .string "PATTMP$P107"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 229
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 229
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
  mov qword ptr [rsp + 13160], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_KEYWORD_SNOBOL4_read
 xchain1912_n0_α:
 mov rdi, qword ptr [rip + .Lx1913_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain1912_n1_α
 xchain1912_n0_β:
 jmp xchain1912_n8_α
.Lx1913_0:
 .quad .Lx1913_0_s
.Lx1913_0_s:
 .string "ALPHABET"
# IR_MATCH_HEAD
 xchain1912_n1_α:
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
.Lx1915_0:
 mov r14d, dword ptr [rsp + 0]
 jmp xchain1912_n2_α
 xchain1912_n1_β:
 add dword ptr [rsp + 0], 1
 mov eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jg .Lx1915_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx1915_1
 jmp .Lx1915_0
.Lx1915_1:
 mov rax, qword ptr [rsp + 8]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 16]
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain1912_n8_α
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain1912_n2_α:
 jmp xchain1912_n4_α
xchain1912_n2_as:
 jmp xchain1912_n3_α
 xchain1912_n2_β:
 jmp xchain1912_n7_β
xchain1912_n2_af:
 jmp xchain1912_n1_β
# IR_MATCH_RELEASE
 xchain1912_n3_α:
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
.Lx1919_1:
 test rax, rax
 je .Lx1919_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1919_3]
 lea rdx, [rip + .Lx1919_4]
 jmp rax
.Lx1919_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1919_1
.Lx1919_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1919_1
.Lx1919_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain1912_n8_α
# IR_LIT_INTEGER
 xchain1912_n4_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx1920_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain1912_n5_α
 xchain1912_n4_β:
 jmp xchain1912_n2_af
.Lx1920_0:
 .quad 10
# IR_MATCH_POS
 xchain1912_n5_α:
 mov rax, 10
 cmp r14d, eax
 jne xchain1912_n2_af
 jmp xchain1912_n6_α
 xchain1912_n5_β:
 jmp xchain1912_n2_af
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain1912_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain1912_n9_α
 xchain1912_n6_β:
 add rsp, 16
 jmp xchain1912_n2_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain1912_n7_α:
 mov eax, dword ptr [rsp + 0]
 lea rcx, [rip + .S79]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain1912_n2_as
 xchain1912_n7_β:
 sub r12, 24
 jmp xchain1912_n9_β
# IR_LIT_STRING
 xchain1912_n8_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx1926_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain1912_n10_α
 xchain1912_n8_β:
 jmp xchain1912_n11_α
.Lx1926_0:
 .quad .Lx1926_0_s
.Lx1926_0_s:
 .string "list(head,tail)"
# IR_MATCH_LEN
 xchain1912_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jle .Lx1927_240
 add rsp, 16
 jmp xchain1912_n2_af
.Lx1927_240:
 add r14d, 1
 jmp xchain1912_n7_α
 xchain1912_n9_β:
 sub r14d, 1
 add rsp, 16
 jmp xchain1912_n2_af
 xchain1912_n10_α:
# BOX IR_CALL DATA(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn1929: .string "DATA"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1929]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain1912_n11_α
 jmp xchain1912_n11_α
 xchain1912_n10_β:
 jmp xchain1912_n11_α
# IR_LIT_INTEGER
 xchain1912_n11_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx1930_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain1912_n12_α
 xchain1912_n11_β:
 jmp xchain1912_n13_α
.Lx1930_0:
 .quad 0
# IR_ASSIGN gva
 xchain1912_n12_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain1912_n13_α
 xchain1912_n12_β:
 jmp xchain1912_n13_α
 xchain1912_n13_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1933: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1933]
 lea rsi, [rbp + 480]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain1912_n15_α
 jmp xchain1912_n14_α
 xchain1912_n13_β:
 jmp xchain1912_n15_α
# IR_ASSIGN gva
 xchain1912_n14_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain1912_n15_α
 xchain1912_n14_β:
 jmp xchain1912_n15_α
 xchain1912_n15_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1936: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1936]
 lea rsi, [rbp + 528]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain1912_n17_α
 jmp xchain1912_n16_α
 xchain1912_n15_β:
 jmp xchain1912_n17_α
# IR_ASSIGN gva
 xchain1912_n16_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain1912_n17_α
 xchain1912_n16_β:
 jmp xchain1912_n17_α
 xchain1912_n17_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn1939: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1939]
 lea rsi, [rbp + 576]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain1912_n19_α
 jmp xchain1912_n18_α
 xchain1912_n17_β:
 jmp xchain1912_n19_α
# IR_ASSIGN gva
 xchain1912_n18_α:
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain1912_n19_α
 xchain1912_n18_β:
 jmp xchain1912_n19_α
# IR_LIT_STRING
 xchain1912_n19_α:
 mov qword ptr [rbp + 11408], 1
 mov rax, qword ptr [rip + .Lx1941_0]
 mov qword ptr [rbp + 11416], rax
 jmp xchain1912_n20_α
 xchain1912_n19_β:
 jmp xchain1912_n22_α
.Lx1941_0:
 .quad .Lx1941_0_s
.Lx1941_0_s:
 .string " "
# IR_VAR
 xchain1912_n20_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11440], rax
 mov qword ptr [rbp + 11448], rdx
 jmp xchain1912_n21_α
 xchain1912_n20_β:
 jmp xchain1912_n22_α
 xchain1912_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11408]
 mov rsi, qword ptr [rbp + 11416]
 mov rdx, qword ptr [rbp + 11440]
 mov rcx, qword ptr [rbp + 11448]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11376], rax
 mov qword ptr [rbp + 11384], rdx
 jmp xchain1912_n23_α
 xchain1912_n21_β:
 jmp xchain1912_n22_α
# IR_LIT_STRING
 xchain1912_n22_α:
 mov qword ptr [rbp + 11728], 1
 mov rax, qword ptr [rip + .Lx1944_0]
 mov qword ptr [rbp + 11736], rax
 jmp xchain1912_n24_α
 xchain1912_n22_β:
 jmp xchain1912_n27_α
.Lx1944_0:
 .quad .Lx1944_0_s
.Lx1944_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain1912_n23_α:
 mov rax, qword ptr [rbp + 11376]
 mov rdx, qword ptr [rbp + 11384]
 mov qword ptr [1879054224], rax
 mov qword ptr [1879054232], rdx
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 jmp xchain1912_n25_α
 xchain1912_n23_β:
 jmp xchain1912_n22_α
# IR_VAR
 xchain1912_n24_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11760], rax
 mov qword ptr [rbp + 11768], rdx
 jmp xchain1912_n26_α
 xchain1912_n24_β:
 jmp xchain1912_n27_α
# IR_LIT_STRING
 xchain1912_n25_α:
 mov qword ptr [rbp + 11328], 1
 mov rax, qword ptr [rip + .Lx1947_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain1912_n28_α
 xchain1912_n25_β:
 jmp xchain1912_n22_α
.Lx1947_0:
 .quad .Lx1947_0_s
.Lx1947_0_s:
 .string "PAT$1"
 xchain1912_n26_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11728]
 mov rsi, qword ptr [rbp + 11736]
 mov rdx, qword ptr [rbp + 11760]
 mov rcx, qword ptr [rbp + 11768]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11696], rax
 mov qword ptr [rbp + 11704], rdx
 jmp xchain1912_n29_α
 xchain1912_n26_β:
 jmp xchain1912_n27_α
# IR_LIT_STRING
 xchain1912_n27_α:
 mov qword ptr [rbp + 11856], 1
 mov rax, qword ptr [rip + .Lx1949_0]
 mov qword ptr [rbp + 11864], rax
 jmp xchain1912_n30_α
 xchain1912_n27_β:
 jmp xchain1912_n34_α
.Lx1949_0:
 .quad .Lx1949_0_s
.Lx1949_0_s:
 .string "PAT$3"
 xchain1912_n28_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11328] -> [zr+11296]
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11304], rax
  .section .rodata
  .Lrkfn1951: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1951]
 lea rsi, [rbp + 11296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11280], rax
 mov qword ptr [rbp + 11288], rdx
 cmp eax, 99
 je xchain1912_n22_α
 jmp xchain1912_n31_α
 xchain1912_n28_β:
 jmp xchain1912_n22_α
# IR_ASSIGN gva
 xchain1912_n29_α:
 mov rax, qword ptr [rbp + 11696]
 mov rdx, qword ptr [rbp + 11704]
 mov qword ptr [1879054256], rax
 mov qword ptr [1879054264], rdx
 mov qword ptr [rbp + 11680], rax
 mov qword ptr [rbp + 11688], rdx
 jmp xchain1912_n32_α
 xchain1912_n29_β:
 jmp xchain1912_n27_α
 xchain1912_n30_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11856] -> [zr+11824]
 mov rax, qword ptr [rbp + 11856]
 mov qword ptr [rbp + 11824], rax
 mov rax, qword ptr [rbp + 11864]
 mov qword ptr [rbp + 11832], rax
  .section .rodata
  .Lrkfn1954: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1954]
 lea rsi, [rbp + 11824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11808], rax
 mov qword ptr [rbp + 11816], rdx
 cmp eax, 99
 je xchain1912_n34_α
 jmp xchain1912_n33_α
 xchain1912_n30_β:
 jmp xchain1912_n34_α
# IR_ASSIGN gva
 xchain1912_n31_α:
 mov rax, qword ptr [rbp + 11280]
 mov rdx, qword ptr [rbp + 11288]
 mov qword ptr [1879052944], rax
 mov qword ptr [1879052952], rdx
 mov qword ptr [rbp + 11264], rax
 mov qword ptr [rbp + 11272], rdx
 jmp xchain1912_n22_α
 xchain1912_n31_β:
 jmp xchain1912_n22_α
# IR_LIT_STRING
 xchain1912_n32_α:
 mov qword ptr [rbp + 11616], 1
 mov rax, qword ptr [rip + .Lx1956_0]
 mov qword ptr [rbp + 11624], rax
 jmp xchain1912_n35_α
 xchain1912_n32_β:
 jmp xchain1912_n27_α
.Lx1956_0:
 .quad .Lx1956_0_s
.Lx1956_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain1912_n33_α:
 mov rax, qword ptr [rbp + 11808]
 mov rdx, qword ptr [rbp + 11816]
 mov qword ptr [1879052976], rax
 mov qword ptr [1879052984], rdx
 mov qword ptr [rbp + 11792], rax
 mov qword ptr [rbp + 11800], rdx
 jmp xchain1912_n34_α
 xchain1912_n33_β:
 jmp xchain1912_n34_α
# IR_LIT_STRING
 xchain1912_n34_α:
 mov qword ptr [rbp + 11952], 1
 mov rax, qword ptr [rip + .Lx1958_0]
 mov qword ptr [rbp + 11960], rax
 jmp xchain1912_n36_α
 xchain1912_n34_β:
 jmp xchain1912_n39_α
.Lx1958_0:
 .quad .Lx1958_0_s
.Lx1958_0_s:
 .string "PAT$4"
# IR_VAR
 xchain1912_n35_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11648], rax
 mov qword ptr [rbp + 11656], rdx
 jmp xchain1912_n37_α
 xchain1912_n35_β:
 jmp xchain1912_n27_α
 xchain1912_n36_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11952] -> [zr+11920]
 mov rax, qword ptr [rbp + 11952]
 mov qword ptr [rbp + 11920], rax
 mov rax, qword ptr [rbp + 11960]
 mov qword ptr [rbp + 11928], rax
  .section .rodata
  .Lrkfn1961: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1961]
 lea rsi, [rbp + 11920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11904], rax
 mov qword ptr [rbp + 11912], rdx
 cmp eax, 99
 je xchain1912_n39_α
 jmp xchain1912_n38_α
 xchain1912_n36_β:
 jmp xchain1912_n39_α
 xchain1912_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11616]
 mov rsi, qword ptr [rbp + 11624]
 mov rdx, qword ptr [rbp + 11648]
 mov rcx, qword ptr [rbp + 11656]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11584], rax
 mov qword ptr [rbp + 11592], rdx
 jmp xchain1912_n40_α
 xchain1912_n37_β:
 jmp xchain1912_n27_α
# IR_ASSIGN gva
 xchain1912_n38_α:
 mov rax, qword ptr [rbp + 11904]
 mov rdx, qword ptr [rbp + 11912]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
 mov qword ptr [rbp + 11888], rax
 mov qword ptr [rbp + 11896], rdx
 jmp xchain1912_n39_α
 xchain1912_n38_β:
 jmp xchain1912_n39_α
# IR_VAR
 xchain1912_n39_α:
 mov rdi, qword ptr [rip + .Lx1964_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain1912_n42_α
 mov qword ptr [rbp + 12000], rax
 mov qword ptr [rbp + 12008], rdx
 jmp xchain1912_n41_α
 xchain1912_n39_β:
 jmp xchain1912_n42_α
.Lx1964_0:
 .quad .Lx1964_0_s
.Lx1964_0_s:
 .string "INPUT"
# IR_ASSIGN gva
 xchain1912_n40_α:
 mov rax, qword ptr [rbp + 11584]
 mov rdx, qword ptr [rbp + 11592]
 mov qword ptr [1879054240], rax
 mov qword ptr [1879054248], rdx
 mov qword ptr [rbp + 11568], rax
 mov qword ptr [rbp + 11576], rdx
 jmp xchain1912_n43_α
 xchain1912_n40_β:
 jmp xchain1912_n27_α
# IR_ASSIGN gva
 xchain1912_n41_α:
 mov rax, qword ptr [rbp + 12000]
 mov rdx, qword ptr [rbp + 12008]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
 mov qword ptr [rbp + 11984], rax
 mov qword ptr [rbp + 11992], rdx
 jmp xchain1912_n44_α
 xchain1912_n41_β:
 jmp xchain1912_n42_α
# IR_LIT_STRING
 xchain1912_n42_α:
 mov qword ptr [rbp + 12272], 1
 mov rax, qword ptr [rip + .Lx1967_0]
 mov qword ptr [rbp + 12280], rax
 jmp xchain1912_n45_α
 xchain1912_n42_β:
 jmp xchain1912_n49_α
.Lx1967_0:
 .quad .Lx1967_0_s
.Lx1967_0_s:
 .string "bank"
# IR_LIT_STRING
 xchain1912_n43_α:
 mov qword ptr [rbp + 11536], 1
 mov rax, qword ptr [rip + .Lx1968_0]
 mov qword ptr [rbp + 11544], rax
 jmp xchain1912_n46_α
 xchain1912_n43_β:
 jmp xchain1912_n27_α
.Lx1968_0:
 .quad .Lx1968_0_s
.Lx1968_0_s:
 .string "PAT$2"
# IR_VAR
 xchain1912_n44_α:
 mov rax, qword ptr [1879053104]
 mov rdx, qword ptr [1879053112]
 mov qword ptr [rbp + 12112], rax
 mov qword ptr [rbp + 12120], rdx
 jmp xchain1912_n47_α
 xchain1912_n44_β:
 jmp xchain1912_n39_α
 xchain1912_n45_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052448]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052456]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1971_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1971_5
 mov rax, qword ptr [rbp + 12272]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12280]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1971_6]
 lea rdx, [rip + .Lx1971_7]
 jmp rax
.Lx1971_6:
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
 jmp .Lx1971_2
.Lx1971_7:
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
 jmp .Lx1971_2
.Lx1971_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12272]
 mov rdx, qword ptr [rbp + 12280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1971_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1971_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1971_3]
 lea rdx, [rip + .Lx1971_4]
 jmp rax
.Lx1971_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1971_2
.Lx1971_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1971_2
.Lx1971_1:
 call rt_faildescr@PLT
.Lx1971_2:
 mov qword ptr [rbp + 12224], rax
 mov qword ptr [rbp + 12232], rdx
 cmp eax, 99
 je xchain1912_n49_α
 jmp xchain1912_n48_α
 xchain1912_n45_β:
 jmp xchain1912_n49_α
.Lx1971_0:
 .quad .Lx1971_0_s
.Lx1971_0_s:
 .string "init_list"
 xchain1912_n46_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11536] -> [zr+11504]
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 11504], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 11512], rax
  .section .rodata
  .Lrkfn1973: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1973]
 lea rsi, [rbp + 11504]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11488], rax
 mov qword ptr [rbp + 11496], rdx
 cmp eax, 99
 je xchain1912_n27_α
 jmp xchain1912_n50_α
 xchain1912_n46_β:
 jmp xchain1912_n27_α
# IR_VAR
 xchain1912_n47_α:
 mov rax, qword ptr [1879053088]
 mov rdx, qword ptr [1879053096]
 mov qword ptr [rbp + 12144], rax
 mov qword ptr [rbp + 12152], rdx
 jmp xchain1912_n51_α
 xchain1912_n47_β:
 jmp xchain1912_n39_α
# IR_ASSIGN gva
 xchain1912_n48_α:
 mov rax, qword ptr [rbp + 12224]
 mov rdx, qword ptr [rbp + 12232]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12208], rax
 mov qword ptr [rbp + 12216], rdx
 jmp xchain1912_n49_α
 xchain1912_n48_β:
 jmp xchain1912_n49_α
# IR_LIT_STRING
 xchain1912_n49_α:
 mov qword ptr [rbp + 12368], 1
 mov rax, qword ptr [rip + .Lx1976_0]
 mov qword ptr [rbp + 12376], rax
 jmp xchain1912_n52_α
 xchain1912_n49_β:
 jmp xchain1912_n55_α
.Lx1976_0:
 .quad .Lx1976_0_s
.Lx1976_0_s:
 .string "BANK"
# IR_ASSIGN gva
 xchain1912_n50_α:
 mov rax, qword ptr [rbp + 11488]
 mov rdx, qword ptr [rbp + 11496]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain1912_n27_α
 xchain1912_n50_β:
 jmp xchain1912_n27_α
 xchain1912_n51_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12112]
 mov rsi, qword ptr [rbp + 12120]
 mov rdx, qword ptr [rbp + 12144]
 mov rcx, qword ptr [rbp + 12152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12080], rax
 mov qword ptr [rbp + 12088], rdx
 jmp xchain1912_n53_α
 xchain1912_n51_β:
 jmp xchain1912_n39_α
 xchain1912_n52_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1980_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1980_5
 mov rax, qword ptr [rbp + 12368]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12376]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1980_6]
 lea rdx, [rip + .Lx1980_7]
 jmp rax
.Lx1980_6:
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
 jmp .Lx1980_2
.Lx1980_7:
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
 jmp .Lx1980_2
.Lx1980_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12368]
 mov rdx, qword ptr [rbp + 12376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1980_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1980_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1980_3]
 lea rdx, [rip + .Lx1980_4]
 jmp rax
.Lx1980_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1980_2
.Lx1980_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1980_2
.Lx1980_1:
 call rt_faildescr@PLT
.Lx1980_2:
 mov qword ptr [rbp + 12320], rax
 mov qword ptr [rbp + 12328], rdx
 cmp eax, 99
 je xchain1912_n55_α
 jmp xchain1912_n54_α
 xchain1912_n52_β:
 jmp xchain1912_n55_α
.Lx1980_0:
 .quad .Lx1980_0_s
.Lx1980_0_s:
 .string "stk_push_frame"
# IR_VAR
 xchain1912_n53_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 12176], rax
 mov qword ptr [rbp + 12184], rdx
 jmp xchain1912_n56_α
 xchain1912_n53_β:
 jmp xchain1912_n39_α
# IR_ASSIGN gva
 xchain1912_n54_α:
 mov rax, qword ptr [rbp + 12320]
 mov rdx, qword ptr [rbp + 12328]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12304], rax
 mov qword ptr [rbp + 12312], rdx
 jmp xchain1912_n55_α
 xchain1912_n54_β:
 jmp xchain1912_n55_α
# IR_VAR
 xchain1912_n55_α:
 mov rax, qword ptr [1879053104]
 mov rdx, qword ptr [1879053112]
 mov qword ptr [rbp + 12544], rax
 mov qword ptr [rbp + 12552], rdx
 jmp xchain1912_n57_α
 xchain1912_n55_β:
 jmp xchain1912_n58_α
 xchain1912_n56_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12080]
 mov rsi, qword ptr [rbp + 12088]
 mov rdx, qword ptr [rbp + 12176]
 mov rcx, qword ptr [rbp + 12184]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12048], rax
 mov qword ptr [rbp + 12056], rdx
 jmp xchain1912_n59_α
 xchain1912_n56_β:
 jmp xchain1912_n39_α
# IR_MATCH_HEAD
 xchain1912_n57_α:
 mov qword ptr [rbp + 12456], rbp
 mov rdi, qword ptr [rbp + 12544]
 mov rsi, qword ptr [rbp + 12552]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 12448], r12
 mov qword ptr [rbp + 12432], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 12424], rax
 mov dword ptr [rbp + 12416], 0
.Lx1986_0:
 mov r14d, dword ptr [rbp + 12416]
 jmp xchain1912_n60_α
 xchain1912_n57_β:
 add dword ptr [rbp + 12416], 1
 mov eax, dword ptr [rbp + 12416]
 cmp eax, r15d
 jg .Lx1986_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx1986_1
 jmp .Lx1986_0
.Lx1986_1:
 mov rax, qword ptr [rbp + 12424]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12432]
 mov r12, qword ptr [rbp + 12448]
 mov rbp, qword ptr [rbp + 12456]
 jmp xchain1912_n58_α
# IR_LIT_STRING
 xchain1912_n58_α:
 mov qword ptr [rbp + 13072], 1
 mov rax, qword ptr [rip + .Lx1987_0]
 mov qword ptr [rbp + 13080], rax
 jmp xchain1912_n61_α
 xchain1912_n58_β:
 jmp xchain1912_n64_α
.Lx1987_0:
 .quad .Lx1987_0_s
.Lx1987_0_s:
 .string "bank"
# IR_ASSIGN gva
 xchain1912_n59_α:
 mov rax, qword ptr [rbp + 12048]
 mov rdx, qword ptr [rbp + 12056]
 mov qword ptr [1879053104], rax
 mov qword ptr [1879053112], rdx
 mov qword ptr [rbp + 12032], rax
 mov qword ptr [rbp + 12040], rdx
 jmp xchain1912_n39_α
 xchain1912_n59_β:
 jmp xchain1912_n39_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1912_n60_α:
 mov rax, qword ptr [1879053056]
 mov rdx, qword ptr [1879053064]
 cmp eax, 3
 jne .Lx1989_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx1989_10
.Lx1989_9:
 xor eax, eax
.Lx1989_10:
 test rax, rax
 jz .Lx1989_0
 mov r8d, 0
 lea rcx, [rip + .Lx1989_4]
 lea rdx, [rip + .Lx1989_5]
 jmp rax
.Lx1989_4:
 jmp xchain1912_n62_α
.Lx1989_5:
 jmp xchain1912_n57_β
.Lx1989_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S80]
 xor esi, esi
 call rt_defer_open@PLT
.Lx1989_2:
 test rax, rax
 je .Lx1989_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1989_7]
 lea rdx, [rip + .Lx1989_8]
 jmp rax
.Lx1989_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1989_2
.Lx1989_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx1989_2
.Lx1989_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1912_n57_β
 mov r14d, eax
 lea rax, [rip + .Lx1989_6]
 sub rsp, 8
 push rax
 jmp xchain1912_n62_α
.Lx1989_6:
 add rsp, 16
 jmp xchain1912_n57_β
 xchain1912_n60_β:
 jmp qword ptr [rsp]
 xchain1912_n61_α:
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
 mov rdi, qword ptr [rip + .Lx1991_0]
 mov esi, 2
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1991_5
 mov rax, qword ptr [rbp + 13072]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rbp + 13080]
 mov qword ptr [1879052440], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1991_6]
 lea rdx, [rip + .Lx1991_7]
 jmp rax
.Lx1991_6:
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
 jmp .Lx1991_2
.Lx1991_7:
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
 jmp .Lx1991_2
.Lx1991_5:
 add rsp, 48
 mov edi, 0
 mov rsi, qword ptr [rbp + 13072]
 mov rdx, qword ptr [rbp + 13080]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1991_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1991_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1991_3]
 lea rdx, [rip + .Lx1991_4]
 jmp rax
.Lx1991_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1991_2
.Lx1991_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1991_2
.Lx1991_1:
 call rt_faildescr@PLT
.Lx1991_2:
 mov qword ptr [rbp + 13024], rax
 mov qword ptr [rbp + 13032], rdx
 cmp eax, 99
 je xchain1912_n64_α
 jmp xchain1912_n63_α
 xchain1912_n61_β:
 jmp xchain1912_n64_α
.Lx1991_0:
 .quad .Lx1991_0_s
.Lx1991_0_s:
 .string "stk_pop_final"
# IR_MATCH_RELEASE
 xchain1912_n62_α:
 mov rax, qword ptr [rbp + 12424]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov qword ptr [rbp + 12440], r14
 mov rsp, qword ptr [rbp + 12432]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 12480]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx1993_1:
 test rax, rax
 je .Lx1993_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1993_3]
 lea rdx, [rip + .Lx1993_4]
 jmp rax
.Lx1993_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1993_1
.Lx1993_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1993_1
.Lx1993_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 12448]
 jmp xchain1912_n65_α
# IR_ASSIGN gva
 xchain1912_n63_α:
 mov rax, qword ptr [rbp + 13024]
 mov rdx, qword ptr [rbp + 13032]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13008], rax
 mov qword ptr [rbp + 13016], rdx
 jmp xchain1912_n64_α
 xchain1912_n63_β:
 jmp xchain1912_n64_α
 xchain1912_n64_α:
 sub rsp, 16
 mov rax, qword ptr [1879052800]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052808]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1996_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1996_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1996_6]
 lea rdx, [rip + .Lx1996_7]
 jmp rax
.Lx1996_6:
 mov rdi, qword ptr [1879052800]
 mov rsi, qword ptr [1879052808]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1996_2
.Lx1996_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1996_2
.Lx1996_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1996_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1996_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1996_3]
 lea rdx, [rip + .Lx1996_4]
 jmp rax
.Lx1996_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1996_2
.Lx1996_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1996_2
.Lx1996_1:
 call rt_faildescr@PLT
.Lx1996_2:
 mov qword ptr [rbp + 13120], rax
 mov qword ptr [rbp + 13128], rdx
 cmp eax, 99
 je main_γ
 jmp xchain1912_n66_α
 xchain1912_n64_β:
 jmp main_γ
.Lx1996_0:
 .quad .Lx1996_0_s
.Lx1996_0_s:
 .string "pp_bank"
# IR_LIT_STRING
 xchain1912_n65_α:
 mov qword ptr [rbp + 12480], 1
 mov rax, qword ptr [rip + .Lx1997_0]
 mov qword ptr [rbp + 12488], rax
 jmp xchain1912_n67_α
 xchain1912_n65_β:
 jmp xchain1912_n58_α
.Lx1997_0:
 .quad .Lx1997_0_s
.Lx1997_0_s:
 .string ""
# IR_ASSIGN gva
 xchain1912_n66_α:
 mov rax, qword ptr [rbp + 13120]
 mov rdx, qword ptr [rbp + 13128]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13104], rax
 mov qword ptr [rbp + 13112], rdx
 jmp main_γ
 xchain1912_n66_β:
 jmp main_γ
# IR_MATCH_REPLACE
 xchain1912_n67_α:
 mov rdi, qword ptr [rip + .Lx2000_0]
 mov rsi, qword ptr [rbp + 12544]
 mov rdx, qword ptr [rbp + 12552]
 mov ecx, dword ptr [rbp + 12416]
 mov r8, qword ptr [rbp + 12440]
 lea r9, [rbp + 12480]
 call rt_match_replace@PLT
 jmp .Lx2000_1
.Lx2000_0:
 .quad .Lx2000_0_s
.Lx2000_0_s:
 .string "src"
.Lx2000_1:
 mov rbp, qword ptr [rbp + 12456]
 jmp xchain1912_n68_α
# IR_LIT_STRING
 xchain1912_n68_α:
 mov qword ptr [rbp + 12640], 1
 mov rax, qword ptr [rip + .Lx2001_0]
 mov qword ptr [rbp + 12648], rax
 jmp xchain1912_n69_α
 xchain1912_n68_β:
 jmp xchain1912_n71_α
.Lx2001_0:
 .quad .Lx2001_0_s
.Lx2001_0_s:
 .string "ROOT"
 xchain1912_n69_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx2003_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx2003_5
 mov rax, qword ptr [rbp + 12640]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12648]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx2003_6]
 lea rdx, [rip + .Lx2003_7]
 jmp rax
.Lx2003_6:
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
 jmp .Lx2003_2
.Lx2003_7:
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
 jmp .Lx2003_2
.Lx2003_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12640]
 mov rdx, qword ptr [rbp + 12648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx2003_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx2003_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx2003_3]
 lea rdx, [rip + .Lx2003_4]
 jmp rax
.Lx2003_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx2003_2
.Lx2003_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx2003_2
.Lx2003_1:
 call rt_faildescr@PLT
.Lx2003_2:
 mov qword ptr [rbp + 12592], rax
 mov qword ptr [rbp + 12600], rdx
 cmp eax, 99
 je xchain1912_n71_α
 jmp xchain1912_n70_α
 xchain1912_n69_β:
 jmp xchain1912_n71_α
.Lx2003_0:
 .quad .Lx2003_0_s
.Lx2003_0_s:
 .string "stk_push_frame"
# IR_ASSIGN gva
 xchain1912_n70_α:
 mov rax, qword ptr [rbp + 12592]
 mov rdx, qword ptr [rbp + 12600]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12576], rax
 mov qword ptr [rbp + 12584], rdx
 jmp xchain1912_n71_α
 xchain1912_n70_β:
 jmp xchain1912_n71_α
# IR_VAR
 xchain1912_n71_α:
 mov rax, qword ptr [1879053072]
 mov rdx, qword ptr [1879053080]
 mov qword ptr [rbp + 12768], rax
 mov qword ptr [rbp + 12776], rdx
 jmp xchain1912_n72_α
 xchain1912_n71_β:
 jmp xchain1912_n73_α
# IR_MATCH_HEAD
 xchain1912_n72_α:
 mov qword ptr [rbp + 12728], rbp
 mov rdi, qword ptr [rbp + 12768]
 mov rsi, qword ptr [rbp + 12776]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 12720], r12
 mov qword ptr [rbp + 12704], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 12696], rax
 mov dword ptr [rbp + 12688], 0
.Lx2007_0:
 mov r14d, dword ptr [rbp + 12688]
 jmp xchain1912_n74_α
 xchain1912_n72_β:
 add dword ptr [rbp + 12688], 1
 mov eax, dword ptr [rbp + 12688]
 cmp eax, r15d
 jg .Lx2007_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx2007_1
 jmp .Lx2007_0
.Lx2007_1:
 mov rax, qword ptr [rbp + 12696]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12704]
 mov r12, qword ptr [rbp + 12720]
 mov rbp, qword ptr [rbp + 12728]
 jmp xchain1912_n73_α
# IR_LIT_STRING
 xchain1912_n73_α:
 mov qword ptr [rbp + 12896], 1
 mov rax, qword ptr [rip + .Lx2008_0]
 mov qword ptr [rbp + 12904], rax
 jmp xchain1912_n75_α
 xchain1912_n73_β:
 jmp xchain1912_n78_α
.Lx2008_0:
 .quad .Lx2008_0_s
.Lx2008_0_s:
 .string "Parse failed on: "
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain1912_n74_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx2009_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx2009_10
.Lx2009_9:
 xor eax, eax
.Lx2009_10:
 test rax, rax
 jz .Lx2009_0
 mov r8d, 0
 lea rcx, [rip + .Lx2009_4]
 lea rdx, [rip + .Lx2009_5]
 jmp rax
.Lx2009_4:
 jmp xchain1912_n76_α
.Lx2009_5:
 jmp xchain1912_n72_β
.Lx2009_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx2009_2:
 test rax, rax
 je .Lx2009_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx2009_7]
 lea rdx, [rip + .Lx2009_8]
 jmp rax
.Lx2009_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx2009_2
.Lx2009_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx2009_2
.Lx2009_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain1912_n72_β
 mov r14d, eax
 lea rax, [rip + .Lx2009_6]
 sub rsp, 8
 push rax
 jmp xchain1912_n76_α
.Lx2009_6:
 add rsp, 16
 jmp xchain1912_n72_β
 xchain1912_n74_β:
 jmp qword ptr [rsp]
# IR_VAR
 xchain1912_n75_α:
 mov rax, qword ptr [1879053072]
 mov rdx, qword ptr [1879053080]
 mov qword ptr [rbp + 12928], rax
 mov qword ptr [rbp + 12936], rdx
 jmp xchain1912_n77_α
 xchain1912_n75_β:
 jmp xchain1912_n78_α
# IR_MATCH_RELEASE
 xchain1912_n76_α:
 mov rax, qword ptr [rbp + 12696]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12704]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 12752]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx2012_1:
 test rax, rax
 je .Lx2012_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx2012_3]
 lea rdx, [rip + .Lx2012_4]
 jmp rax
.Lx2012_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx2012_1
.Lx2012_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx2012_1
.Lx2012_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 12720]
 mov rbp, qword ptr [rbp + 12728]
 jmp xchain1912_n79_α
 xchain1912_n77_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12896]
 mov rsi, qword ptr [rbp + 12904]
 mov rdx, qword ptr [rbp + 12928]
 mov rcx, qword ptr [rbp + 12936]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12864], rax
 mov qword ptr [rbp + 12872], rdx
 jmp xchain1912_n80_α
 xchain1912_n77_β:
 jmp xchain1912_n78_α
 xchain1912_n78_α:
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
 mov rdi, qword ptr [rip + .Lx2015_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx2015_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx2015_6]
 lea rdx, [rip + .Lx2015_7]
 jmp rax
.Lx2015_6:
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
 jmp .Lx2015_2
.Lx2015_7:
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
 jmp .Lx2015_2
.Lx2015_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx2015_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx2015_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx2015_3]
 lea rdx, [rip + .Lx2015_4]
 jmp rax
.Lx2015_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx2015_2
.Lx2015_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx2015_2
.Lx2015_1:
 call rt_faildescr@PLT
.Lx2015_2:
 mov qword ptr [rbp + 12976], rax
 mov qword ptr [rbp + 12984], rdx
 cmp eax, 99
 je xchain1912_n55_α
 jmp xchain1912_n81_α
 xchain1912_n78_β:
 jmp xchain1912_n55_α
.Lx2015_0:
 .quad .Lx2015_0_s
.Lx2015_0_s:
 .string "stk_pop_into_parent"
 xchain1912_n79_α:
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
 mov rdi, qword ptr [rip + .Lx2017_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx2017_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx2017_6]
 lea rdx, [rip + .Lx2017_7]
 jmp rax
.Lx2017_6:
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
 jmp .Lx2017_2
.Lx2017_7:
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
 jmp .Lx2017_2
.Lx2017_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx2017_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx2017_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx2017_3]
 lea rdx, [rip + .Lx2017_4]
 jmp rax
.Lx2017_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx2017_2
.Lx2017_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx2017_2
.Lx2017_1:
 call rt_faildescr@PLT
.Lx2017_2:
 mov qword ptr [rbp + 12816], rax
 mov qword ptr [rbp + 12824], rdx
 cmp eax, 99
 je xchain1912_n55_α
 jmp xchain1912_n82_α
 xchain1912_n79_β:
 jmp xchain1912_n55_α
.Lx2017_0:
 .quad .Lx2017_0_s
.Lx2017_0_s:
 .string "stk_pop_into_parent"
# IR_ASSIGN global
 xchain1912_n80_α:
 mov rsi, qword ptr [rbp + 12864]
 mov rdx, qword ptr [rbp + 12872]
 mov rdi, qword ptr [rip + .Lx2018_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 12848], rax
 mov qword ptr [rbp + 12856], rdx
 jmp xchain1912_n78_α
 xchain1912_n80_β:
 jmp xchain1912_n78_α
.Lx2018_0:
 .quad .Lx2018_0_s
.Lx2018_0_s:
 .string "OUTPUT"
# IR_ASSIGN gva
 xchain1912_n81_α:
 mov rax, qword ptr [rbp + 12976]
 mov rdx, qword ptr [rbp + 12984]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12960], rax
 mov qword ptr [rbp + 12968], rdx
 jmp xchain1912_n55_α
 xchain1912_n81_β:
 jmp xchain1912_n55_α
# IR_ASSIGN gva
 xchain1912_n82_α:
 mov rax, qword ptr [rbp + 12816]
 mov rdx, qword ptr [rbp + 12824]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12800], rax
 mov qword ptr [rbp + 12808], rdx
 jmp xchain1912_n55_α
 xchain1912_n82_β:
 jmp xchain1912_n55_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 13160]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 13160]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "epsilon"
.S1: .string "*EXPR$18"
.S2: .string "tag"
.S3: .string "PATTMP$P54"
.S4: .string "PATTMP$P56"
.S5: .string "word"
.S6: .string "delim"
.S7: .string "group"
.S8: .string "wrd"
.S9: .string "PATTMP$P55"
.S10: .string "item"
.S11: .string "*EXPR$19"
.S12: .string "PATTMP$P57"
.S13: .string "PATTMP$P59"
.S14: .string "PATTMP$P58"
.S15: .string "*EXPR$20"
.S16: .string "PATTMP$P60"
.S17: .string "PATTMP$P62"
.S18: .string "PATTMP$P61"
.S19: .string "*EXPR$21"
.S20: .string "PATTMP$P63"
.S21: .string "PATTMP$P65"
.S22: .string "PATTMP$P64"
.S23: .string "*EXPR$22"
.S24: .string "PATTMP$P66"
.S25: .string "PATTMP$P68"
.S26: .string "PATTMP$P67"
.S27: .string "*EXPR$23"
.S28: .string "PATTMP$P69"
.S29: .string "PATTMP$P71"
.S30: .string "PATTMP$P70"
.S31: .string "*EXPR$24"
.S32: .string "PATTMP$P72"
.S33: .string "PATTMP$P74"
.S34: .string "PATTMP$P73"
.S35: .string "*EXPR$25"
.S36: .string "PATTMP$P75"
.S37: .string "PATTMP$P77"
.S38: .string "PATTMP$P76"
.S39: .string "*EXPR$26"
.S40: .string "PATTMP$P78"
.S41: .string "PATTMP$P80"
.S42: .string "PATTMP$P79"
.S43: .string "*EXPR$27"
.S44: .string "PATTMP$P81"
.S45: .string "PATTMP$P83"
.S46: .string "PATTMP$P82"
.S47: .string "*EXPR$28"
.S48: .string "PATTMP$P84"
.S49: .string "PATTMP$P86"
.S50: .string "PATTMP$P85"
.S51: .string "*EXPR$29"
.S52: .string "PATTMP$P87"
.S53: .string "PATTMP$P89"
.S54: .string "PATTMP$P88"
.S55: .string "*EXPR$30"
.S56: .string "PATTMP$P90"
.S57: .string "PATTMP$P92"
.S58: .string "PATTMP$P91"
.S59: .string "*EXPR$31"
.S60: .string "PATTMP$P93"
.S61: .string "PATTMP$P95"
.S62: .string "PATTMP$P94"
.S63: .string "*EXPR$32"
.S64: .string "PATTMP$P96"
.S65: .string "PATTMP$P98"
.S66: .string "PATTMP$P97"
.S67: .string "*EXPR$33"
.S68: .string "PATTMP$P99"
.S69: .string "PATTMP$P101"
.S70: .string "PATTMP$P100"
.S71: .string "*EXPR$34"
.S72: .string "PATTMP$P102"
.S73: .string "PATTMP$P104"
.S74: .string "PATTMP$P103"
.S75: .string "*EXPR$35"
.S76: .string "PATTMP$P105"
.S77: .string "PATTMP$P107"
.S78: .string "PATTMP$P106"
.S79: .string "nl"
.S80: .string "spat"
.text
