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
 .string "PAT$0"
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
lea rax, [rip + xchain436_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain436_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain436_n1_α
 xchain436_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$0_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain436_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx439_0
 mov r8d, 0
 lea rcx, [rip + .Lx439_4]
 lea rdx, [rip + .Lx439_5]
 jmp rax
.Lx439_4:
 jmp xchain436_n2_α
.Lx439_5:
 jmp xchain436_n0_β
.Lx439_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx439_2:
 test rax, rax
 je .Lx439_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx439_7]
 lea rdx, [rip + .Lx439_8]
 jmp rax
.Lx439_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx439_2
.Lx439_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx439_2
.Lx439_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain436_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx439_6]
 sub rsp, 8
 push rax
 jmp xchain436_n2_α
.Lx439_6:
 add rsp, 16
 jmp xchain436_n0_β
 xchain436_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain436_n2_α:
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
 xchain436_n2_β:
 sub r12, 24
 jmp xchain436_n1_β
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
lea rax, [rip + xchain442_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain442_n0_α:
 mov rax, qword ptr [1879053936]
 mov rdx, qword ptr [1879053944]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain442_n1_α
# IR_COERCE_STRING
 xchain442_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain442_n2_α
# IR_MATCH_SPAN
 xchain442_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx447_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx447_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx447_1
 add dword ptr [rsp + 0], 1
 jmp .Lx447_0
.Lx447_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx447_240
 add rsp, 16
 jmp proc_PAT$1_scanfail
.Lx447_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$1_scanhit
 xchain442_n2_β:
 xchain442_n2_β:
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
lea rax, [rip + xchain448_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain448_n0_α:
 mov rax, qword ptr [1879053968]
 mov rdx, qword ptr [1879053976]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain448_n1_α
 xchain448_n0_β:
 jmp proc_PAT$2_scanfail
# IR_COERCE_STRING
 xchain448_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain448_n2_α
 xchain448_n1_β:
 jmp proc_PAT$2_scanfail
# IR_VAR
 xchain448_n2_α:
 mov rax, qword ptr [1879053952]
 mov rdx, qword ptr [1879053960]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain448_n3_α
 xchain448_n2_β:
 jmp proc_PAT$2_scanfail
# IR_COERCE_STRING
 xchain448_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain448_n4_α
 xchain448_n3_β:
 jmp proc_PAT$2_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain448_n4_α:
 jmp xchain448_n5_α
xchain448_n4_as:
 jmp proc_PAT$2_γ
 xchain448_n4_β:
 jmp xchain448_n6_β
xchain448_n4_af:
 jmp proc_PAT$2_ω
# IR_MATCH_NOTANY
 xchain448_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain448_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain448_n4_af
 add r14d, 1
 jmp xchain448_n6_α
 xchain448_n5_β:
 sub r14d, 1
 jmp xchain448_n4_af
# IR_MATCH_BREAK
 xchain448_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx459_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx459_240
 add rsp, 16
 jmp xchain448_n5_β
.Lx459_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx459_1
 add dword ptr [rsp + 0], 1
 jmp .Lx459_0
.Lx459_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain448_n4_as
 xchain448_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain448_n5_β
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
lea rax, [rip + xchain460_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain460_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain460_n1_α
xchain460_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain460_n2_α
 cmp eax, 2
 je xchain460_n4_α
 cmp eax, 3
 je xchain460_n6_α
 cmp eax, 4
 je xchain460_n7_α
 cmp eax, 5
 je xchain460_n9_α
 jmp proc_PAT$3_γ
 xchain460_n0_β:
 mov dword ptr [rbp + 36], 6
xchain460_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain460_n1_β
 cmp eax, 1
 je xchain460_n3_β
 cmp eax, 2
 je xchain460_n5_β
 cmp eax, 3
 je xchain460_n6_β
 cmp eax, 4
 je xchain460_n8_β
 cmp eax, 5
 je xchain460_n9_β
 jmp proc_PAT$3_ω
# IR_MATCH_LIT
 xchain460_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain460_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain460_n0_af
 add r14d, 1
 jmp xchain460_n0_as
 xchain460_n1_β:
 sub r14d, 1
 jmp xchain460_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain460_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain460_n10_α
 xchain460_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain460_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain460_n3_α:
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
 jmp xchain460_n0_as
 xchain460_n3_β:
 sub r12, 24
 jmp xchain460_n10_β
# IR_LIT_STRING
 xchain460_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx469_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain460_n11_α
 xchain460_n4_β:
 jmp xchain460_n0_af
.Lx469_0:
 .quad .Lx469_0_s
.Lx469_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n5_α:
 mov rax, qword ptr [1879053984]
 mov rdx, qword ptr [1879053992]
 cmp eax, 3
 jne .Lx470_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx470_10
.Lx470_9:
 xor eax, eax
.Lx470_10:
 test rax, rax
 jz .Lx470_0
 mov r8d, 0
 lea rcx, [rip + .Lx470_4]
 lea rdx, [rip + .Lx470_5]
 jmp rax
.Lx470_4:
 jmp xchain460_n0_as
.Lx470_5:
 jmp xchain460_n0_af
.Lx470_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx470_2:
 test rax, rax
 je .Lx470_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx470_7]
 lea rdx, [rip + .Lx470_8]
 jmp rax
.Lx470_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx470_2
.Lx470_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx470_2
.Lx470_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx470_6]
 sub rsp, 8
 push rax
 jmp xchain460_n0_as
.Lx470_6:
 add rsp, 16
 jmp xchain460_n0_af
 xchain460_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain460_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain460_n0_as
 xchain460_n6_β:
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
 jmp xchain460_n12_α
xchain460_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain460_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain460_n0_as
xchain460_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx472_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain460_n12_β
.Lx472_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain460_n0_af
 xchain460_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
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
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx474_2
.Lx474_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
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
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain460_n0_af
 jmp xchain460_n14_α
 xchain460_n7_β:
 jmp xchain460_n0_af
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n8_α:
 mov rax, qword ptr [1879054016]
 mov rdx, qword ptr [1879054024]
 cmp eax, 3
 jne .Lx475_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx475_10
.Lx475_9:
 xor eax, eax
.Lx475_10:
 test rax, rax
 jz .Lx475_0
 mov r8d, 0
 lea rcx, [rip + .Lx475_4]
 lea rdx, [rip + .Lx475_5]
 jmp rax
.Lx475_4:
 jmp xchain460_n0_as
.Lx475_5:
 jmp xchain460_n0_af
.Lx475_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx475_2:
 test rax, rax
 je .Lx475_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx475_7]
 lea rdx, [rip + .Lx475_8]
 jmp rax
.Lx475_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx475_2
.Lx475_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx475_2
.Lx475_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx475_6]
 sub rsp, 8
 push rax
 jmp xchain460_n0_as
.Lx475_6:
 add rsp, 16
 jmp xchain460_n0_af
 xchain460_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain460_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain460_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain460_n0_af
 add r14d, 1
 jmp xchain460_n0_as
 xchain460_n9_β:
 sub r14d, 1
 jmp xchain460_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n10_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx478_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx478_10
.Lx478_9:
 xor eax, eax
.Lx478_10:
 test rax, rax
 jz .Lx478_0
 mov r8d, 0
 lea rcx, [rip + .Lx478_4]
 lea rdx, [rip + .Lx478_5]
 jmp rax
.Lx478_4:
 jmp xchain460_n3_α
.Lx478_5:
 jmp xchain460_n2_β
.Lx478_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx478_2:
 test rax, rax
 je .Lx478_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx478_7]
 lea rdx, [rip + .Lx478_8]
 jmp rax
.Lx478_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx478_2
.Lx478_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx478_2
.Lx478_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx478_6]
 sub rsp, 8
 push rax
 jmp xchain460_n3_α
.Lx478_6:
 add rsp, 16
 jmp xchain460_n2_β
 xchain460_n10_β:
 jmp qword ptr [rsp]
 xchain460_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052512]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052520]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx480_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx480_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx480_6]
 lea rdx, [rip + .Lx480_7]
 jmp rax
.Lx480_6:
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
 jmp .Lx480_2
.Lx480_7:
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
 jmp .Lx480_2
.Lx480_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx480_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx480_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx480_3]
 lea rdx, [rip + .Lx480_4]
 jmp rax
.Lx480_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx480_2
.Lx480_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx480_2
.Lx480_1:
 call rt_faildescr@PLT
.Lx480_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain460_n0_af
 jmp xchain460_n15_α
 xchain460_n11_β:
 jmp xchain460_n0_af
.Lx480_0:
 .quad .Lx480_0_s
.Lx480_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain460_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain460_n16_α
xchain460_n12_as:
 jmp xchain460_n6_as
 xchain460_n12_β:
 jmp xchain460_n17_β
xchain460_n12_af:
 jmp xchain460_n6_af
# IR_LIT_STRING
 xchain460_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain460_n18_α
 xchain460_n13_β:
 jmp xchain460_n20_af
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain460_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879054016], rax
 mov qword ptr [1879054024], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain460_n8_α
# IR_ASSIGN gva
 xchain460_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879053984], rax
 mov qword ptr [1879053992], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain460_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n16_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx486_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx486_10
.Lx486_9:
 xor eax, eax
.Lx486_10:
 test rax, rax
 jz .Lx486_0
 mov r8d, 0
 lea rcx, [rip + .Lx486_4]
 lea rdx, [rip + .Lx486_5]
 jmp rax
.Lx486_4:
 jmp xchain460_n17_α
.Lx486_5:
 jmp xchain460_n12_af
.Lx486_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx486_2:
 test rax, rax
 je .Lx486_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx486_7]
 lea rdx, [rip + .Lx486_8]
 jmp rax
.Lx486_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx486_2
.Lx486_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx486_2
.Lx486_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx486_6]
 sub rsp, 8
 push rax
 jmp xchain460_n17_α
.Lx486_6:
 add rsp, 16
 jmp xchain460_n12_af
 xchain460_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain460_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain460_n19_α
xchain460_n17_as:
 jmp xchain460_n12_as
 xchain460_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain460_n19_β
 jmp xchain460_n20_β
xchain460_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain460_n20_α
 jmp xchain460_n16_β
 xchain460_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx490_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx490_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx490_6]
 lea rdx, [rip + .Lx490_7]
 jmp rax
.Lx490_6:
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
 jmp .Lx490_2
.Lx490_7:
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
 jmp .Lx490_2
.Lx490_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx490_0]
 mov esi, 1
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
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain460_n20_af
 jmp xchain460_n21_α
 xchain460_n18_β:
 jmp xchain460_n20_af
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n19_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx491_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx491_10
.Lx491_9:
 xor eax, eax
.Lx491_10:
 test rax, rax
 jz .Lx491_0
 mov r8d, 0
 lea rcx, [rip + .Lx491_4]
 lea rdx, [rip + .Lx491_5]
 jmp rax
.Lx491_4:
 jmp xchain460_n17_as
.Lx491_5:
 jmp xchain460_n17_af
.Lx491_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx491_2:
 test rax, rax
 je .Lx491_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx491_7]
 lea rdx, [rip + .Lx491_8]
 jmp rax
.Lx491_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx491_2
.Lx491_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx491_2
.Lx491_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx491_6]
 sub rsp, 8
 push rax
 jmp xchain460_n17_as
.Lx491_6:
 add rsp, 16
 jmp xchain460_n17_af
 xchain460_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain460_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain460_n22_α
xchain460_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain460_n13_α
 jmp xchain460_n17_as
 xchain460_n20_β:
 mov dword ptr [rbp + 468], 2
xchain460_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain460_n23_β
 cmp eax, 1
 je xchain460_n24_β
 jmp xchain460_n17_af
# IR_ASSIGN gva
 xchain460_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879054000], rax
 mov qword ptr [1879054008], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain460_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain460_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain460_n25_α
 xchain460_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain460_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain460_n23_α:
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
 jmp xchain460_n20_as
 xchain460_n23_β:
 sub r12, 24
 jmp xchain460_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n24_α:
 mov rax, qword ptr [1879054000]
 mov rdx, qword ptr [1879054008]
 cmp eax, 3
 jne .Lx499_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx499_10
.Lx499_9:
 xor eax, eax
.Lx499_10:
 test rax, rax
 jz .Lx499_0
 mov r8d, 0
 lea rcx, [rip + .Lx499_4]
 lea rdx, [rip + .Lx499_5]
 jmp rax
.Lx499_4:
 jmp xchain460_n20_as
.Lx499_5:
 jmp xchain460_n20_af
.Lx499_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S9]
 xor esi, esi
 call rt_defer_open@PLT
.Lx499_2:
 test rax, rax
 je .Lx499_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx499_7]
 lea rdx, [rip + .Lx499_8]
 jmp rax
.Lx499_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx499_2
.Lx499_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx499_2
.Lx499_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx499_6]
 sub rsp, 8
 push rax
 jmp xchain460_n20_as
.Lx499_6:
 add rsp, 16
 jmp xchain460_n20_af
 xchain460_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n25_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx500_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx500_10
.Lx500_9:
 xor eax, eax
.Lx500_10:
 test rax, rax
 jz .Lx500_0
 mov r8d, 0
 lea rcx, [rip + .Lx500_4]
 lea rdx, [rip + .Lx500_5]
 jmp rax
.Lx500_4:
 jmp xchain460_n23_α
.Lx500_5:
 jmp xchain460_n22_β
.Lx500_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx500_2:
 test rax, rax
 je .Lx500_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx500_7]
 lea rdx, [rip + .Lx500_8]
 jmp rax
.Lx500_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx500_2
.Lx500_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx500_2
.Lx500_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx500_6]
 sub rsp, 8
 push rax
 jmp xchain460_n23_α
.Lx500_6:
 add rsp, 16
 jmp xchain460_n22_β
 xchain460_n25_β:
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
lea rax, [rip + xchain501_n2_β]
mov qword ptr [rbp + 160], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain501_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain501_n1_α
 xchain501_n0_β:
 add rsp, 16
 jmp proc_PAT$4_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain501_n1_α:
 jmp xchain501_n3_α
xchain501_n1_as:
 jmp xchain501_n2_α
 xchain501_n1_β:
 jmp xchain501_n5_β
xchain501_n1_af:
 jmp xchain501_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain501_n2_α:
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
 xchain501_n2_β:
 sub r12, 24
 jmp xchain501_n1_β
# IR_MATCH_LIT
 xchain501_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain501_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain501_n1_af
 add r14d, 1
 jmp xchain501_n4_α
 xchain501_n3_β:
 sub r14d, 1
 jmp xchain501_n1_af
# IR_MATCH_BAL
 xchain501_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain501_n4_β:
.Lx511_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx511_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx511_1
 add edx, 1
 jmp .Lx511_2
.Lx511_1:
 cmp esi, 41
 jne .Lx511_2
 sub edx, 1
 cmp edx, 0
 jl .Lx511_3
.Lx511_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx511_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain501_n5_α
.Lx511_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain501_n3_β
# IR_MATCH_LIT
 xchain501_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain501_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain501_n4_β
 add r14d, 1
 jmp xchain501_n1_as
 xchain501_n5_β:
 sub r14d, 1
 jmp xchain501_n4_β
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
  .Lstartup_pname17: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname17]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname18: .string "PAT$1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname18]
  lea rsi, [rip + proc_PAT$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname19: .string "PAT$2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname19]
  lea rsi, [rip + proc_PAT$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname20: .string "PAT$3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname20]
  lea rsi, [rip + proc_PAT$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname21: .string "PAT$4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname21]
  lea rsi, [rip + proc_PAT$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 192
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname21]
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
  .Lgvan103: .string "PAT$1$A0"
  .Lgvan104: .string "PAT$2$A0"
  .Lgvan105: .string "PAT$2$A1"
  .Lgvan106: .string "PATTMP$P54"
  .Lgvan107: .string "PATTMP$P55"
  .Lgvan108: .string "PATTMP$P56"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 109
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 109
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
 xchain514_n0_α:
 mov rdi, qword ptr [rip + .Lx515_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain514_n1_α
 xchain514_n0_β:
 jmp xchain514_n8_α
.Lx515_0:
 .quad .Lx515_0_s
.Lx515_0_s:
 .string "ALPHABET"
# IR_MATCH_HEAD
 xchain514_n1_α:
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
.Lx517_0:
 mov r14d, dword ptr [rsp + 0]
 jmp xchain514_n2_α
 xchain514_n1_β:
 add dword ptr [rsp + 0], 1
 mov eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jg .Lx517_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx517_1
 jmp .Lx517_0
.Lx517_1:
 mov rax, qword ptr [rsp + 8]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 16]
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain514_n8_α
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain514_n2_α:
 jmp xchain514_n4_α
xchain514_n2_as:
 jmp xchain514_n3_α
 xchain514_n2_β:
 jmp xchain514_n7_β
xchain514_n2_af:
 jmp xchain514_n1_β
# IR_MATCH_RELEASE
 xchain514_n3_α:
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
.Lx521_1:
 test rax, rax
 je .Lx521_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx521_3]
 lea rdx, [rip + .Lx521_4]
 jmp rax
.Lx521_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx521_1
.Lx521_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx521_1
.Lx521_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain514_n8_α
# IR_LIT_INTEGER
 xchain514_n4_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx522_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain514_n5_α
 xchain514_n4_β:
 jmp xchain514_n2_af
.Lx522_0:
 .quad 10
# IR_MATCH_POS
 xchain514_n5_α:
 mov rax, 10
 cmp r14d, eax
 jne xchain514_n2_af
 jmp xchain514_n6_α
 xchain514_n5_β:
 jmp xchain514_n2_af
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain514_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain514_n9_α
 xchain514_n6_β:
 add rsp, 16
 jmp xchain514_n2_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain514_n7_α:
 mov eax, dword ptr [rsp + 0]
 lea rcx, [rip + .S11]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain514_n2_as
 xchain514_n7_β:
 sub r12, 24
 jmp xchain514_n9_β
# IR_LIT_STRING
 xchain514_n8_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain514_n10_α
 xchain514_n8_β:
 jmp xchain514_n11_α
.Lx528_0:
 .quad .Lx528_0_s
.Lx528_0_s:
 .string "list(head,tail)"
# IR_MATCH_LEN
 xchain514_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jle .Lx529_240
 add rsp, 16
 jmp xchain514_n2_af
.Lx529_240:
 add r14d, 1
 jmp xchain514_n7_α
 xchain514_n9_β:
 sub r14d, 1
 add rsp, 16
 jmp xchain514_n2_af
 xchain514_n10_α:
# BOX IR_CALL DATA(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn531: .string "DATA"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn531]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain514_n11_α
 jmp xchain514_n11_α
 xchain514_n10_β:
 jmp xchain514_n11_α
# IR_LIT_INTEGER
 xchain514_n11_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain514_n12_α
 xchain514_n11_β:
 jmp xchain514_n13_α
.Lx532_0:
 .quad 0
# IR_ASSIGN gva
 xchain514_n12_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain514_n13_α
 xchain514_n12_β:
 jmp xchain514_n13_α
 xchain514_n13_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn535: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn535]
 lea rsi, [rbp + 480]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain514_n15_α
 jmp xchain514_n14_α
 xchain514_n13_β:
 jmp xchain514_n15_α
# IR_ASSIGN gva
 xchain514_n14_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain514_n15_α
 xchain514_n14_β:
 jmp xchain514_n15_α
 xchain514_n15_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn538: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn538]
 lea rsi, [rbp + 528]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain514_n17_α
 jmp xchain514_n16_α
 xchain514_n15_β:
 jmp xchain514_n17_α
# IR_ASSIGN gva
 xchain514_n16_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain514_n17_α
 xchain514_n16_β:
 jmp xchain514_n17_α
 xchain514_n17_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn541: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn541]
 lea rsi, [rbp + 576]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain514_n19_α
 jmp xchain514_n18_α
 xchain514_n17_β:
 jmp xchain514_n19_α
# IR_ASSIGN gva
 xchain514_n18_α:
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain514_n19_α
 xchain514_n18_β:
 jmp xchain514_n19_α
# IR_LIT_STRING
 xchain514_n19_α:
 mov qword ptr [rbp + 11408], 1
 mov rax, qword ptr [rip + .Lx543_0]
 mov qword ptr [rbp + 11416], rax
 jmp xchain514_n20_α
 xchain514_n19_β:
 jmp xchain514_n22_α
.Lx543_0:
 .quad .Lx543_0_s
.Lx543_0_s:
 .string " "
# IR_VAR
 xchain514_n20_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11440], rax
 mov qword ptr [rbp + 11448], rdx
 jmp xchain514_n21_α
 xchain514_n20_β:
 jmp xchain514_n22_α
 xchain514_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11408]
 mov rsi, qword ptr [rbp + 11416]
 mov rdx, qword ptr [rbp + 11440]
 mov rcx, qword ptr [rbp + 11448]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11376], rax
 mov qword ptr [rbp + 11384], rdx
 jmp xchain514_n23_α
 xchain514_n21_β:
 jmp xchain514_n22_α
# IR_LIT_STRING
 xchain514_n22_α:
 mov qword ptr [rbp + 11728], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [rbp + 11736], rax
 jmp xchain514_n24_α
 xchain514_n22_β:
 jmp xchain514_n27_α
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain514_n23_α:
 mov rax, qword ptr [rbp + 11376]
 mov rdx, qword ptr [rbp + 11384]
 mov qword ptr [1879053936], rax
 mov qword ptr [1879053944], rdx
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 jmp xchain514_n25_α
 xchain514_n23_β:
 jmp xchain514_n22_α
# IR_VAR
 xchain514_n24_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11760], rax
 mov qword ptr [rbp + 11768], rdx
 jmp xchain514_n26_α
 xchain514_n24_β:
 jmp xchain514_n27_α
# IR_LIT_STRING
 xchain514_n25_α:
 mov qword ptr [rbp + 11328], 1
 mov rax, qword ptr [rip + .Lx549_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain514_n28_α
 xchain514_n25_β:
 jmp xchain514_n22_α
.Lx549_0:
 .quad .Lx549_0_s
.Lx549_0_s:
 .string "PAT$1"
 xchain514_n26_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11728]
 mov rsi, qword ptr [rbp + 11736]
 mov rdx, qword ptr [rbp + 11760]
 mov rcx, qword ptr [rbp + 11768]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11696], rax
 mov qword ptr [rbp + 11704], rdx
 jmp xchain514_n29_α
 xchain514_n26_β:
 jmp xchain514_n27_α
# IR_LIT_STRING
 xchain514_n27_α:
 mov qword ptr [rbp + 11856], 1
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 11864], rax
 jmp xchain514_n30_α
 xchain514_n27_β:
 jmp xchain514_n34_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
 .string "PAT$3"
 xchain514_n28_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11328] -> [zr+11296]
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11304], rax
  .section .rodata
  .Lrkfn553: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn553]
 lea rsi, [rbp + 11296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11280], rax
 mov qword ptr [rbp + 11288], rdx
 cmp eax, 99
 je xchain514_n22_α
 jmp xchain514_n31_α
 xchain514_n28_β:
 jmp xchain514_n22_α
# IR_ASSIGN gva
 xchain514_n29_α:
 mov rax, qword ptr [rbp + 11696]
 mov rdx, qword ptr [rbp + 11704]
 mov qword ptr [1879053968], rax
 mov qword ptr [1879053976], rdx
 mov qword ptr [rbp + 11680], rax
 mov qword ptr [rbp + 11688], rdx
 jmp xchain514_n32_α
 xchain514_n29_β:
 jmp xchain514_n27_α
 xchain514_n30_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11856] -> [zr+11824]
 mov rax, qword ptr [rbp + 11856]
 mov qword ptr [rbp + 11824], rax
 mov rax, qword ptr [rbp + 11864]
 mov qword ptr [rbp + 11832], rax
  .section .rodata
  .Lrkfn556: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn556]
 lea rsi, [rbp + 11824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11808], rax
 mov qword ptr [rbp + 11816], rdx
 cmp eax, 99
 je xchain514_n34_α
 jmp xchain514_n33_α
 xchain514_n30_β:
 jmp xchain514_n34_α
# IR_ASSIGN gva
 xchain514_n31_α:
 mov rax, qword ptr [rbp + 11280]
 mov rdx, qword ptr [rbp + 11288]
 mov qword ptr [1879052944], rax
 mov qword ptr [1879052952], rdx
 mov qword ptr [rbp + 11264], rax
 mov qword ptr [rbp + 11272], rdx
 jmp xchain514_n22_α
 xchain514_n31_β:
 jmp xchain514_n22_α
# IR_LIT_STRING
 xchain514_n32_α:
 mov qword ptr [rbp + 11616], 1
 mov rax, qword ptr [rip + .Lx558_0]
 mov qword ptr [rbp + 11624], rax
 jmp xchain514_n35_α
 xchain514_n32_β:
 jmp xchain514_n27_α
.Lx558_0:
 .quad .Lx558_0_s
.Lx558_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain514_n33_α:
 mov rax, qword ptr [rbp + 11808]
 mov rdx, qword ptr [rbp + 11816]
 mov qword ptr [1879052976], rax
 mov qword ptr [1879052984], rdx
 mov qword ptr [rbp + 11792], rax
 mov qword ptr [rbp + 11800], rdx
 jmp xchain514_n34_α
 xchain514_n33_β:
 jmp xchain514_n34_α
# IR_LIT_STRING
 xchain514_n34_α:
 mov qword ptr [rbp + 11952], 1
 mov rax, qword ptr [rip + .Lx560_0]
 mov qword ptr [rbp + 11960], rax
 jmp xchain514_n36_α
 xchain514_n34_β:
 jmp xchain514_n39_α
.Lx560_0:
 .quad .Lx560_0_s
.Lx560_0_s:
 .string "PAT$4"
# IR_VAR
 xchain514_n35_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11648], rax
 mov qword ptr [rbp + 11656], rdx
 jmp xchain514_n37_α
 xchain514_n35_β:
 jmp xchain514_n27_α
 xchain514_n36_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11952] -> [zr+11920]
 mov rax, qword ptr [rbp + 11952]
 mov qword ptr [rbp + 11920], rax
 mov rax, qword ptr [rbp + 11960]
 mov qword ptr [rbp + 11928], rax
  .section .rodata
  .Lrkfn563: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn563]
 lea rsi, [rbp + 11920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11904], rax
 mov qword ptr [rbp + 11912], rdx
 cmp eax, 99
 je xchain514_n39_α
 jmp xchain514_n38_α
 xchain514_n36_β:
 jmp xchain514_n39_α
 xchain514_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11616]
 mov rsi, qword ptr [rbp + 11624]
 mov rdx, qword ptr [rbp + 11648]
 mov rcx, qword ptr [rbp + 11656]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11584], rax
 mov qword ptr [rbp + 11592], rdx
 jmp xchain514_n40_α
 xchain514_n37_β:
 jmp xchain514_n27_α
# IR_ASSIGN gva
 xchain514_n38_α:
 mov rax, qword ptr [rbp + 11904]
 mov rdx, qword ptr [rbp + 11912]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
 mov qword ptr [rbp + 11888], rax
 mov qword ptr [rbp + 11896], rdx
 jmp xchain514_n39_α
 xchain514_n38_β:
 jmp xchain514_n39_α
# IR_VAR
 xchain514_n39_α:
 mov rdi, qword ptr [rip + .Lx566_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain514_n42_α
 mov qword ptr [rbp + 12000], rax
 mov qword ptr [rbp + 12008], rdx
 jmp xchain514_n41_α
 xchain514_n39_β:
 jmp xchain514_n42_α
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "INPUT"
# IR_ASSIGN gva
 xchain514_n40_α:
 mov rax, qword ptr [rbp + 11584]
 mov rdx, qword ptr [rbp + 11592]
 mov qword ptr [1879053952], rax
 mov qword ptr [1879053960], rdx
 mov qword ptr [rbp + 11568], rax
 mov qword ptr [rbp + 11576], rdx
 jmp xchain514_n43_α
 xchain514_n40_β:
 jmp xchain514_n27_α
# IR_ASSIGN gva
 xchain514_n41_α:
 mov rax, qword ptr [rbp + 12000]
 mov rdx, qword ptr [rbp + 12008]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
 mov qword ptr [rbp + 11984], rax
 mov qword ptr [rbp + 11992], rdx
 jmp xchain514_n44_α
 xchain514_n41_β:
 jmp xchain514_n42_α
# IR_LIT_STRING
 xchain514_n42_α:
 mov qword ptr [rbp + 12272], 1
 mov rax, qword ptr [rip + .Lx569_0]
 mov qword ptr [rbp + 12280], rax
 jmp xchain514_n45_α
 xchain514_n42_β:
 jmp xchain514_n49_α
.Lx569_0:
 .quad .Lx569_0_s
.Lx569_0_s:
 .string "bank"
# IR_LIT_STRING
 xchain514_n43_α:
 mov qword ptr [rbp + 11536], 1
 mov rax, qword ptr [rip + .Lx570_0]
 mov qword ptr [rbp + 11544], rax
 jmp xchain514_n46_α
 xchain514_n43_β:
 jmp xchain514_n27_α
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "PAT$2"
# IR_VAR
 xchain514_n44_α:
 mov rax, qword ptr [1879053104]
 mov rdx, qword ptr [1879053112]
 mov qword ptr [rbp + 12112], rax
 mov qword ptr [rbp + 12120], rdx
 jmp xchain514_n47_α
 xchain514_n44_β:
 jmp xchain514_n39_α
 xchain514_n45_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052448]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052456]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx573_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx573_5
 mov rax, qword ptr [rbp + 12272]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12280]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx573_6]
 lea rdx, [rip + .Lx573_7]
 jmp rax
.Lx573_6:
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
 jmp .Lx573_2
.Lx573_7:
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
 jmp .Lx573_2
.Lx573_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12272]
 mov rdx, qword ptr [rbp + 12280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx573_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx573_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx573_3]
 lea rdx, [rip + .Lx573_4]
 jmp rax
.Lx573_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx573_2
.Lx573_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx573_2
.Lx573_1:
 call rt_faildescr@PLT
.Lx573_2:
 mov qword ptr [rbp + 12224], rax
 mov qword ptr [rbp + 12232], rdx
 cmp eax, 99
 je xchain514_n49_α
 jmp xchain514_n48_α
 xchain514_n45_β:
 jmp xchain514_n49_α
.Lx573_0:
 .quad .Lx573_0_s
.Lx573_0_s:
 .string "init_list"
 xchain514_n46_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11536] -> [zr+11504]
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 11504], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 11512], rax
  .section .rodata
  .Lrkfn575: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn575]
 lea rsi, [rbp + 11504]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11488], rax
 mov qword ptr [rbp + 11496], rdx
 cmp eax, 99
 je xchain514_n27_α
 jmp xchain514_n50_α
 xchain514_n46_β:
 jmp xchain514_n27_α
# IR_VAR
 xchain514_n47_α:
 mov rax, qword ptr [1879053088]
 mov rdx, qword ptr [1879053096]
 mov qword ptr [rbp + 12144], rax
 mov qword ptr [rbp + 12152], rdx
 jmp xchain514_n51_α
 xchain514_n47_β:
 jmp xchain514_n39_α
# IR_ASSIGN gva
 xchain514_n48_α:
 mov rax, qword ptr [rbp + 12224]
 mov rdx, qword ptr [rbp + 12232]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12208], rax
 mov qword ptr [rbp + 12216], rdx
 jmp xchain514_n49_α
 xchain514_n48_β:
 jmp xchain514_n49_α
# IR_LIT_STRING
 xchain514_n49_α:
 mov qword ptr [rbp + 12368], 1
 mov rax, qword ptr [rip + .Lx578_0]
 mov qword ptr [rbp + 12376], rax
 jmp xchain514_n52_α
 xchain514_n49_β:
 jmp xchain514_n55_α
.Lx578_0:
 .quad .Lx578_0_s
.Lx578_0_s:
 .string "BANK"
# IR_ASSIGN gva
 xchain514_n50_α:
 mov rax, qword ptr [rbp + 11488]
 mov rdx, qword ptr [rbp + 11496]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain514_n27_α
 xchain514_n50_β:
 jmp xchain514_n27_α
 xchain514_n51_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12112]
 mov rsi, qword ptr [rbp + 12120]
 mov rdx, qword ptr [rbp + 12144]
 mov rcx, qword ptr [rbp + 12152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12080], rax
 mov qword ptr [rbp + 12088], rdx
 jmp xchain514_n53_α
 xchain514_n51_β:
 jmp xchain514_n39_α
 xchain514_n52_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx582_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx582_5
 mov rax, qword ptr [rbp + 12368]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12376]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx582_6]
 lea rdx, [rip + .Lx582_7]
 jmp rax
.Lx582_6:
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
 jmp .Lx582_2
.Lx582_7:
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
 jmp .Lx582_2
.Lx582_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12368]
 mov rdx, qword ptr [rbp + 12376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx582_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx582_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx582_3]
 lea rdx, [rip + .Lx582_4]
 jmp rax
.Lx582_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx582_2
.Lx582_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx582_2
.Lx582_1:
 call rt_faildescr@PLT
.Lx582_2:
 mov qword ptr [rbp + 12320], rax
 mov qword ptr [rbp + 12328], rdx
 cmp eax, 99
 je xchain514_n55_α
 jmp xchain514_n54_α
 xchain514_n52_β:
 jmp xchain514_n55_α
.Lx582_0:
 .quad .Lx582_0_s
.Lx582_0_s:
 .string "stk_push_frame"
# IR_VAR
 xchain514_n53_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 12176], rax
 mov qword ptr [rbp + 12184], rdx
 jmp xchain514_n56_α
 xchain514_n53_β:
 jmp xchain514_n39_α
# IR_ASSIGN gva
 xchain514_n54_α:
 mov rax, qword ptr [rbp + 12320]
 mov rdx, qword ptr [rbp + 12328]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12304], rax
 mov qword ptr [rbp + 12312], rdx
 jmp xchain514_n55_α
 xchain514_n54_β:
 jmp xchain514_n55_α
# IR_VAR
 xchain514_n55_α:
 mov rax, qword ptr [1879053104]
 mov rdx, qword ptr [1879053112]
 mov qword ptr [rbp + 12544], rax
 mov qword ptr [rbp + 12552], rdx
 jmp xchain514_n57_α
 xchain514_n55_β:
 jmp xchain514_n58_α
 xchain514_n56_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12080]
 mov rsi, qword ptr [rbp + 12088]
 mov rdx, qword ptr [rbp + 12176]
 mov rcx, qword ptr [rbp + 12184]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12048], rax
 mov qword ptr [rbp + 12056], rdx
 jmp xchain514_n59_α
 xchain514_n56_β:
 jmp xchain514_n39_α
# IR_MATCH_HEAD
 xchain514_n57_α:
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
.Lx588_0:
 mov r14d, dword ptr [rbp + 12416]
 jmp xchain514_n60_α
 xchain514_n57_β:
 add dword ptr [rbp + 12416], 1
 mov eax, dword ptr [rbp + 12416]
 cmp eax, r15d
 jg .Lx588_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx588_1
 jmp .Lx588_0
.Lx588_1:
 mov rax, qword ptr [rbp + 12424]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12432]
 mov r12, qword ptr [rbp + 12448]
 mov rbp, qword ptr [rbp + 12456]
 jmp xchain514_n58_α
# IR_LIT_STRING
 xchain514_n58_α:
 mov qword ptr [rbp + 13072], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 13080], rax
 jmp xchain514_n61_α
 xchain514_n58_β:
 jmp xchain514_n64_α
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "bank"
# IR_ASSIGN gva
 xchain514_n59_α:
 mov rax, qword ptr [rbp + 12048]
 mov rdx, qword ptr [rbp + 12056]
 mov qword ptr [1879053104], rax
 mov qword ptr [1879053112], rdx
 mov qword ptr [rbp + 12032], rax
 mov qword ptr [rbp + 12040], rdx
 jmp xchain514_n39_α
 xchain514_n59_β:
 jmp xchain514_n39_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain514_n60_α:
 mov rax, qword ptr [1879053056]
 mov rdx, qword ptr [1879053064]
 cmp eax, 3
 jne .Lx591_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx591_10
.Lx591_9:
 xor eax, eax
.Lx591_10:
 test rax, rax
 jz .Lx591_0
 mov r8d, 0
 lea rcx, [rip + .Lx591_4]
 lea rdx, [rip + .Lx591_5]
 jmp rax
.Lx591_4:
 jmp xchain514_n62_α
.Lx591_5:
 jmp xchain514_n57_β
.Lx591_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S12]
 xor esi, esi
 call rt_defer_open@PLT
.Lx591_2:
 test rax, rax
 je .Lx591_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx591_7]
 lea rdx, [rip + .Lx591_8]
 jmp rax
.Lx591_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx591_2
.Lx591_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx591_2
.Lx591_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain514_n57_β
 mov r14d, eax
 lea rax, [rip + .Lx591_6]
 sub rsp, 8
 push rax
 jmp xchain514_n62_α
.Lx591_6:
 add rsp, 16
 jmp xchain514_n57_β
 xchain514_n60_β:
 jmp qword ptr [rsp]
 xchain514_n61_α:
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
 mov rdi, qword ptr [rip + .Lx593_0]
 mov esi, 2
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx593_5
 mov rax, qword ptr [rbp + 13072]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rbp + 13080]
 mov qword ptr [1879052440], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx593_6]
 lea rdx, [rip + .Lx593_7]
 jmp rax
.Lx593_6:
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
 jmp .Lx593_2
.Lx593_7:
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
 jmp .Lx593_2
.Lx593_5:
 add rsp, 48
 mov edi, 0
 mov rsi, qword ptr [rbp + 13072]
 mov rdx, qword ptr [rbp + 13080]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx593_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx593_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx593_3]
 lea rdx, [rip + .Lx593_4]
 jmp rax
.Lx593_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx593_2
.Lx593_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx593_2
.Lx593_1:
 call rt_faildescr@PLT
.Lx593_2:
 mov qword ptr [rbp + 13024], rax
 mov qword ptr [rbp + 13032], rdx
 cmp eax, 99
 je xchain514_n64_α
 jmp xchain514_n63_α
 xchain514_n61_β:
 jmp xchain514_n64_α
.Lx593_0:
 .quad .Lx593_0_s
.Lx593_0_s:
 .string "stk_pop_final"
# IR_MATCH_RELEASE
 xchain514_n62_α:
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
.Lx595_1:
 test rax, rax
 je .Lx595_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx595_3]
 lea rdx, [rip + .Lx595_4]
 jmp rax
.Lx595_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx595_1
.Lx595_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx595_1
.Lx595_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 12448]
 jmp xchain514_n65_α
# IR_ASSIGN gva
 xchain514_n63_α:
 mov rax, qword ptr [rbp + 13024]
 mov rdx, qword ptr [rbp + 13032]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13008], rax
 mov qword ptr [rbp + 13016], rdx
 jmp xchain514_n64_α
 xchain514_n63_β:
 jmp xchain514_n64_α
 xchain514_n64_α:
 sub rsp, 16
 mov rax, qword ptr [1879052800]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052808]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx598_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx598_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx598_6]
 lea rdx, [rip + .Lx598_7]
 jmp rax
.Lx598_6:
 mov rdi, qword ptr [1879052800]
 mov rsi, qword ptr [1879052808]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx598_2
.Lx598_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx598_2
.Lx598_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx598_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx598_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx598_3]
 lea rdx, [rip + .Lx598_4]
 jmp rax
.Lx598_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx598_2
.Lx598_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx598_2
.Lx598_1:
 call rt_faildescr@PLT
.Lx598_2:
 mov qword ptr [rbp + 13120], rax
 mov qword ptr [rbp + 13128], rdx
 cmp eax, 99
 je main_γ
 jmp xchain514_n66_α
 xchain514_n64_β:
 jmp main_γ
.Lx598_0:
 .quad .Lx598_0_s
.Lx598_0_s:
 .string "pp_bank"
# IR_LIT_STRING
 xchain514_n65_α:
 mov qword ptr [rbp + 12480], 1
 mov rax, qword ptr [rip + .Lx599_0]
 mov qword ptr [rbp + 12488], rax
 jmp xchain514_n67_α
 xchain514_n65_β:
 jmp xchain514_n58_α
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string ""
# IR_ASSIGN gva
 xchain514_n66_α:
 mov rax, qword ptr [rbp + 13120]
 mov rdx, qword ptr [rbp + 13128]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13104], rax
 mov qword ptr [rbp + 13112], rdx
 jmp main_γ
 xchain514_n66_β:
 jmp main_γ
# IR_MATCH_REPLACE
 xchain514_n67_α:
 mov rdi, qword ptr [rip + .Lx602_0]
 mov rsi, qword ptr [rbp + 12544]
 mov rdx, qword ptr [rbp + 12552]
 mov ecx, dword ptr [rbp + 12416]
 mov r8, qword ptr [rbp + 12440]
 lea r9, [rbp + 12480]
 call rt_match_replace@PLT
 jmp .Lx602_1
.Lx602_0:
 .quad .Lx602_0_s
.Lx602_0_s:
 .string "src"
.Lx602_1:
 mov rbp, qword ptr [rbp + 12456]
 jmp xchain514_n68_α
# IR_LIT_STRING
 xchain514_n68_α:
 mov qword ptr [rbp + 12640], 1
 mov rax, qword ptr [rip + .Lx603_0]
 mov qword ptr [rbp + 12648], rax
 jmp xchain514_n69_α
 xchain514_n68_β:
 jmp xchain514_n71_α
.Lx603_0:
 .quad .Lx603_0_s
.Lx603_0_s:
 .string "ROOT"
 xchain514_n69_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx605_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx605_5
 mov rax, qword ptr [rbp + 12640]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12648]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx605_6]
 lea rdx, [rip + .Lx605_7]
 jmp rax
.Lx605_6:
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
 jmp .Lx605_2
.Lx605_7:
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
 jmp .Lx605_2
.Lx605_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12640]
 mov rdx, qword ptr [rbp + 12648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx605_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx605_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx605_3]
 lea rdx, [rip + .Lx605_4]
 jmp rax
.Lx605_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx605_2
.Lx605_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx605_2
.Lx605_1:
 call rt_faildescr@PLT
.Lx605_2:
 mov qword ptr [rbp + 12592], rax
 mov qword ptr [rbp + 12600], rdx
 cmp eax, 99
 je xchain514_n71_α
 jmp xchain514_n70_α
 xchain514_n69_β:
 jmp xchain514_n71_α
.Lx605_0:
 .quad .Lx605_0_s
.Lx605_0_s:
 .string "stk_push_frame"
# IR_ASSIGN gva
 xchain514_n70_α:
 mov rax, qword ptr [rbp + 12592]
 mov rdx, qword ptr [rbp + 12600]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12576], rax
 mov qword ptr [rbp + 12584], rdx
 jmp xchain514_n71_α
 xchain514_n70_β:
 jmp xchain514_n71_α
# IR_VAR
 xchain514_n71_α:
 mov rax, qword ptr [1879053072]
 mov rdx, qword ptr [1879053080]
 mov qword ptr [rbp + 12768], rax
 mov qword ptr [rbp + 12776], rdx
 jmp xchain514_n72_α
 xchain514_n71_β:
 jmp xchain514_n73_α
# IR_MATCH_HEAD
 xchain514_n72_α:
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
.Lx609_0:
 mov r14d, dword ptr [rbp + 12688]
 jmp xchain514_n74_α
 xchain514_n72_β:
 add dword ptr [rbp + 12688], 1
 mov eax, dword ptr [rbp + 12688]
 cmp eax, r15d
 jg .Lx609_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx609_1
 jmp .Lx609_0
.Lx609_1:
 mov rax, qword ptr [rbp + 12696]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12704]
 mov r12, qword ptr [rbp + 12720]
 mov rbp, qword ptr [rbp + 12728]
 jmp xchain514_n73_α
# IR_LIT_STRING
 xchain514_n73_α:
 mov qword ptr [rbp + 12896], 1
 mov rax, qword ptr [rip + .Lx610_0]
 mov qword ptr [rbp + 12904], rax
 jmp xchain514_n75_α
 xchain514_n73_β:
 jmp xchain514_n78_α
.Lx610_0:
 .quad .Lx610_0_s
.Lx610_0_s:
 .string "Parse failed on: "
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain514_n74_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx611_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx611_10
.Lx611_9:
 xor eax, eax
.Lx611_10:
 test rax, rax
 jz .Lx611_0
 mov r8d, 0
 lea rcx, [rip + .Lx611_4]
 lea rdx, [rip + .Lx611_5]
 jmp rax
.Lx611_4:
 jmp xchain514_n76_α
.Lx611_5:
 jmp xchain514_n72_β
.Lx611_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx611_2:
 test rax, rax
 je .Lx611_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx611_7]
 lea rdx, [rip + .Lx611_8]
 jmp rax
.Lx611_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx611_2
.Lx611_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx611_2
.Lx611_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain514_n72_β
 mov r14d, eax
 lea rax, [rip + .Lx611_6]
 sub rsp, 8
 push rax
 jmp xchain514_n76_α
.Lx611_6:
 add rsp, 16
 jmp xchain514_n72_β
 xchain514_n74_β:
 jmp qword ptr [rsp]
# IR_VAR
 xchain514_n75_α:
 mov rax, qword ptr [1879053072]
 mov rdx, qword ptr [1879053080]
 mov qword ptr [rbp + 12928], rax
 mov qword ptr [rbp + 12936], rdx
 jmp xchain514_n77_α
 xchain514_n75_β:
 jmp xchain514_n78_α
# IR_MATCH_RELEASE
 xchain514_n76_α:
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
.Lx614_1:
 test rax, rax
 je .Lx614_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx614_3]
 lea rdx, [rip + .Lx614_4]
 jmp rax
.Lx614_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx614_1
.Lx614_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx614_1
.Lx614_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 12720]
 mov rbp, qword ptr [rbp + 12728]
 jmp xchain514_n79_α
 xchain514_n77_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12896]
 mov rsi, qword ptr [rbp + 12904]
 mov rdx, qword ptr [rbp + 12928]
 mov rcx, qword ptr [rbp + 12936]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12864], rax
 mov qword ptr [rbp + 12872], rdx
 jmp xchain514_n80_α
 xchain514_n77_β:
 jmp xchain514_n78_α
 xchain514_n78_α:
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
 mov rdi, qword ptr [rip + .Lx617_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx617_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx617_6]
 lea rdx, [rip + .Lx617_7]
 jmp rax
.Lx617_6:
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
 jmp .Lx617_2
.Lx617_7:
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
 jmp .Lx617_2
.Lx617_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx617_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx617_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx617_3]
 lea rdx, [rip + .Lx617_4]
 jmp rax
.Lx617_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx617_2
.Lx617_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx617_2
.Lx617_1:
 call rt_faildescr@PLT
.Lx617_2:
 mov qword ptr [rbp + 12976], rax
 mov qword ptr [rbp + 12984], rdx
 cmp eax, 99
 je xchain514_n55_α
 jmp xchain514_n81_α
 xchain514_n78_β:
 jmp xchain514_n55_α
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "stk_pop_into_parent"
 xchain514_n79_α:
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
 mov rdi, qword ptr [rip + .Lx619_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx619_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx619_6]
 lea rdx, [rip + .Lx619_7]
 jmp rax
.Lx619_6:
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
 jmp .Lx619_2
.Lx619_7:
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
 jmp .Lx619_2
.Lx619_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx619_0]
 mov esi, 0
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
 mov qword ptr [rbp + 12816], rax
 mov qword ptr [rbp + 12824], rdx
 cmp eax, 99
 je xchain514_n55_α
 jmp xchain514_n82_α
 xchain514_n79_β:
 jmp xchain514_n55_α
.Lx619_0:
 .quad .Lx619_0_s
.Lx619_0_s:
 .string "stk_pop_into_parent"
# IR_ASSIGN global
 xchain514_n80_α:
 mov rsi, qword ptr [rbp + 12864]
 mov rdx, qword ptr [rbp + 12872]
 mov rdi, qword ptr [rip + .Lx620_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 12848], rax
 mov qword ptr [rbp + 12856], rdx
 jmp xchain514_n78_α
 xchain514_n80_β:
 jmp xchain514_n78_α
.Lx620_0:
 .quad .Lx620_0_s
.Lx620_0_s:
 .string "OUTPUT"
# IR_ASSIGN gva
 xchain514_n81_α:
 mov rax, qword ptr [rbp + 12976]
 mov rdx, qword ptr [rbp + 12984]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12960], rax
 mov qword ptr [rbp + 12968], rdx
 jmp xchain514_n55_α
 xchain514_n81_β:
 jmp xchain514_n55_α
# IR_ASSIGN gva
 xchain514_n82_α:
 mov rax, qword ptr [rbp + 12816]
 mov rdx, qword ptr [rbp + 12824]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12800], rax
 mov qword ptr [rbp + 12808], rdx
 jmp xchain514_n55_α
 xchain514_n82_β:
 jmp xchain514_n55_α
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
.S1: .string "*pop_list"
.S2: .string "tag"
.S3: .string "PATTMP$P54"
.S4: .string "PATTMP$P56"
.S5: .string "word"
.S6: .string "delim"
.S7: .string "group"
.S8: .string "wrd"
.S9: .string "PATTMP$P55"
.S10: .string "item"
.S11: .string "nl"
.S12: .string "spat"
.text
