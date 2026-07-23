  .intel_syntax noprefix
  .text
  .globl proc_stk_push_frame_α
proc_stk_push_frame_α:
#=======================================================================================================================
    .global proc_stk_push_frame_α
    .global proc_stk_push_frame_β
    .global proc_stk_push_frame_γ
    .global proc_stk_push_frame_ω
  sub rsp, 928
  mov [rsp + 904], rcx
  mov [rsp + 912], rdx
  mov [rsp + 920], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 896
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 888], rsp
proc_stk_push_frame_α_body:
# IR_VAR
 xchain0_n0_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain0_n1_α
# IR_LIT_INTEGER
 xchain0_n1_α:
 mov qword ptr [rbp + 176], 6
 mov rax, qword ptr [rip + .Lx2_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain0_n3_α
.Lx2_0:
 .quad 1
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [1879052848]
 mov rdx, qword ptr [1879052856]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain0_n4_α
 xchain0_n3_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 144]
 cmp eax, 100
 je .Lx4_0
 mov eax, dword ptr [rbp + 144]
 cmp eax, 6
 jne .Lx4_2
.Lx4_1:
 mov rax, qword ptr [rbp + 152]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 112], 6
 mov qword ptr [rbp + 120], rax
 jmp xchain0_n6_α
.Lx4_0:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 mov rdx, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 184]
 mov r8d, 0
 lea r9, [rbp + 112]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain0_n6_α
.Lx4_2:
 mov rdi, qword ptr [rbp + 144]
 mov rsi, qword ptr [rbp + 152]
 mov rdx, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 184]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n2_α
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 jmp xchain0_n6_α
 xchain0_n3_β:
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain0_n7_α
# IR_VAR
 xchain0_n5_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n8_α
# IR_ASSIGN gva
 xchain0_n6_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain0_n2_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n7_α:
 mov rdi, qword ptr [rbp + 208]
 mov rsi, qword ptr [rbp + 216]
 mov rdx, qword ptr [rbp + 240]
 mov rcx, qword ptr [rbp + 248]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n5_α
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n10_α
# IR_VAR
 xchain0_n8_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n11_α
# IR_VAR
 xchain0_n9_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain0_n14_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n11_α:
 mov rdi, qword ptr [rbp + 352]
 mov rsi, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 384]
 mov rcx, qword ptr [rbp + 392]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n9_α
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain0_n15_α
# IR_VAR
 xchain0_n12_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n16_α
# IR_VAR
 xchain0_n13_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain0_n17_α
# IR_ASSIGN_VAR
 xchain0_n14_α:
 mov rdi, qword ptr [rbp + 272]
 mov rsi, qword ptr [rbp + 280]
 mov rdx, qword ptr [rbp + 304]
 mov rcx, qword ptr [rbp + 312]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n5_α
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n15_α:
 mov qword ptr [rbp + 448], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 456], rax
 jmp xchain0_n19_α
.Lx16_0:
 .quad 0
# IR_SUBSCRIPT x[i] variable
 xchain0_n16_α:
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n13_α
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain0_n20_α
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n21_α
# IR_LIT_STRING
 xchain0_n18_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain0_n22_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "dummy"
# IR_ASSIGN_VAR
 xchain0_n19_α:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 448]
 mov rcx, qword ptr [rbp + 456]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n9_α
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain0_n9_α
 xchain0_n20_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn22: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn22]
 lea rsi, [rbp + 608]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain0_n13_α
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n13_α
 xchain0_n21_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
  .section .rodata
  .Lrkfn24: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn24]
 lea rsi, [rbp + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain0_n18_α
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n18_α
 xchain0_n22_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn26: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn26]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_stk_push_frame_γ
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp proc_stk_push_frame_γ
# IR_ASSIGN_VAR
 xchain0_n23_α:
 mov rdi, qword ptr [rbp + 560]
 mov rsi, qword ptr [rbp + 568]
 mov rdx, qword ptr [rbp + 592]
 mov rcx, qword ptr [rbp + 600]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n13_α
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain0_n13_α
# IR_ASSIGN gva
 xchain0_n24_α:
 mov rax, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n18_α
# IR_ASSIGN gva
 xchain0_n25_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp proc_stk_push_frame_γ
proc_stk_push_frame_res:
add rsp, 8
pop rbp
proc_stk_push_frame_β:
jmp proc_stk_push_frame_ω
proc_stk_push_frame_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 904]
lea rsp, [rbp + 928]
mov rbp, [rbp + 920]
jmp rax
proc_stk_push_frame_ω:
mov rax, [rbp + 912]
lea rsp, [rbp + 928]
mov rbp, [rbp + 920]
jmp rax
  .globl proc_stk_push_item_α
proc_stk_push_item_α:
#=======================================================================================================================
    .global proc_stk_push_item_α
    .global proc_stk_push_item_β
    .global proc_stk_push_item_γ
    .global proc_stk_push_item_ω
  sub rsp, 928
  mov [rsp + 904], rcx
  mov [rsp + 912], rdx
  mov [rsp + 920], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 896
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 888], rsp
proc_stk_push_item_α_body:
# IR_VAR
 xchain30_n0_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain30_n1_α
 xchain30_n1_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn33: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn33]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain30_n2_α
 jmp xchain30_n3_α
 xchain30_n1_β:
 jmp xchain30_n2_α
# IR_VAR
 xchain30_n2_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain30_n4_α
# IR_ASSIGN gva
 xchain30_n3_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain30_n2_α
# IR_VAR
 xchain30_n4_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain30_n6_α
# IR_VAR
 xchain30_n5_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain30_n7_α
# IR_SUBSCRIPT x[i] variable
 xchain30_n6_α:
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 224]
 mov rcx, qword ptr [rbp + 232]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain30_n9_α
# IR_VAR
 xchain30_n7_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain30_n10_α
# IR_LIT_STRING
 xchain30_n8_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx40_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain30_n11_α
.Lx40_0:
 .quad .Lx40_0_s
.Lx40_0_s:
 .string "dummy"
# IR_VAR
 xchain30_n9_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain30_n12_α
# IR_SUBSCRIPT x[i] variable
 xchain30_n10_α:
 mov rdi, qword ptr [rbp + 480]
 mov rsi, qword ptr [rbp + 488]
 mov rdx, qword ptr [rbp + 512]
 mov rcx, qword ptr [rbp + 520]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain30_n13_α
 xchain30_n11_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+816]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn44: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn44]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_stk_push_item_γ
 jmp xchain30_n14_α
 xchain30_n11_β:
 jmp proc_stk_push_item_γ
# IR_VAR
 xchain30_n12_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain30_n15_α
# IR_DEREF variable -> value
 xchain30_n13_α:
 mov rdi, qword ptr [rbp + 544]
 mov rsi, qword ptr [rbp + 552]
 call rt_deref@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain30_n16_α
# IR_ASSIGN gva
 xchain30_n14_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp proc_stk_push_item_γ
# IR_SUBSCRIPT x[i] variable
 xchain30_n15_α:
 mov rdi, qword ptr [rbp + 320]
 mov rsi, qword ptr [rbp + 328]
 mov rdx, qword ptr [rbp + 352]
 mov rcx, qword ptr [rbp + 360]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain30_n17_α
# IR_VAR
 xchain30_n16_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain30_n18_α
# IR_DEREF variable -> value
 xchain30_n17_α:
 mov rdi, qword ptr [rbp + 384]
 mov rsi, qword ptr [rbp + 392]
 call rt_deref@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain30_n19_α
# IR_VAR
 xchain30_n18_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain30_n20_α
# IR_LIT_INTEGER
 xchain30_n19_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx52_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain30_n21_α
.Lx52_0:
 .quad 1
# IR_SUBSCRIPT x[i] variable
 xchain30_n20_α:
 mov rdi, qword ptr [rbp + 592]
 mov rsi, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 624]
 mov rcx, qword ptr [rbp + 632]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain30_n22_α
 xchain30_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 416]
 cmp eax, 100
 je .Lx54_0
 mov eax, dword ptr [rbp + 416]
 cmp eax, 6
 jne .Lx54_2
.Lx54_1:
 mov rax, qword ptr [rbp + 424]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 288], 6
 mov qword ptr [rbp + 296], rax
 jmp xchain30_n23_α
.Lx54_0:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 0
 lea r9, [rbp + 288]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain30_n23_α
.Lx54_2:
 mov rdi, qword ptr [rbp + 416]
 mov rsi, qword ptr [rbp + 424]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain30_n23_α
 xchain30_n21_β:
 jmp xchain30_n5_α
# IR_DEREF variable -> value
 xchain30_n22_α:
 mov rdi, qword ptr [rbp + 656]
 mov rsi, qword ptr [rbp + 664]
 call rt_deref@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain30_n24_α
# IR_ASSIGN_VAR
 xchain30_n23_α:
 mov rdi, qword ptr [rbp + 256]
 mov rsi, qword ptr [rbp + 264]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain30_n5_α
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain30_n5_α
# IR_SUBSCRIPT x[i] variable
 xchain30_n24_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain30_n25_α
# IR_VAR
 xchain30_n25_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain30_n26_α
# IR_ASSIGN_VAR
 xchain30_n26_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 736]
 mov rcx, qword ptr [rbp + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain30_n8_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain30_n8_α
proc_stk_push_item_res:
add rsp, 8
pop rbp
proc_stk_push_item_β:
jmp proc_stk_push_item_ω
proc_stk_push_item_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 904]
lea rsp, [rbp + 928]
mov rbp, [rbp + 920]
jmp rax
proc_stk_push_item_ω:
mov rax, [rbp + 912]
lea rsp, [rbp + 928]
mov rbp, [rbp + 920]
jmp rax
  .globl proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
#=======================================================================================================================
    .global proc_stk_pop_into_parent_α
    .global proc_stk_pop_into_parent_β
    .global proc_stk_pop_into_parent_γ
    .global proc_stk_pop_into_parent_ω
  sub rsp, 1152
  mov [rsp + 1128], rcx
  mov [rsp + 1136], rdx
  mov [rsp + 1144], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1120
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1112], rsp
proc_stk_pop_into_parent_α_body:
# IR_VAR
 xchain60_n0_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain60_n1_α
 xchain60_n1_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn63: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn63]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain60_n2_α
 jmp xchain60_n3_α
 xchain60_n1_β:
 jmp xchain60_n2_α
# IR_VAR
 xchain60_n2_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain60_n4_α
# IR_ASSIGN gva
 xchain60_n3_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain60_n2_α
 xchain60_n4_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn67: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn67]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain60_n5_α
 jmp xchain60_n6_α
 xchain60_n4_β:
 jmp xchain60_n5_α
# IR_VAR
 xchain60_n5_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain60_n7_α
# IR_ASSIGN gva
 xchain60_n6_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain60_n5_α
 xchain60_n7_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
  .section .rodata
  .Lrkfn71: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn71]
 lea rsi, [rbp + 320]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain60_n8_α
 jmp xchain60_n9_α
 xchain60_n7_β:
 jmp xchain60_n8_α
# IR_VAR
 xchain60_n8_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain60_n10_α
# IR_ASSIGN gva
 xchain60_n9_α:
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain60_n8_α
# IR_VAR
 xchain60_n10_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain60_n12_α
# IR_VAR
 xchain60_n11_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain60_n13_α
# IR_SUBSCRIPT x[i] variable
 xchain60_n12_α:
 mov rdi, qword ptr [rbp + 400]
 mov rsi, qword ptr [rbp + 408]
 mov rdx, qword ptr [rbp + 432]
 mov rcx, qword ptr [rbp + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain60_n11_α
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain60_n15_α
# IR_VAR
 xchain60_n13_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain60_n16_α
# IR_VAR
 xchain60_n14_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain60_n17_α
# IR_DEREF variable -> value
 xchain60_n15_α:
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 call rt_deref@PLT
 cmp eax, 99
 je xchain60_n11_α
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain60_n19_α
# IR_SUBSCRIPT x[i] variable
 xchain60_n16_α:
 mov rdi, qword ptr [rbp + 512]
 mov rsi, qword ptr [rbp + 520]
 mov rdx, qword ptr [rbp + 544]
 mov rcx, qword ptr [rbp + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain60_n14_α
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain60_n20_α
# IR_VAR
 xchain60_n17_α:
 mov rax, qword ptr [1879052384]
 mov rdx, qword ptr [1879052392]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain60_n21_α
# IR_LIT_STRING
 xchain60_n18_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx82_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain60_n22_α
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain60_n19_α:
 mov rax, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain60_n11_α
# IR_VAR
 xchain60_n20_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain60_n23_α
# IR_SUBSCRIPT x[i] variable
 xchain60_n21_α:
 mov rdi, qword ptr [rbp + 720]
 mov rsi, qword ptr [rbp + 728]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain60_n24_α
 xchain60_n22_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
  .section .rodata
  .Lrkfn87: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn87]
 lea rsi, [rbp + 1040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je proc_stk_pop_into_parent_γ
 jmp xchain60_n25_α
 xchain60_n22_β:
 jmp proc_stk_pop_into_parent_γ
# IR_LIT_INTEGER
 xchain60_n23_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx88_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain60_n26_α
.Lx88_0:
 .quad 1
# IR_DEREF variable -> value
 xchain60_n24_α:
 mov rdi, qword ptr [rbp + 784]
 mov rsi, qword ptr [rbp + 792]
 call rt_deref@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain60_n27_α
# IR_ASSIGN gva
 xchain60_n25_α:
 mov rax, qword ptr [rbp + 1024]
 mov rdx, qword ptr [rbp + 1032]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp proc_stk_pop_into_parent_γ
 xchain60_n26_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 640]
 cmp eax, 100
 je .Lx91_0
 mov eax, dword ptr [rbp + 640]
 cmp eax, 6
 jne .Lx91_2
.Lx91_1:
 mov rax, qword ptr [rbp + 648]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 608], 6
 mov qword ptr [rbp + 616], rax
 jmp xchain60_n28_α
.Lx91_0:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 mov r8d, 0
 lea r9, [rbp + 608]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain60_n28_α
.Lx91_2:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 mov rdx, qword ptr [rbp + 672]
 mov rcx, qword ptr [rbp + 680]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain60_n14_α
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain60_n28_α
 xchain60_n26_β:
 jmp xchain60_n14_α
# IR_VAR
 xchain60_n27_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain60_n29_α
# IR_ASSIGN_VAR
 xchain60_n28_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain60_n14_α
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain60_n14_α
# IR_LIT_INTEGER
 xchain60_n29_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain60_n30_α
.Lx94_0:
 .quad 1
 xchain60_n30_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 864]
 cmp eax, 100
 je .Lx95_0
 mov eax, dword ptr [rbp + 864]
 cmp eax, 6
 jne .Lx95_2
.Lx95_1:
 mov rax, qword ptr [rbp + 872]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 832], 6
 mov qword ptr [rbp + 840], rax
 jmp xchain60_n31_α
.Lx95_0:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 0
 lea r9, [rbp + 832]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain60_n31_α
.Lx95_2:
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 896]
 mov rcx, qword ptr [rbp + 904]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain60_n31_α
 xchain60_n30_β:
 jmp xchain60_n18_α
# IR_SUBSCRIPT x[i] variable
 xchain60_n31_α:
 mov rdi, qword ptr [rbp + 816]
 mov rsi, qword ptr [rbp + 824]
 mov rdx, qword ptr [rbp + 832]
 mov rcx, qword ptr [rbp + 840]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain60_n32_α
# IR_VAR
 xchain60_n32_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain60_n33_α
# IR_ASSIGN_VAR
 xchain60_n33_α:
 mov rdi, qword ptr [rbp + 928]
 mov rsi, qword ptr [rbp + 936]
 mov rdx, qword ptr [rbp + 960]
 mov rcx, qword ptr [rbp + 968]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain60_n18_α
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain60_n18_α
proc_stk_pop_into_parent_res:
add rsp, 8
pop rbp
proc_stk_pop_into_parent_β:
jmp proc_stk_pop_into_parent_ω
proc_stk_pop_into_parent_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1128]
lea rsp, [rbp + 1152]
mov rbp, [rbp + 1144]
jmp rax
proc_stk_pop_into_parent_ω:
mov rax, [rbp + 1136]
lea rsp, [rbp + 1152]
mov rbp, [rbp + 1144]
jmp rax
  .globl proc_stk_pop_final_α
proc_stk_pop_final_α:
#=======================================================================================================================
    .global proc_stk_pop_final_α
    .global proc_stk_pop_final_β
    .global proc_stk_pop_final_γ
    .global proc_stk_pop_final_ω
  sub rsp, 560
  mov [rsp + 536], rcx
  mov [rsp + 544], rdx
  mov [rsp + 552], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 528
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 520], rsp
proc_stk_pop_final_α_body:
# IR_VAR
 xchain99_n0_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain99_n1_α
 xchain99_n1_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn102: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn102]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain99_n2_α
 jmp xchain99_n3_α
 xchain99_n1_β:
 jmp xchain99_n2_α
# IR_VAR
 xchain99_n2_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain99_n4_α
# IR_ASSIGN gva
 xchain99_n3_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052368], rax
 mov qword ptr [1879052376], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain99_n2_α
 xchain99_n4_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn106: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn106]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain99_n5_α
 jmp xchain99_n6_α
 xchain99_n4_β:
 jmp xchain99_n5_α
# IR_VAR
 xchain99_n5_α:
 mov rax, qword ptr [1879052432]
 mov rdx, qword ptr [1879052440]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain99_n7_α
# IR_ASSIGN gva
 xchain99_n6_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain99_n5_α
 xchain99_n7_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn110: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn110]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain99_n8_α
 jmp xchain99_n9_α
 xchain99_n7_β:
 jmp xchain99_n8_α
# IR_LIT_STRING
 xchain99_n8_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain99_n10_α
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "dummy"
# IR_VAR
 xchain99_n9_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain99_n11_α
 xchain99_n10_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
  .section .rodata
  .Lrkfn114: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn114]
 lea rsi, [rbp + 448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_stk_pop_final_γ
 jmp xchain99_n12_α
 xchain99_n10_β:
 jmp proc_stk_pop_final_γ
# IR_ASSIGN_VAR
 xchain99_n11_α:
 mov rdi, qword ptr [rbp + 288]
 mov rsi, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 368]
 mov rcx, qword ptr [rbp + 376]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain99_n8_α
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain99_n8_α
# IR_ASSIGN gva
 xchain99_n12_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp proc_stk_pop_final_γ
proc_stk_pop_final_res:
add rsp, 8
pop rbp
proc_stk_pop_final_β:
jmp proc_stk_pop_final_ω
proc_stk_pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 536]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
proc_stk_pop_final_ω:
mov rax, [rbp + 544]
lea rsp, [rbp + 560]
mov rbp, [rbp + 552]
jmp rax
  .globl proc_init_list_α
proc_init_list_α:
#=======================================================================================================================
    .global proc_init_list_α
    .global proc_init_list_β
    .global proc_init_list_γ
    .global proc_init_list_ω
  sub rsp, 608
  mov [rsp + 584], rcx
  mov [rsp + 592], rdx
  mov [rsp + 600], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 576
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 568], rsp
proc_init_list_α_body:
# IR_VAR
 xchain117_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 jmp xchain117_n1_α
 xchain117_n1_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+112]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn120: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn120]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain117_n2_α
 jmp xchain117_n3_α
 xchain117_n1_β:
 jmp xchain117_n2_α
# IR_LIT_STRING
 xchain117_n2_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain117_n4_α
.Lx121_0:
 .quad .Lx121_0_s
.Lx121_0_s:
 .string ""
# IR_LIT_STRING
 xchain117_n3_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain117_n5_α
.Lx122_0:
 .quad .Lx122_0_s
.Lx122_0_s:
 .string ""
# IR_ASSIGN gva
 xchain117_n4_α:
 mov rax, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain117_n6_α
# IR_ASSIGN_VAR
 xchain117_n5_α:
 mov rdi, qword ptr [rbp + 96]
 mov rsi, qword ptr [rbp + 104]
 mov rdx, qword ptr [rbp + 176]
 mov rcx, qword ptr [rbp + 184]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain117_n2_α
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain117_n2_α
# IR_LIT_INTEGER
 xchain117_n6_α:
 mov qword ptr [rbp + 288], 6
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain117_n7_α
.Lx125_0:
 .quad 0
# IR_ASSIGN gva
 xchain117_n7_α:
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain117_n8_α
 xchain117_n8_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn128: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn128]
 lea rsi, [rbp + 352]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain117_n10_α
 jmp xchain117_n9_α
 xchain117_n8_β:
 jmp xchain117_n10_α
# IR_ASSIGN gva
 xchain117_n9_α:
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain117_n10_α
 xchain117_n10_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn131: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn131]
 lea rsi, [rbp + 400]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain117_n12_α
 jmp xchain117_n11_α
 xchain117_n10_β:
 jmp xchain117_n12_α
# IR_ASSIGN gva
 xchain117_n11_α:
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain117_n12_α
 xchain117_n12_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn134: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn134]
 lea rsi, [rbp + 448]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n13_α
 xchain117_n12_β:
 jmp xchain117_n14_α
# IR_ASSIGN gva
 xchain117_n13_α:
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain117_n14_α
# IR_LIT_STRING
 xchain117_n14_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain117_n15_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "dummy"
 xchain117_n15_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+496]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 504], rax
  .section .rodata
  .Lrkfn138: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn138]
 lea rsi, [rbp + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain117_n17_α
 jmp xchain117_n16_α
 xchain117_n15_β:
 jmp xchain117_n17_α
# IR_ASSIGN gva
 xchain117_n16_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879052448], rax
 mov qword ptr [1879052456], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
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
mov rax, [rbp + 584]
lea rsp, [rbp + 608]
mov rbp, [rbp + 600]
jmp rax
proc_init_list_ω:
mov rax, [rbp + 592]
lea rsp, [rbp + 608]
mov rbp, [rbp + 600]
jmp rax
  .globl proc_Init_list_α
proc_Init_list_α:
#=======================================================================================================================
    .global proc_Init_list_α
    .global proc_Init_list_β
    .global proc_Init_list_γ
    .global proc_Init_list_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
proc_Init_list_α_body:
# IR_LIT_STRING
 xchain143_n0_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain143_n1_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "epsilon . *init_list("
# IR_VAR
 xchain143_n1_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain143_n2_α
 xchain143_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call str_concat_d@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain143_n3_α
# IR_LIT_STRING
 xchain143_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain143_n4_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string ")"
 xchain143_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call str_concat_d@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain143_n5_α
 xchain143_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn150: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn150]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_Init_list_γ
 jmp xchain143_n6_α
 xchain143_n5_β:
 jmp proc_Init_list_γ
# IR_ASSIGN gva
 xchain143_n6_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp proc_Init_list_γ
proc_Init_list_res:
add rsp, 8
pop rbp
proc_Init_list_β:
jmp proc_Init_list_ω
proc_Init_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_Init_list_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_push_list_α
proc_push_list_α:
#=======================================================================================================================
    .global proc_push_list_α
    .global proc_push_list_β
    .global proc_push_list_γ
    .global proc_push_list_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 296], rsp
proc_push_list_α_body:
# IR_VAR
 xchain152_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
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
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 168]
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
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
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
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
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
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain152_n4_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain152_n3_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain152_n2_α
 xchain152_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn159: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn159]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain152_n6_α
 jmp xchain152_n5_α
 xchain152_n4_β:
 jmp xchain152_n6_α
# IR_ASSIGN gva
 xchain152_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [1879052496], rax
 mov qword ptr [1879052504], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
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
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_push_list_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_Push_list_α
proc_Push_list_α:
#=======================================================================================================================
    .global proc_Push_list_α
    .global proc_Push_list_β
    .global proc_Push_list_γ
    .global proc_Push_list_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
proc_Push_list_α_body:
# IR_LIT_STRING
 xchain164_n0_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx165_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain164_n1_α
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "epsilon . *push_list("
# IR_VAR
 xchain164_n1_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain164_n2_α
 xchain164_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call str_concat_d@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain164_n3_α
# IR_LIT_STRING
 xchain164_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain164_n4_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string ")"
 xchain164_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call str_concat_d@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain164_n5_α
 xchain164_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn171: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn171]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_Push_list_γ
 jmp xchain164_n6_α
 xchain164_n5_β:
 jmp proc_Push_list_γ
# IR_ASSIGN gva
 xchain164_n6_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp proc_Push_list_γ
proc_Push_list_res:
add rsp, 8
pop rbp
proc_Push_list_β:
jmp proc_Push_list_ω
proc_Push_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_Push_list_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_push_item_α
proc_push_item_α:
#=======================================================================================================================
    .global proc_push_item_α
    .global proc_push_item_β
    .global proc_push_item_γ
    .global proc_push_item_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 296], rsp
proc_push_item_α_body:
# IR_VAR
 xchain173_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
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
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 168]
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
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
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
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
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
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain173_n4_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain173_n3_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain173_n2_α
 xchain173_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn180: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn180]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain173_n6_α
 jmp xchain173_n5_α
 xchain173_n4_β:
 jmp xchain173_n6_α
# IR_ASSIGN gva
 xchain173_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [1879052528], rax
 mov qword ptr [1879052536], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
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
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_push_item_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_Push_item_α
proc_Push_item_α:
#=======================================================================================================================
    .global proc_Push_item_α
    .global proc_Push_item_β
    .global proc_Push_item_γ
    .global proc_Push_item_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
proc_Push_item_α_body:
# IR_LIT_STRING
 xchain185_n0_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain185_n1_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "epsilon . *push_item("
# IR_VAR
 xchain185_n1_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain185_n2_α
 xchain185_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call str_concat_d@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain185_n3_α
# IR_LIT_STRING
 xchain185_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain185_n4_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string ")"
 xchain185_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call str_concat_d@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain185_n5_α
 xchain185_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn192: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn192]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_Push_item_γ
 jmp xchain185_n6_α
 xchain185_n5_β:
 jmp proc_Push_item_γ
# IR_ASSIGN gva
 xchain185_n6_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp proc_Push_item_γ
proc_Push_item_res:
add rsp, 8
pop rbp
proc_Push_item_β:
jmp proc_Push_item_ω
proc_Push_item_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_Push_item_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_pop_list_α
proc_pop_list_α:
#=======================================================================================================================
    .global proc_pop_list_α
    .global proc_pop_list_β
    .global proc_pop_list_γ
    .global proc_pop_list_ω
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
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
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
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain194_n2_α
# IR_LIT_STRING
 xchain194_n2_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain194_n3_α
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "dummy"
 xchain194_n3_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn200: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn200]
 lea rsi, [rbp + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain194_n5_α
 jmp xchain194_n4_α
 xchain194_n3_β:
 jmp xchain194_n5_α
# IR_ASSIGN gva
 xchain194_n4_α:
 mov rax, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
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
mov rax, [rbp + 264]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
proc_pop_list_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
jmp rax
  .globl proc_Pop_list_α
proc_Pop_list_α:
#=======================================================================================================================
    .global proc_Pop_list_α
    .global proc_Pop_list_β
    .global proc_Pop_list_γ
    .global proc_Pop_list_ω
  sub rsp, 240
  mov [rsp + 216], rcx
  mov [rsp + 224], rdx
  mov [rsp + 232], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 208
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 200], rsp
proc_Pop_list_α_body:
# IR_LIT_STRING
 xchain205_n0_α:
 mov qword ptr [rbp + 160], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 168], rax
 jmp xchain205_n1_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "PAT$0"
 xchain205_n1_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn208: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn208]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_Pop_list_γ
 jmp xchain205_n2_α
 xchain205_n1_β:
 jmp proc_Pop_list_γ
# IR_ASSIGN gva
 xchain205_n2_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp proc_Pop_list_γ
proc_Pop_list_res:
add rsp, 8
pop rbp
proc_Pop_list_β:
jmp proc_Pop_list_ω
proc_Pop_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 216]
lea rsp, [rbp + 240]
mov rbp, [rbp + 232]
jmp rax
proc_Pop_list_ω:
mov rax, [rbp + 224]
lea rsp, [rbp + 240]
mov rbp, [rbp + 232]
jmp rax
  .globl proc_pop_final_α
proc_pop_final_α:
#=======================================================================================================================
    .global proc_pop_final_α
    .global proc_pop_final_β
    .global proc_pop_final_γ
    .global proc_pop_final_ω
  sub rsp, 336
  mov [rsp + 312], rcx
  mov [rsp + 320], rdx
  mov [rsp + 328], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 304
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 296], rsp
proc_pop_final_α_body:
# IR_VAR
 xchain210_n0_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
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
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rbp + 168]
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
 mov rsi, qword ptr [rbp + 160]
 mov rdx, qword ptr [rbp + 168]
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
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
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
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain210_n4_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain210_n3_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp xchain210_n2_α
 xchain210_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn217: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn217]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain210_n6_α
 jmp xchain210_n5_α
 xchain210_n4_β:
 jmp xchain210_n6_α
# IR_ASSIGN gva
 xchain210_n5_α:
 mov rax, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 mov qword ptr [1879052592], rax
 mov qword ptr [1879052600], rdx
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
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
mov rax, [rbp + 312]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
proc_pop_final_ω:
mov rax, [rbp + 320]
lea rsp, [rbp + 336]
mov rbp, [rbp + 328]
jmp rax
  .globl proc_Pop_final_α
proc_Pop_final_α:
#=======================================================================================================================
    .global proc_Pop_final_α
    .global proc_Pop_final_β
    .global proc_Pop_final_γ
    .global proc_Pop_final_ω
  sub rsp, 368
  mov [rsp + 344], rcx
  mov [rsp + 352], rdx
  mov [rsp + 360], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 336
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 328], rsp
proc_Pop_final_α_body:
# IR_LIT_STRING
 xchain222_n0_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain222_n1_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "epsilon . *pop_final("
# IR_VAR
 xchain222_n1_α:
 mov rax, qword ptr [1879052480]
 mov rdx, qword ptr [1879052488]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain222_n2_α
 xchain222_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 224]
 mov rsi, qword ptr [rbp + 232]
 mov rdx, qword ptr [rbp + 256]
 mov rcx, qword ptr [rbp + 264]
 call str_concat_d@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain222_n3_α
# IR_LIT_STRING
 xchain222_n3_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain222_n4_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string ")"
 xchain222_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 192]
 mov rsi, qword ptr [rbp + 200]
 mov rdx, qword ptr [rbp + 288]
 mov rcx, qword ptr [rbp + 296]
 call str_concat_d@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 jmp xchain222_n5_α
 xchain222_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+128]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn229: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn229]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_Pop_final_γ
 jmp xchain222_n6_α
 xchain222_n5_β:
 jmp proc_Pop_final_γ
# IR_ASSIGN gva
 xchain222_n6_α:
 mov rax, qword ptr [rbp + 112]
 mov rdx, qword ptr [rbp + 120]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 jmp proc_Pop_final_γ
proc_Pop_final_res:
add rsp, 8
pop rbp
proc_Pop_final_β:
jmp proc_Pop_final_ω
proc_Pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 344]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
proc_Pop_final_ω:
mov rax, [rbp + 352]
lea rsp, [rbp + 368]
mov rbp, [rbp + 360]
jmp rax
  .globl proc_node_repr_α
proc_node_repr_α:
#=======================================================================================================================
    .global proc_node_repr_α
    .global proc_node_repr_β
    .global proc_node_repr_γ
    .global proc_node_repr_ω
  sub rsp, 1936
  mov [rsp + 1912], rcx
  mov [rsp + 1920], rdx
  mov [rsp + 1928], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1904
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1896], rsp
proc_node_repr_α_body:
# IR_VAR
 xchain231_n0_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain231_n1_α
 xchain231_n1_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn234: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn234]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain231_n2_α
 jmp xchain231_n3_α
 xchain231_n1_β:
 jmp xchain231_n2_α
# IR_VAR
 xchain231_n2_α:
 mov rax, qword ptr [1879052848]
 mov rdx, qword ptr [1879052856]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain231_n4_α
# IR_KEYWORD_SNOBOL4_read
 xchain231_n3_α:
 mov rdi, qword ptr [rip + .Lx236_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain231_n6_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "LCASE"
# IR_VAR
 xchain231_n4_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain231_n7_α
# IR_VAR
 xchain231_n5_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain231_n8_α
# IR_KEYWORD_SNOBOL4_read
 xchain231_n6_α:
 mov rdi, qword ptr [rip + .Lx239_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain231_n10_α
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "UCASE"
# IR_SUBSCRIPT x[i] variable
 xchain231_n7_α:
 mov rdi, qword ptr [rbp + 576]
 mov rsi, qword ptr [rbp + 584]
 mov rdx, qword ptr [rbp + 608]
 mov rcx, qword ptr [rbp + 616]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain231_n5_α
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain231_n11_α
# IR_VAR
 xchain231_n8_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain231_n12_α
# IR_LIT_STRING
 xchain231_n9_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain231_n13_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "('"
 xchain231_n10_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+192]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 200], rax
# marshal arg2 = producer-box slot [zr+336] -> [zr+208]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn244: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn244]
 lea rsi, [rbp + 176]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain231_n2_α
 jmp xchain231_n14_α
 xchain231_n10_β:
 jmp xchain231_n2_α
# IR_DEREF variable -> value
 xchain231_n11_α:
 mov rdi, qword ptr [rbp + 640]
 mov rsi, qword ptr [rbp + 648]
 call rt_deref@PLT
 cmp eax, 99
 je xchain231_n5_α
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain231_n15_α
# IR_SUBSCRIPT x[i] variable
 xchain231_n12_α:
 mov rdi, qword ptr [rbp + 704]
 mov rsi, qword ptr [rbp + 712]
 mov rdx, qword ptr [rbp + 736]
 mov rcx, qword ptr [rbp + 744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain231_n9_α
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain231_n16_α
# IR_VAR
 xchain231_n13_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain231_n17_α
# IR_LIT_STRING
 xchain231_n14_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain231_n19_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "STRING"
# IR_ASSIGN gva
 xchain231_n15_α:
 mov rax, qword ptr [rbp + 672]
 mov rdx, qword ptr [rbp + 680]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain231_n5_α
# IR_DEREF variable -> value
 xchain231_n16_α:
 mov rdi, qword ptr [rbp + 768]
 mov rsi, qword ptr [rbp + 776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain231_n9_α
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain231_n20_α
 xchain231_n17_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 896]
 mov rsi, qword ptr [rbp + 904]
 mov rdx, qword ptr [rbp + 928]
 mov rcx, qword ptr [rbp + 936]
 call str_concat_d@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain231_n21_α
# IR_LIT_INTEGER
 xchain231_n18_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain231_n22_α
.Lx252_0:
 .quad 0
 xchain231_n19_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+128]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn254: .string "IDENT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn254]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain231_n2_α
 jmp xchain231_n23_α
 xchain231_n19_β:
 jmp xchain231_n2_α
# IR_ASSIGN gva
 xchain231_n20_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain231_n9_α
# IR_LIT_STRING
 xchain231_n21_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain231_n24_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "'"
# IR_ASSIGN gva
 xchain231_n22_α:
 mov rax, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain231_n25_α
# IR_LIT_STRING
 xchain231_n23_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain231_n26_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "'"
 xchain231_n24_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 864]
 mov rsi, qword ptr [rbp + 872]
 mov rdx, qword ptr [rbp + 960]
 mov rcx, qword ptr [rbp + 968]
 call str_concat_d@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain231_n27_α
# IR_VAR
 xchain231_n25_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain231_n28_α
# IR_VAR
 xchain231_n26_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain231_n30_α
# IR_ASSIGN gva
 xchain231_n27_α:
 mov rax, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain231_n18_α
# IR_VAR
 xchain231_n28_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain231_n31_α
# IR_VAR
 xchain231_n29_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain231_n32_α
 xchain231_n30_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 496]
 mov rcx, qword ptr [rbp + 504]
 call str_concat_d@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain231_n33_α
# IR_COERCE_NUMERIC
 xchain231_n31_α:
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 7
 je .Lx267_1
 cmp eax, 6
 jne .Lx267_0
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 6
 jne .Lx267_0
.Lx267_1:
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
 jmp xchain231_n34_α
.Lx267_0:
 lea rdi, [rbp + 1216]
 lea rsi, [rbp + 1184]
 lea rdx, [rbp + 1152]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain231_n34_α
# IR_LIT_STRING
 xchain231_n32_α:
 mov qword ptr [rbp + 1856], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain231_n35_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string ")"
# IR_LIT_STRING
 xchain231_n33_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain231_n36_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "'"
# IR_COERCE_NUMERIC
 xchain231_n34_α:
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 7
 je .Lx271_1
 cmp eax, 6
 jne .Lx271_0
 mov eax, dword ptr [rbp + 1216]
 cmp eax, 6
 jne .Lx271_0
.Lx271_1:
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
 jmp xchain231_n37_α
.Lx271_0:
 lea rdi, [rbp + 1184]
 lea rsi, [rbp + 1216]
 lea rdx, [rbp + 1120]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain231_n37_α
 xchain231_n35_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1824]
 mov rsi, qword ptr [rbp + 1832]
 mov rdx, qword ptr [rbp + 1856]
 mov rcx, qword ptr [rbp + 1864]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain231_n38_α
 xchain231_n36_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 528]
 mov rcx, qword ptr [rbp + 536]
 call str_concat_d@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain231_n39_α
# IR_CMP_TEST
 xchain231_n37_α:
 lea rdi, [rbp + 1152]
 lea rsi, [rbp + 1120]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain231_n29_α
 mov qword ptr [rbp + 1088], 0
 mov qword ptr [rbp + 1096], 0
 jmp xchain231_n40_α
# IR_ASSIGN gva
 xchain231_n38_α:
 mov rax, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp proc_node_repr_γ
# IR_ASSIGN gva
 xchain231_n39_α:
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp proc_node_repr_γ
# IR_VAR
 xchain231_n40_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain231_n41_α
# IR_LIT_INTEGER
 xchain231_n41_α:
 mov qword ptr [rbp + 1312], 6
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain231_n42_α
.Lx279_0:
 .quad 1
 xchain231_n42_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 100
 je .Lx280_0
 mov eax, dword ptr [rbp + 1280]
 cmp eax, 6
 jne .Lx280_2
.Lx280_1:
 mov rax, qword ptr [rbp + 1288]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 1248], 6
 mov qword ptr [rbp + 1256], rax
 jmp xchain231_n43_α
.Lx280_0:
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, qword ptr [rbp + 1312]
 mov rcx, qword ptr [rbp + 1320]
 mov r8d, 0
 lea r9, [rbp + 1248]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain231_n43_α
.Lx280_2:
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, qword ptr [rbp + 1312]
 mov rcx, qword ptr [rbp + 1320]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain231_n29_α
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain231_n43_α
 xchain231_n42_β:
 jmp xchain231_n29_α
 xchain231_n43_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1088]
 mov rsi, qword ptr [rbp + 1096]
 mov rdx, qword ptr [rbp + 1248]
 mov rcx, qword ptr [rbp + 1256]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain231_n44_α
# IR_ASSIGN gva
 xchain231_n44_α:
 mov rax, qword ptr [rbp + 1056]
 mov rdx, qword ptr [rbp + 1064]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain231_n45_α
# IR_VAR
 xchain231_n45_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain231_n46_α
# IR_LIT_STRING
 xchain231_n46_α:
 mov qword ptr [rbp + 1456], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain231_n48_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string ", "
# IR_VAR
 xchain231_n47_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain231_n49_α
 xchain231_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1424]
 mov rsi, qword ptr [rbp + 1432]
 mov rdx, qword ptr [rbp + 1456]
 mov rcx, qword ptr [rbp + 1464]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain231_n50_α
# IR_ASSIGN gva
 xchain231_n49_α:
 mov rax, qword ptr [rbp + 1744]
 mov rdx, qword ptr [rbp + 1752]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain231_n25_α
# IR_VAR
 xchain231_n50_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain231_n51_α
# IR_VAR
 xchain231_n51_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain231_n52_α
# IR_SUBSCRIPT x[i] variable
 xchain231_n52_α:
 mov rdi, qword ptr [rbp + 1536]
 mov rsi, qword ptr [rbp + 1544]
 mov rdx, qword ptr [rbp + 1568]
 mov rcx, qword ptr [rbp + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain231_n47_α
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain231_n53_α
# IR_DEREF variable -> value
 xchain231_n53_α:
 mov rdi, qword ptr [rbp + 1600]
 mov rsi, qword ptr [rbp + 1608]
 call rt_deref@PLT
 cmp eax, 99
 je xchain231_n47_α
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain231_n54_α
# IR_VAR
 xchain231_n54_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain231_n55_α
# IR_SUBSCRIPT x[i] variable
 xchain231_n55_α:
 mov rdi, qword ptr [rbp + 1632]
 mov rsi, qword ptr [rbp + 1640]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain231_n47_α
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain231_n56_α
# IR_DEREF variable -> value
 xchain231_n56_α:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 call rt_deref@PLT
 cmp eax, 99
 je xchain231_n47_α
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
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
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 1720]
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
 mov rsi, qword ptr [rbp + 1712]
 mov rdx, qword ptr [rbp + 1720]
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
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
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
 mov rdi, qword ptr [rbp + 1392]
 mov rsi, qword ptr [rbp + 1400]
 mov rdx, qword ptr [rbp + 1488]
 mov rcx, qword ptr [rbp + 1496]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain231_n59_α
# IR_ASSIGN gva
 xchain231_n59_α:
 mov rax, qword ptr [rbp + 1360]
 mov rdx, qword ptr [rbp + 1368]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain231_n47_α
proc_node_repr_res:
add rsp, 8
pop rbp
proc_node_repr_β:
jmp proc_node_repr_ω
proc_node_repr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 1912]
lea rsp, [rbp + 1936]
mov rbp, [rbp + 1928]
jmp rax
proc_node_repr_ω:
mov rax, [rbp + 1920]
lea rsp, [rbp + 1936]
mov rbp, [rbp + 1928]
jmp rax
  .globl proc_pp_node_α
proc_pp_node_α:
#=======================================================================================================================
    .global proc_pp_node_α
    .global proc_pp_node_β
    .global proc_pp_node_γ
    .global proc_pp_node_ω
  sub rsp, 3584
  mov [rsp + 3560], rcx
  mov [rsp + 3568], rdx
  mov [rsp + 3576], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3552
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 3544], rsp
proc_pp_node_α_body:
# IR_VAR
 xchain299_n0_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain299_n1_α
 xchain299_n1_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+256]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn302: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn302]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain299_n2_α
 jmp xchain299_n3_α
 xchain299_n1_β:
 jmp xchain299_n2_α
# IR_VAR
 xchain299_n2_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain299_n4_α
# IR_KEYWORD_SNOBOL4_read
 xchain299_n3_α:
 mov rdi, qword ptr [rip + .Lx304_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
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
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 856]
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
 mov rsi, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
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
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
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
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain299_n8_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string " "
# IR_KEYWORD_SNOBOL4_read
 xchain299_n6_α:
 mov rdi, qword ptr [rip + .Lx308_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain299_n9_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "UCASE"
# IR_ASSIGN gva
 xchain299_n7_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [1879052656], rax
 mov qword ptr [1879052664], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain299_n5_α
# IR_VAR
 xchain299_n8_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain299_n10_α
 xchain299_n9_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+320] -> [zr+192]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 200], rax
# marshal arg2 = producer-box slot [zr+336] -> [zr+208]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 216], rax
  .section .rodata
  .Lrkfn312: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn312]
 lea rsi, [rbp + 176]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain299_n2_α
 jmp xchain299_n12_α
 xchain299_n9_β:
 jmp xchain299_n2_α
 xchain299_n10_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn314: .string "DUPL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn314]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain299_n11_α
 jmp xchain299_n13_α
 xchain299_n10_β:
 jmp xchain299_n11_α
# IR_LIT_INTEGER
 xchain299_n11_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain299_n14_α
.Lx315_0:
 .quad 80
# IR_LIT_STRING
 xchain299_n12_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain299_n15_α
.Lx316_0:
 .quad .Lx316_0_s
.Lx316_0_s:
 .string "STRING"
# IR_ASSIGN gva
 xchain299_n13_α:
 mov rax, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain299_n11_α
# IR_VAR
 xchain299_n14_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain299_n16_α
 xchain299_n15_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [rbp + 160]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 168]
 mov qword ptr [rbp + 120], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+128]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn320: .string "IDENT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn320]
 lea rsi, [rbp + 112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je xchain299_n2_α
 jmp xchain299_n18_α
 xchain299_n15_β:
 jmp xchain299_n2_α
# IR_VAR
 xchain299_n16_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain299_n19_α
# IR_VAR
 xchain299_n17_α:
 mov rax, qword ptr [1879052848]
 mov rdx, qword ptr [1879052856]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain299_n20_α
# IR_LIT_STRING
 xchain299_n18_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain299_n22_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string " "
 xchain299_n19_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1200]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1208], rax
  .section .rodata
  .Lrkfn325: .string "SIZE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn325]
 lea rsi, [rbp + 1200]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain299_n17_α
 jmp xchain299_n23_α
 xchain299_n19_β:
 jmp xchain299_n17_α
# IR_VAR
 xchain299_n20_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain299_n24_α
# IR_VAR
 xchain299_n21_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain299_n25_α
# IR_VAR
 xchain299_n22_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain299_n27_α
 xchain299_n23_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 1152]
 cmp eax, 100
 je .Lx329_0
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 100
 je .Lx329_0
 mov eax, dword ptr [rbp + 1152]
 cmp eax, 6
 jne .Lx329_2
 mov eax, dword ptr [rbp + 1184]
 cmp eax, 6
 jne .Lx329_2
.Lx329_1:
 mov rax, qword ptr [rbp + 1160]
 mov rcx, qword ptr [rbp + 1192]
 add rax, rcx
 mov qword ptr [rbp + 1120], 6
 mov qword ptr [rbp + 1128], rax
 jmp xchain299_n28_α
.Lx329_0:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 mov r8d, 0
 lea r9, [rbp + 1120]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain299_n28_α
.Lx329_2:
 mov rdi, qword ptr [rbp + 1152]
 mov rsi, qword ptr [rbp + 1160]
 mov rdx, qword ptr [rbp + 1184]
 mov rcx, qword ptr [rbp + 1192]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain299_n17_α
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain299_n28_α
 xchain299_n23_β:
 jmp xchain299_n17_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n24_α:
 mov rdi, qword ptr [rbp + 1488]
 mov rsi, qword ptr [rbp + 1496]
 mov rdx, qword ptr [rbp + 1520]
 mov rcx, qword ptr [rbp + 1528]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain299_n21_α
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain299_n29_α
# IR_VAR
 xchain299_n25_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain299_n30_α
# IR_VAR
 xchain299_n26_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain299_n31_α
 xchain299_n27_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
  .section .rodata
  .Lrkfn334: .string "DUPL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn334]
 lea rsi, [rbp + 544]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp xchain299_n33_α
 xchain299_n27_β:
 jmp proc_pp_node_γ
# IR_COERCE_NUMERIC
 xchain299_n28_α:
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 7
 je .Lx336_1
 cmp eax, 6
 jne .Lx336_0
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 6
 jne .Lx336_0
.Lx336_1:
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1096], rax
 jmp xchain299_n34_α
.Lx336_0:
 lea rdi, [rbp + 1264]
 lea rsi, [rbp + 1120]
 lea rdx, [rbp + 1088]
 mov rcx, 111
 call rt_coerce_num2_d@PLT
 jmp xchain299_n34_α
# IR_DEREF variable -> value
 xchain299_n29_α:
 mov rdi, qword ptr [rbp + 1552]
 mov rsi, qword ptr [rbp + 1560]
 call rt_deref@PLT
 cmp eax, 99
 je xchain299_n21_α
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain299_n35_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n30_α:
 mov rdi, qword ptr [rbp + 1616]
 mov rsi, qword ptr [rbp + 1624]
 mov rdx, qword ptr [rbp + 1648]
 mov rcx, qword ptr [rbp + 1656]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain299_n26_α
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain299_n36_α
# IR_LIT_STRING
 xchain299_n31_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx339_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain299_n37_α
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "( "
# IR_LIT_INTEGER
 xchain299_n32_α:
 mov qword ptr [rbp + 2048], 6
 mov rax, qword ptr [rip + .Lx340_0]
 mov qword ptr [rbp + 2056], rax
 jmp xchain299_n38_α
.Lx340_0:
 .quad 0
# IR_LIT_STRING
 xchain299_n33_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx341_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain299_n39_α
.Lx341_0:
 .quad .Lx341_0_s
.Lx341_0_s:
 .string "'"
# IR_COERCE_NUMERIC
 xchain299_n34_α:
 mov eax, dword ptr [rbp + 1120]
 cmp eax, 7
 je .Lx343_1
 cmp eax, 6
 jne .Lx343_0
 mov eax, dword ptr [rbp + 1264]
 cmp eax, 6
 jne .Lx343_0
.Lx343_1:
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
 jmp xchain299_n40_α
.Lx343_0:
 lea rdi, [rbp + 1120]
 lea rsi, [rbp + 1264]
 lea rdx, [rbp + 1056]
 mov rcx, 112
 call rt_coerce_num2_d@PLT
 jmp xchain299_n40_α
# IR_ASSIGN gva
 xchain299_n35_α:
 mov rax, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain299_n21_α
# IR_DEREF variable -> value
 xchain299_n36_α:
 mov rdi, qword ptr [rbp + 1680]
 mov rsi, qword ptr [rbp + 1688]
 call rt_deref@PLT
 cmp eax, 99
 je xchain299_n26_α
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain299_n41_α
 xchain299_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain299_n42_α
# IR_ASSIGN gva
 xchain299_n38_α:
 mov rax, qword ptr [rbp + 2048]
 mov rdx, qword ptr [rbp + 2056]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain299_n43_α
 xchain299_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 528]
 mov rsi, qword ptr [rbp + 536]
 mov rdx, qword ptr [rbp + 656]
 mov rcx, qword ptr [rbp + 664]
 call str_concat_d@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain299_n44_α
# IR_CMP_TEST
 xchain299_n40_α:
 lea rdi, [rbp + 1088]
 lea rsi, [rbp + 1056]
 call rt_cmp_d@PLT
 test eax, eax
 jle xchain299_n17_α
 mov qword ptr [rbp + 1024], 0
 mov qword ptr [rbp + 1032], 0
 jmp xchain299_n45_α
# IR_ASSIGN gva
 xchain299_n41_α:
 mov rax, qword ptr [rbp + 1712]
 mov rdx, qword ptr [rbp + 1720]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain299_n26_α
# IR_LIT_STRING
 xchain299_n42_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 1944], rax
 jmp xchain299_n46_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "'"
# IR_VAR
 xchain299_n43_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain299_n47_α
# IR_VAR
 xchain299_n44_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain299_n48_α
# IR_VAR
 xchain299_n45_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain299_n49_α
 xchain299_n46_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1840]
 mov rsi, qword ptr [rbp + 1848]
 mov rdx, qword ptr [rbp + 1936]
 mov rcx, qword ptr [rbp + 1944]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain299_n50_α
# IR_VAR
 xchain299_n47_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain299_n51_α
 xchain299_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 496]
 mov rsi, qword ptr [rbp + 504]
 mov rdx, qword ptr [rbp + 688]
 mov rcx, qword ptr [rbp + 696]
 call str_concat_d@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain299_n52_α
# IR_VAR
 xchain299_n49_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain299_n53_α
# IR_VAR
 xchain299_n50_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain299_n54_α
# IR_COERCE_NUMERIC
 xchain299_n51_α:
 mov eax, dword ptr [rbp + 2256]
 cmp eax, 7
 je .Lx362_1
 cmp eax, 6
 jne .Lx362_0
 mov eax, dword ptr [rbp + 2224]
 cmp eax, 6
 jne .Lx362_0
.Lx362_1:
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2200], rax
 jmp xchain299_n55_α
.Lx362_0:
 lea rdi, [rbp + 2256]
 lea rsi, [rbp + 2224]
 lea rdx, [rbp + 2192]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain299_n55_α
# IR_LIT_STRING
 xchain299_n52_α:
 mov qword ptr [rbp + 720], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain299_n56_α
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "'"
 xchain299_n53_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1376]
 mov rsi, qword ptr [rbp + 1384]
 mov rdx, qword ptr [rbp + 1408]
 mov rcx, qword ptr [rbp + 1416]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain299_n57_α
 xchain299_n54_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1808]
 mov rsi, qword ptr [rbp + 1816]
 mov rdx, qword ptr [rbp + 1968]
 mov rcx, qword ptr [rbp + 1976]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain299_n58_α
# IR_COERCE_NUMERIC
 xchain299_n55_α:
 mov eax, dword ptr [rbp + 2224]
 cmp eax, 7
 je .Lx367_1
 cmp eax, 6
 jne .Lx367_0
 mov eax, dword ptr [rbp + 2256]
 cmp eax, 6
 jne .Lx367_0
.Lx367_1:
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2168], rax
 jmp xchain299_n59_α
.Lx367_0:
 lea rdi, [rbp + 2224]
 lea rsi, [rbp + 2256]
 lea rdx, [rbp + 2160]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain299_n59_α
 xchain299_n56_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 464]
 mov rsi, qword ptr [rbp + 472]
 mov rdx, qword ptr [rbp + 720]
 mov rcx, qword ptr [rbp + 728]
 call str_concat_d@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain299_n60_α
# IR_VAR
 xchain299_n57_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain299_n61_α
# IR_LIT_STRING
 xchain299_n58_α:
 mov qword ptr [rbp + 2000], 1
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain299_n62_α
.Lx370_0:
 .quad .Lx370_0_s
.Lx370_0_s:
 .string "',"
# IR_CMP_TEST
 xchain299_n59_α:
 lea rdi, [rbp + 2192]
 lea rsi, [rbp + 2160]
 call rt_cmp_d@PLT
 test eax, eax
 jns proc_pp_node_γ
 mov qword ptr [rbp + 2128], 0
 mov qword ptr [rbp + 2136], 0
 jmp xchain299_n63_α
# IR_VAR
 xchain299_n60_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain299_n64_α
 xchain299_n61_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1344]
 mov rsi, qword ptr [rbp + 1352]
 mov rdx, qword ptr [rbp + 1440]
 mov rcx, qword ptr [rbp + 1448]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain299_n65_α
 xchain299_n62_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 1776]
 mov rsi, qword ptr [rbp + 1784]
 mov rdx, qword ptr [rbp + 2000]
 mov rcx, qword ptr [rbp + 2008]
 call str_concat_d@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain299_n66_α
# IR_VAR
 xchain299_n63_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 jmp xchain299_n67_α
 xchain299_n64_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 432]
 mov rsi, qword ptr [rbp + 440]
 mov rdx, qword ptr [rbp + 752]
 mov rcx, qword ptr [rbp + 760]
 call str_concat_d@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain299_n68_α
# IR_ASSIGN global
 xchain299_n65_α:
 mov rsi, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 mov rdi, qword ptr [rip + .Lx378_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp proc_pp_node_γ
.Lx378_0:
 .quad .Lx378_0_s
.Lx378_0_s:
 .string "OUTPUT"
# IR_ASSIGN global
 xchain299_n66_α:
 mov rsi, qword ptr [rbp + 1744]
 mov rdx, qword ptr [rbp + 1752]
 mov rdi, qword ptr [rip + .Lx379_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain299_n32_α
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "OUTPUT"
# IR_LIT_INTEGER
 xchain299_n67_α:
 mov qword ptr [rbp + 2352], 6
 mov rax, qword ptr [rip + .Lx380_0]
 mov qword ptr [rbp + 2360], rax
 jmp xchain299_n69_α
.Lx380_0:
 .quad 1
# IR_ASSIGN global
 xchain299_n68_α:
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 mov rdi, qword ptr [rip + .Lx381_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp proc_pp_node_γ
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "OUTPUT"
 xchain299_n69_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2320]
 cmp eax, 100
 je .Lx382_0
 mov eax, dword ptr [rbp + 2320]
 cmp eax, 6
 jne .Lx382_2
.Lx382_1:
 mov rax, qword ptr [rbp + 2328]
 mov rcx, 1
 add rax, rcx
 mov qword ptr [rbp + 2288], 6
 mov qword ptr [rbp + 2296], rax
 jmp xchain299_n70_α
.Lx382_0:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 mov rdx, qword ptr [rbp + 2352]
 mov rcx, qword ptr [rbp + 2360]
 mov r8d, 0
 lea r9, [rbp + 2288]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain299_n70_α
.Lx382_2:
 mov rdi, qword ptr [rbp + 2320]
 mov rsi, qword ptr [rbp + 2328]
 mov rdx, qword ptr [rbp + 2352]
 mov rcx, qword ptr [rbp + 2360]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain299_n70_α
 xchain299_n69_β:
 jmp proc_pp_node_γ
 xchain299_n70_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2128]
 mov rsi, qword ptr [rbp + 2136]
 mov rdx, qword ptr [rbp + 2288]
 mov rcx, qword ptr [rbp + 2296]
 call str_concat_d@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain299_n71_α
# IR_ASSIGN gva
 xchain299_n71_α:
 mov rax, qword ptr [rbp + 2096]
 mov rdx, qword ptr [rbp + 2104]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain299_n72_α
# IR_VAR
 xchain299_n72_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain299_n73_α
# IR_VAR
 xchain299_n73_α:
 mov rax, qword ptr [1879052400]
 mov rdx, qword ptr [1879052408]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain299_n75_α
# IR_VAR
 xchain299_n74_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 jmp xchain299_n76_α
# IR_COERCE_NUMERIC
 xchain299_n75_α:
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 7
 je .Lx389_1
 cmp eax, 6
 jne .Lx389_0
 mov eax, dword ptr [rbp + 2528]
 cmp eax, 6
 jne .Lx389_0
.Lx389_1:
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2504], rax
 jmp xchain299_n77_α
.Lx389_0:
 lea rdi, [rbp + 2560]
 lea rsi, [rbp + 2528]
 lea rdx, [rbp + 2496]
 mov rcx, 147
 call rt_coerce_num2_d@PLT
 jmp xchain299_n77_α
# IR_VAR
 xchain299_n76_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 jmp xchain299_n78_α
# IR_COERCE_NUMERIC
 xchain299_n77_α:
 mov eax, dword ptr [rbp + 2528]
 cmp eax, 7
 je .Lx392_1
 cmp eax, 6
 jne .Lx392_0
 mov eax, dword ptr [rbp + 2560]
 cmp eax, 6
 jne .Lx392_0
.Lx392_1:
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2472], rax
 jmp xchain299_n79_α
.Lx392_0:
 lea rdi, [rbp + 2528]
 lea rsi, [rbp + 2560]
 lea rdx, [rbp + 2464]
 mov rcx, 148
 call rt_coerce_num2_d@PLT
 jmp xchain299_n79_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n78_α:
 mov rdi, qword ptr [rbp + 3152]
 mov rsi, qword ptr [rbp + 3160]
 mov rdx, qword ptr [rbp + 3184]
 mov rcx, qword ptr [rbp + 3192]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 jmp xchain299_n80_α
# IR_CMP_TEST
 xchain299_n79_α:
 lea rdi, [rbp + 2496]
 lea rsi, [rbp + 2464]
 call rt_cmp_d@PLT
 test eax, eax
 jns xchain299_n74_α
 mov qword ptr [rbp + 2432], 0
 mov qword ptr [rbp + 2440], 0
 jmp xchain299_n81_α
# IR_DEREF variable -> value
 xchain299_n80_α:
 mov rdi, qword ptr [rbp + 3216]
 mov rsi, qword ptr [rbp + 3224]
 call rt_deref@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 jmp xchain299_n82_α
# IR_VAR
 xchain299_n81_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain299_n83_α
# IR_VAR
 xchain299_n82_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain299_n84_α
 xchain299_n83_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2432]
 mov rsi, qword ptr [rbp + 2440]
 mov rdx, qword ptr [rbp + 2592]
 mov rcx, qword ptr [rbp + 2600]
 call str_concat_d@PLT
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain299_n85_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n84_α:
 mov rdi, qword ptr [rbp + 3248]
 mov rsi, qword ptr [rbp + 3256]
 mov rdx, qword ptr [rbp + 3264]
 mov rcx, qword ptr [rbp + 3272]
 call rt_subscript_var@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 jmp xchain299_n86_α
# IR_ASSIGN gva
 xchain299_n85_α:
 mov rax, qword ptr [rbp + 2400]
 mov rdx, qword ptr [rbp + 2408]
 mov qword ptr [1879052784], rax
 mov qword ptr [1879052792], rdx
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain299_n87_α
# IR_DEREF variable -> value
 xchain299_n86_α:
 mov rdi, qword ptr [rbp + 3296]
 mov rsi, qword ptr [rbp + 3304]
 call rt_deref@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 jmp xchain299_n88_α
# IR_VAR
 xchain299_n87_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain299_n89_α
# IR_VAR
 xchain299_n88_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain299_n91_α
# IR_VAR
 xchain299_n89_α:
 mov rax, qword ptr [1879052640]
 mov rdx, qword ptr [1879052648]
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain299_n92_α
# IR_VAR
 xchain299_n90_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain299_n93_α
# IR_LIT_INTEGER
 xchain299_n91_α:
 mov qword ptr [rbp + 3408], 6
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 3416], rax
 jmp xchain299_n94_α
.Lx407_0:
 .quad 2
# IR_SUBSCRIPT x[i] variable
 xchain299_n92_α:
 mov rdi, qword ptr [rbp + 2704]
 mov rsi, qword ptr [rbp + 2712]
 mov rdx, qword ptr [rbp + 2736]
 mov rcx, qword ptr [rbp + 2744]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain299_n95_α
# IR_ASSIGN gva
 xchain299_n93_α:
 mov rax, qword ptr [rbp + 3040]
 mov rdx, qword ptr [rbp + 3048]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain299_n43_α
 xchain299_n94_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 100
 je .Lx410_0
 mov eax, dword ptr [rbp + 3376]
 cmp eax, 6
 jne .Lx410_2
.Lx410_1:
 mov rax, qword ptr [rbp + 3384]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 3344], 6
 mov qword ptr [rbp + 3352], rax
 jmp xchain299_n96_α
.Lx410_0:
 mov rdi, qword ptr [rbp + 3376]
 mov rsi, qword ptr [rbp + 3384]
 mov rdx, qword ptr [rbp + 3408]
 mov rcx, qword ptr [rbp + 3416]
 mov r8d, 0
 lea r9, [rbp + 3344]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain299_n96_α
.Lx410_2:
 mov rdi, qword ptr [rbp + 3376]
 mov rsi, qword ptr [rbp + 3384]
 mov rdx, qword ptr [rbp + 3408]
 mov rcx, qword ptr [rbp + 3416]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 jmp xchain299_n96_α
 xchain299_n94_β:
 jmp proc_pp_node_γ
# IR_DEREF variable -> value
 xchain299_n95_α:
 mov rdi, qword ptr [rbp + 2768]
 mov rsi, qword ptr [rbp + 2776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain299_n97_α
# IR_LIT_STRING
 xchain299_n96_α:
 mov qword ptr [rbp + 3472], 1
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 3480], rax
 jmp xchain299_n98_α
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string ")"
# IR_VAR
 xchain299_n97_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain299_n99_α
# IR_VAR
 xchain299_n98_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain299_n100_α
# IR_SUBSCRIPT x[i] variable
 xchain299_n99_α:
 mov rdi, qword ptr [rbp + 2800]
 mov rsi, qword ptr [rbp + 2808]
 mov rdx, qword ptr [rbp + 2816]
 mov rcx, qword ptr [rbp + 2824]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 jmp xchain299_n101_α
 xchain299_n100_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3472]
 mov rsi, qword ptr [rbp + 3480]
 mov rdx, qword ptr [rbp + 3504]
 mov rcx, qword ptr [rbp + 3512]
 call str_concat_d@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 jmp xchain299_n102_α
# IR_DEREF variable -> value
 xchain299_n101_α:
 mov rdi, qword ptr [rbp + 2848]
 mov rsi, qword ptr [rbp + 2856]
 call rt_deref@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
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
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rbp + 3344]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 3352]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 3448]
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
 mov rsi, qword ptr [rbp + 3328]
 mov rdx, qword ptr [rbp + 3336]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3344]
 mov rdx, qword ptr [rbp + 3352]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3440]
 mov rdx, qword ptr [rbp + 3448]
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
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
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
 mov qword ptr [rbp + 2928], rax
 mov qword ptr [rbp + 2936], rdx
 jmp xchain299_n104_α
# IR_LIT_INTEGER
 xchain299_n104_α:
 mov qword ptr [rbp + 2960], 6
 mov rax, qword ptr [rip + .Lx421_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain299_n105_α
.Lx421_0:
 .quad 2
 xchain299_n105_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 100
 je .Lx422_0
 mov eax, dword ptr [rbp + 2928]
 cmp eax, 6
 jne .Lx422_2
.Lx422_1:
 mov rax, qword ptr [rbp + 2936]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 2896], 6
 mov qword ptr [rbp + 2904], rax
 jmp xchain299_n106_α
.Lx422_0:
 mov rdi, qword ptr [rbp + 2928]
 mov rsi, qword ptr [rbp + 2936]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 mov r8d, 0
 lea r9, [rbp + 2896]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain299_n106_α
.Lx422_2:
 mov rdi, qword ptr [rbp + 2928]
 mov rsi, qword ptr [rbp + 2936]
 mov rdx, qword ptr [rbp + 2960]
 mov rcx, qword ptr [rbp + 2968]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain299_n90_α
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain299_n106_α
 xchain299_n105_β:
 jmp xchain299_n90_α
# IR_LIT_STRING
 xchain299_n106_α:
 mov qword ptr [rbp + 2992], 1
 mov rax, qword ptr [rip + .Lx423_0]
 mov qword ptr [rbp + 3000], rax
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
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 3000]
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
 mov rsi, qword ptr [rbp + 2880]
 mov rdx, qword ptr [rbp + 2888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2896]
 mov rdx, qword ptr [rbp + 2904]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2992]
 mov rdx, qword ptr [rbp + 3000]
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
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
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
mov rax, [rbp + 3560]
lea rsp, [rbp + 3584]
mov rbp, [rbp + 3576]
jmp rax
proc_pp_node_ω:
mov rax, [rbp + 3568]
lea rsp, [rbp + 3584]
mov rbp, [rbp + 3576]
jmp rax
  .globl proc_pp_bank_α
proc_pp_bank_α:
#=======================================================================================================================
    .global proc_pp_bank_α
    .global proc_pp_bank_β
    .global proc_pp_bank_γ
    .global proc_pp_bank_ω
  sub rsp, 416
  mov [rsp + 392], rcx
  mov [rsp + 400], rdx
  mov [rsp + 408], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 384
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 376], rsp
proc_pp_bank_α_body:
# IR_VAR
 xchain426_n0_α:
 mov rax, qword ptr [1879052928]
 mov rdx, qword ptr [1879052936]
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain426_n1_α
# IR_LIT_INTEGER
 xchain426_n1_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx428_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain426_n3_α
.Lx428_0:
 .quad 0
# IR_LIT_STRING
 xchain426_n2_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain426_n4_α
.Lx429_0:
 .quad .Lx429_0_s
.Lx429_0_s:
 .string "dummy"
# IR_LIT_STRING
 xchain426_n3_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain426_n5_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string ""
 xchain426_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn432: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn432]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
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
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 248]
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
 mov rsi, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 208]
 mov rdx, qword ptr [rbp + 216]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
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
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
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
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp proc_pp_bank_γ
proc_pp_bank_res:
add rsp, 8
pop rbp
proc_pp_bank_β:
jmp proc_pp_bank_ω
proc_pp_bank_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 392]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
jmp rax
proc_pp_bank_ω:
mov rax, [rbp + 400]
lea rsp, [rbp + 416]
mov rbp, [rbp + 408]
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
 mov rax, qword ptr [1879053072]
 mov rdx, qword ptr [1879053080]
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
 mov r8, qword ptr [rbp + 56]
 mov r9d, dword ptr [rbp + 52]
.Lx447_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx447_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov edx, 0
.Lx447_2:
 cmp edx, r9d
 jge .Lx447_1
 movzx edi, byte ptr [r8 + rdx]
 cmp esi, edi
 je .Lx447_3
 add edx, 1
 jmp .Lx447_2
.Lx447_3:
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
 mov rax, qword ptr [1879053104]
 mov rdx, qword ptr [1879053112]
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
 mov rax, qword ptr [1879053088]
 mov rdx, qword ptr [1879053096]
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
 mov r8, qword ptr [rbp + 104]
 mov r9d, dword ptr [rbp + 100]
 mov edx, 0
.Lx457_5:
 cmp edx, r9d
 jge .Lx457_6
 movzx edi, byte ptr [r8 + rdx]
 cmp esi, edi
 je xchain448_n4_af
 add edx, 1
 jmp .Lx457_5
.Lx457_6:
 add r14d, 1
 jmp xchain448_n6_α
 xchain448_n5_β:
 sub r14d, 1
 jmp xchain448_n4_af
# IR_MATCH_BREAK
 xchain448_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov r8, qword ptr [rbp + 168]
 mov r9d, dword ptr [rbp + 164]
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
 mov edx, 0
.Lx459_2:
 cmp edx, r9d
 jge .Lx459_3
 movzx edi, byte ptr [r8 + rdx]
 cmp esi, edi
 je .Lx459_1
 add edx, 1
 jmp .Lx459_2
.Lx459_3:
 add dword ptr [rsp + 0], 1
 jmp .Lx459_0
.Lx459_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov dword ptr [rsp + 0], r14d
 mov r14d, eax
 jmp xchain448_n4_as
 xchain448_n6_β:
 mov r14d, dword ptr [rsp + 0]
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
  sub rsp, 784
  mov [rsp + 760], rcx
  mov [rsp + 768], rdx
  mov [rsp + 776], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 752
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 744], rsp
mov qword ptr [rbp + 752], r8
mov dword ptr [rbp + 744], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + xchain460_n0_β]
mov qword ptr [rbp + 720], rax
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
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx469_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain460_n11_α
 xchain460_n4_β:
 jmp xchain460_n0_af
.Lx469_0:
 .quad .Lx469_0_s
.Lx469_0_s:
 .string "tag"
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain460_n5_α:
 lea rdi, [rbp + 176]
 call rt_match_value_get_pat_fn@PLT
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
 lea rdi, [rbp + 176]
 call rt_match_value_open@PLT
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
 mov dword ptr [rbp + 272], r14d
 mov dword ptr [rbp + 276], r14d
 mov dword ptr [rbp + 280], 0
 mov qword ptr [rbp + 296], rsp
 mov qword ptr [rbp + 288], 0
 jmp xchain460_n0_as
 xchain460_n6_β:
 mov r14d, dword ptr [rbp + 276]
 mov rax, qword ptr [rbp + 288]
 sub rsp, 368
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
 mov qword ptr [rbp + 288], rsp
 mov rbp, rsp
 add rbp, -280
 jmp xchain460_n12_α
xchain460_n6_as:
 mov eax, dword ptr [rbp + 288]
 cmp r14d, eax
 je xchain460_n12_β
 mov rbp, qword ptr [rbp + 280]
 mov eax, dword ptr [rbp + 280]
 add eax, 1
 mov dword ptr [rbp + 280], eax
 mov dword ptr [rbp + 276], r14d
 jmp xchain460_n0_as
xchain460_n6_af:
 mov rax, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 280]
 lea rsp, [rbp + 648]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 280]
 test ecx, ecx
 jz .Lx472_2
 sub ecx, 1
 mov dword ptr [rbp + 280], ecx
 mov qword ptr [rbp + 288], rax
 lea rbp, [rax + -280]
 jmp xchain460_n12_β
.Lx472_2:
 mov r14d, dword ptr [rbp + 272]
 mov rsp, qword ptr [rbp + 296]
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
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain460_n0_af
 jmp xchain460_n8_α
 xchain460_n7_β:
 jmp xchain460_n0_af
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "Pop_list"
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain460_n8_α:
 lea rdi, [rbp + 688]
 call rt_match_value_get_pat_fn@PLT
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
 lea rdi, [rbp + 688]
 call rt_match_value_open@PLT
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
 mov rax, qword ptr [rdx + 0]
 test rax, rax
 jne .Lx478_10
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
 lea rdi, [rip + .S3]
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
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 232]
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
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
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
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain460_n0_af
 jmp xchain460_n5_α
 xchain460_n11_β:
 jmp xchain460_n0_af
.Lx480_0:
 .quad .Lx480_0_s
.Lx480_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain460_n12_α:
 mov dword ptr [rbp + 320], r14d
 jmp xchain460_n14_α
xchain460_n12_as:
 jmp xchain460_n6_as
 xchain460_n12_β:
 jmp xchain460_n15_β
xchain460_n12_af:
 jmp xchain460_n6_af
# IR_LIT_STRING
 xchain460_n13_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain460_n16_α
 xchain460_n13_β:
 jmp xchain460_n18_af
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "wrd"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n14_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx484_9
 mov rax, qword ptr [rdx + 0]
 test rax, rax
 jne .Lx484_10
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx484_10
.Lx484_9:
 xor eax, eax
.Lx484_10:
 test rax, rax
 jz .Lx484_0
 mov r8d, 0
 lea rcx, [rip + .Lx484_4]
 lea rdx, [rip + .Lx484_5]
 jmp rax
.Lx484_4:
 jmp xchain460_n15_α
.Lx484_5:
 jmp xchain460_n12_af
.Lx484_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx484_2:
 test rax, rax
 je .Lx484_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx484_7]
 lea rdx, [rip + .Lx484_8]
 jmp rax
.Lx484_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx484_2
.Lx484_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx484_2
.Lx484_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx484_6]
 sub rsp, 8
 push rax
 jmp xchain460_n15_α
.Lx484_6:
 add rsp, 16
 jmp xchain460_n12_af
 xchain460_n14_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain460_n15_α:
 mov dword ptr [rbp + 384], r14d
 mov dword ptr [rbp + 388], 0
 jmp xchain460_n17_α
xchain460_n15_as:
 jmp xchain460_n12_as
 xchain460_n15_β:
 mov eax, dword ptr [rbp + 388]
 cmp eax, 0
 je xchain460_n17_β
 jmp xchain460_n18_β
xchain460_n15_af:
 add dword ptr [rbp + 388], 1
 mov r14d, dword ptr [rbp + 384]
 mov eax, dword ptr [rbp + 388]
 cmp eax, 1
 je xchain460_n18_α
 jmp xchain460_n14_β
 xchain460_n16_α:
 sub rsp, 32
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052544]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052552]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx488_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx488_5
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [1879052488], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx488_6]
 lea rdx, [rip + .Lx488_7]
 jmp rax
.Lx488_6:
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
 jmp .Lx488_2
.Lx488_7:
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
 jmp .Lx488_2
.Lx488_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx488_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx488_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx488_3]
 lea rdx, [rip + .Lx488_4]
 jmp rax
.Lx488_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx488_2
.Lx488_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx488_2
.Lx488_1:
 call rt_faildescr@PLT
.Lx488_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain460_n18_af
 jmp xchain460_n19_α
 xchain460_n16_β:
 jmp xchain460_n18_af
.Lx488_0:
 .quad .Lx488_0_s
.Lx488_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n17_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx489_9
 mov rax, qword ptr [rdx + 0]
 test rax, rax
 jne .Lx489_10
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx489_10
.Lx489_9:
 xor eax, eax
.Lx489_10:
 test rax, rax
 jz .Lx489_0
 mov r8d, 0
 lea rcx, [rip + .Lx489_4]
 lea rdx, [rip + .Lx489_5]
 jmp rax
.Lx489_4:
 jmp xchain460_n15_as
.Lx489_5:
 jmp xchain460_n15_af
.Lx489_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx489_2:
 test rax, rax
 je .Lx489_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx489_7]
 lea rdx, [rip + .Lx489_8]
 jmp rax
.Lx489_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx489_2
.Lx489_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx489_2
.Lx489_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n15_af
 mov r14d, eax
 lea rax, [rip + .Lx489_6]
 sub rsp, 8
 push rax
 jmp xchain460_n15_as
.Lx489_6:
 add rsp, 16
 jmp xchain460_n15_af
 xchain460_n17_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain460_n18_α:
 mov dword ptr [rbp + 448], r14d
 mov dword ptr [rbp + 452], 0
 jmp xchain460_n20_α
xchain460_n18_as:
 mov eax, dword ptr [rbp + 452]
 add eax, 1
 mov dword ptr [rbp + 452], eax
 cmp eax, 1
 je xchain460_n13_α
 jmp xchain460_n15_as
 xchain460_n18_β:
 mov dword ptr [rbp + 452], 2
xchain460_n18_af:
 mov eax, dword ptr [rbp + 452]
 sub eax, 1
 mov dword ptr [rbp + 452], eax
 cmp eax, 0
 je xchain460_n21_β
 cmp eax, 1
 je xchain460_n19_β
 jmp xchain460_n15_af
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain460_n19_α:
 lea rdi, [rbp + 576]
 call rt_match_value_get_pat_fn@PLT
 test rax, rax
 jz .Lx492_0
 mov r8d, 0
 lea rcx, [rip + .Lx492_4]
 lea rdx, [rip + .Lx492_5]
 jmp rax
.Lx492_4:
 jmp xchain460_n18_as
.Lx492_5:
 jmp xchain460_n18_af
.Lx492_0:
 lea rdi, [rbp + 576]
 call rt_match_value_open@PLT
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n18_af
 mov r14d, eax
 lea rax, [rip + .Lx492_6]
 sub rsp, 8
 push rax
 jmp xchain460_n18_as
.Lx492_6:
 add rsp, 16
 jmp xchain460_n18_af
 xchain460_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_SAVE push
 xchain460_n20_α:
 lea rdi, [rbp + 496]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain460_n22_α
 xchain460_n20_β:
 lea rdi, [rbp + 496]
 call rt_cap_pop@PLT
 jmp xchain460_n18_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain460_n21_α:
 lea rdi, [rbp + 496]
 call rt_cap_top@PLT
 lea rcx, [rip + .S6]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain460_n18_as
 xchain460_n21_β:
 sub r12, 24
 jmp xchain460_n22_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain460_n22_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
 cmp eax, 3
 jne .Lx497_9
 mov rax, qword ptr [rdx + 0]
 test rax, rax
 jne .Lx497_10
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx497_10
.Lx497_9:
 xor eax, eax
.Lx497_10:
 test rax, rax
 jz .Lx497_0
 mov r8d, 0
 lea rcx, [rip + .Lx497_4]
 lea rdx, [rip + .Lx497_5]
 jmp rax
.Lx497_4:
 jmp xchain460_n21_α
.Lx497_5:
 jmp xchain460_n20_β
.Lx497_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx497_2:
 test rax, rax
 je .Lx497_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx497_7]
 lea rdx, [rip + .Lx497_8]
 jmp rax
.Lx497_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx497_2
.Lx497_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx497_2
.Lx497_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain460_n20_β
 mov r14d, eax
 lea rax, [rip + .Lx497_6]
 sub rsp, 8
 push rax
 jmp xchain460_n21_α
.Lx497_6:
 add rsp, 16
 jmp xchain460_n20_β
 xchain460_n22_β:
 jmp qword ptr [rsp]
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 752], 1
jne 7f
mov ecx, dword ptr [rbp + 744]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
cmp qword ptr [rbp + 752], 1
jne 8f
mov eax, dword ptr [rbp + 744]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 744], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 720]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 760]
mov rbp, [rbp + 776]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 768]
lea rsp, [rbp + 784]
mov rbp, [rbp + 776]
jmp rax
  .globl proc_PAT$4_α
proc_PAT$4_α:
#=======================================================================================================================
    .global proc_PAT$4_α
    .global proc_PAT$4_β
    .global proc_PAT$4_γ
    .global proc_PAT$4_ω
  sub rsp, 208
  mov [rsp + 184], rcx
  mov [rsp + 192], rdx
  mov [rsp + 200], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 176
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 168], rsp
mov qword ptr [rbp + 176], r8
mov dword ptr [rbp + 168], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
lea rax, [rip + xchain498_n2_β]
mov qword ptr [rbp + 144], rax
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain498_n0_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain498_n1_α
 xchain498_n0_β:
 add rsp, 16
 jmp proc_PAT$4_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain498_n1_α:
 jmp xchain498_n3_α
xchain498_n1_as:
 jmp xchain498_n2_α
 xchain498_n1_β:
 jmp xchain498_n5_β
xchain498_n1_af:
 jmp xchain498_n0_β
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain498_n2_α:
 mov eax, dword ptr [rsp + 16]
 lea rcx, [rip + .S7]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp proc_PAT$4_scanhit
 xchain498_n2_β:
 sub r12, 24
 jmp xchain498_n1_β
# IR_MATCH_LIT
 xchain498_n3_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain498_n1_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain498_n1_af
 add r14d, 1
 jmp xchain498_n4_α
 xchain498_n3_β:
 sub r14d, 1
 jmp xchain498_n1_af
# IR_MATCH_BAL
 xchain498_n4_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
 mov eax, r14d
 mov dword ptr [rsp + 4], eax
 mov dword ptr [rsp + 8], 0
 xchain498_n4_β:
.Lx508_0:
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx508_3
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 add dword ptr [rsp + 0], 1
 mov edx, dword ptr [rsp + 8]
 cmp esi, 40
 jne .Lx508_1
 add edx, 1
 jmp .Lx508_2
.Lx508_1:
 cmp esi, 41
 jne .Lx508_2
 sub edx, 1
 cmp edx, 0
 jl .Lx508_3
.Lx508_2:
 mov dword ptr [rsp + 8], edx
 test edx, edx
 jne .Lx508_0
 mov eax, dword ptr [rsp + 4]
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain498_n5_α
.Lx508_3:
 mov eax, dword ptr [rsp + 4]
 mov r14d, eax
 add rsp, 16
 jmp xchain498_n3_β
# IR_MATCH_LIT
 xchain498_n5_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain498_n4_β
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain498_n4_β
 add r14d, 1
 jmp xchain498_n1_as
 xchain498_n5_β:
 sub r14d, 1
 jmp xchain498_n4_β
proc_PAT$4_scanhit:
cmp qword ptr [rbp + 176], 1
jne 7f
mov ecx, dword ptr [rbp + 168]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$4_γ
proc_PAT$4_scanfail:
cmp qword ptr [rbp + 176], 1
jne 8f
mov eax, dword ptr [rbp + 168]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 168], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$4_attempt
8:
jmp proc_PAT$4_ω
proc_PAT$4_res:
add rsp, 8
pop rbp
proc_PAT$4_β:
jmp qword ptr [rbp + 144]
proc_PAT$4_γ:
push rbp
lea rax, [rip + proc_PAT$4_res]
push rax
mov rax, [rbp + 184]
mov rbp, [rbp + 200]
jmp rax
proc_PAT$4_ω:
mov rax, [rbp + 192]
lea rsp, [rbp + 208]
mov rbp, [rbp + 200]
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
  mov esi, 896
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
  mov esi, 896
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
  mov esi, 1120
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
  mov esi, 528
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
  mov esi, 576
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
  mov esi, 336
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
  mov esi, 304
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
  mov esi, 336
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
  mov esi, 304
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
  mov esi, 336
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
  mov esi, 256
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
  mov esi, 208
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
  mov esi, 304
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
  mov esi, 336
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
  mov esi, 1904
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
  mov esi, 3552
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
  mov esi, 384
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
  mov esi, 752
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
  mov esi, 176
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
  .Lgvan44: .string "wrd"
  .Lgvan45: .string "spat"
  .Lgvan46: .string "item"
  .Lgvan47: .string "line"
  .Lgvan48: .string "src"
  .Lgvan49: .string "PAT$1$A0"
  .Lgvan50: .string "PAT$2$A0"
  .Lgvan51: .string "PAT$2$A1"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 52
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 52
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
 xchain511_n0_α:
 mov rdi, qword ptr [rip + .Lx512_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain511_n1_α
 xchain511_n0_β:
 jmp xchain511_n8_α
.Lx512_0:
 .quad .Lx512_0_s
.Lx512_0_s:
 .string "ALPHABET"
# IR_MATCH_HEAD
 xchain511_n1_α:
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
.Lx514_0:
 mov r14d, dword ptr [rsp + 0]
 jmp xchain511_n2_α
 xchain511_n1_β:
 add dword ptr [rsp + 0], 1
 mov eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jg .Lx514_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx514_1
 jmp .Lx514_0
.Lx514_1:
 mov rax, qword ptr [rsp + 8]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 16]
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain511_n8_α
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain511_n2_α:
 jmp xchain511_n4_α
xchain511_n2_as:
 jmp xchain511_n3_α
 xchain511_n2_β:
 jmp xchain511_n7_β
xchain511_n2_af:
 jmp xchain511_n1_β
# IR_MATCH_RELEASE
 xchain511_n3_α:
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
.Lx518_1:
 test rax, rax
 je .Lx518_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx518_3]
 lea rdx, [rip + .Lx518_4]
 jmp rax
.Lx518_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx518_1
.Lx518_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx518_1
.Lx518_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain511_n8_α
# IR_LIT_INTEGER
 xchain511_n4_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx519_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain511_n5_α
 xchain511_n4_β:
 jmp xchain511_n2_af
.Lx519_0:
 .quad 10
# IR_MATCH_POS
 xchain511_n5_α:
 mov rax, 10
 cmp r14d, eax
 jne xchain511_n2_af
 jmp xchain511_n6_α
 xchain511_n5_β:
 jmp xchain511_n2_af
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain511_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain511_n9_α
 xchain511_n6_β:
 add rsp, 16
 jmp xchain511_n2_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain511_n7_α:
 mov eax, dword ptr [rsp + 0]
 lea rcx, [rip + .S8]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain511_n2_as
 xchain511_n7_β:
 sub r12, 24
 jmp xchain511_n9_β
# IR_LIT_STRING
 xchain511_n8_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx525_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain511_n10_α
 xchain511_n8_β:
 jmp xchain511_n11_α
.Lx525_0:
 .quad .Lx525_0_s
.Lx525_0_s:
 .string "list(head,tail)"
# IR_MATCH_LEN
 xchain511_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jle .Lx526_240
 add rsp, 16
 jmp xchain511_n2_af
.Lx526_240:
 add r14d, 1
 jmp xchain511_n7_α
 xchain511_n9_β:
 sub r14d, 1
 add rsp, 16
 jmp xchain511_n2_af
 xchain511_n10_α:
# BOX IR_CALL DATA(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn528: .string "DATA"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn528]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain511_n11_α
 jmp xchain511_n11_α
 xchain511_n10_β:
 jmp xchain511_n11_α
# IR_LIT_INTEGER
 xchain511_n11_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx529_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain511_n12_α
 xchain511_n11_β:
 jmp xchain511_n13_α
.Lx529_0:
 .quad 0
# IR_ASSIGN gva
 xchain511_n12_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain511_n13_α
 xchain511_n12_β:
 jmp xchain511_n13_α
 xchain511_n13_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn532: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn532]
 lea rsi, [rbp + 480]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain511_n15_α
 jmp xchain511_n14_α
 xchain511_n13_β:
 jmp xchain511_n15_α
# IR_ASSIGN gva
 xchain511_n14_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain511_n15_α
 xchain511_n14_β:
 jmp xchain511_n15_α
 xchain511_n15_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn535: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn535]
 lea rsi, [rbp + 528]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain511_n17_α
 jmp xchain511_n16_α
 xchain511_n15_β:
 jmp xchain511_n17_α
# IR_ASSIGN gva
 xchain511_n16_α:
 mov rax, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain511_n17_α
 xchain511_n16_β:
 jmp xchain511_n17_α
 xchain511_n17_α:
# BOX IR_CALL TABLE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn538: .string "TABLE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn538]
 lea rsi, [rbp + 576]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain511_n19_α
 jmp xchain511_n18_α
 xchain511_n17_β:
 jmp xchain511_n19_α
# IR_ASSIGN gva
 xchain511_n18_α:
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain511_n19_α
 xchain511_n18_β:
 jmp xchain511_n19_α
# IR_LIT_STRING
 xchain511_n19_α:
 mov qword ptr [rbp + 11408], 1
 mov rax, qword ptr [rip + .Lx540_0]
 mov qword ptr [rbp + 11416], rax
 jmp xchain511_n20_α
 xchain511_n19_β:
 jmp xchain511_n22_α
.Lx540_0:
 .quad .Lx540_0_s
.Lx540_0_s:
 .string " "
# IR_VAR
 xchain511_n20_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11440], rax
 mov qword ptr [rbp + 11448], rdx
 jmp xchain511_n21_α
 xchain511_n20_β:
 jmp xchain511_n22_α
 xchain511_n21_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11408]
 mov rsi, qword ptr [rbp + 11416]
 mov rdx, qword ptr [rbp + 11440]
 mov rcx, qword ptr [rbp + 11448]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11376], rax
 mov qword ptr [rbp + 11384], rdx
 jmp xchain511_n23_α
 xchain511_n21_β:
 jmp xchain511_n22_α
# IR_LIT_STRING
 xchain511_n22_α:
 mov qword ptr [rbp + 11728], 1
 mov rax, qword ptr [rip + .Lx543_0]
 mov qword ptr [rbp + 11736], rax
 jmp xchain511_n24_α
 xchain511_n22_β:
 jmp xchain511_n27_α
.Lx543_0:
 .quad .Lx543_0_s
.Lx543_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain511_n23_α:
 mov rax, qword ptr [rbp + 11376]
 mov rdx, qword ptr [rbp + 11384]
 mov qword ptr [1879053072], rax
 mov qword ptr [1879053080], rdx
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 jmp xchain511_n25_α
 xchain511_n23_β:
 jmp xchain511_n22_α
# IR_VAR
 xchain511_n24_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11760], rax
 mov qword ptr [rbp + 11768], rdx
 jmp xchain511_n26_α
 xchain511_n24_β:
 jmp xchain511_n27_α
# IR_LIT_STRING
 xchain511_n25_α:
 mov qword ptr [rbp + 11328], 1
 mov rax, qword ptr [rip + .Lx546_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain511_n28_α
 xchain511_n25_β:
 jmp xchain511_n22_α
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
 .string "PAT$1"
 xchain511_n26_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11728]
 mov rsi, qword ptr [rbp + 11736]
 mov rdx, qword ptr [rbp + 11760]
 mov rcx, qword ptr [rbp + 11768]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11696], rax
 mov qword ptr [rbp + 11704], rdx
 jmp xchain511_n29_α
 xchain511_n26_β:
 jmp xchain511_n27_α
# IR_LIT_STRING
 xchain511_n27_α:
 mov qword ptr [rbp + 11856], 1
 mov rax, qword ptr [rip + .Lx548_0]
 mov qword ptr [rbp + 11864], rax
 jmp xchain511_n30_α
 xchain511_n27_β:
 jmp xchain511_n34_α
.Lx548_0:
 .quad .Lx548_0_s
.Lx548_0_s:
 .string "PAT$3"
 xchain511_n28_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11328] -> [zr+11296]
 mov rax, qword ptr [rbp + 11328]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11336]
 mov qword ptr [rbp + 11304], rax
  .section .rodata
  .Lrkfn550: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn550]
 lea rsi, [rbp + 11296]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11280], rax
 mov qword ptr [rbp + 11288], rdx
 cmp eax, 99
 je xchain511_n22_α
 jmp xchain511_n31_α
 xchain511_n28_β:
 jmp xchain511_n22_α
# IR_ASSIGN gva
 xchain511_n29_α:
 mov rax, qword ptr [rbp + 11696]
 mov rdx, qword ptr [rbp + 11704]
 mov qword ptr [1879053104], rax
 mov qword ptr [1879053112], rdx
 mov qword ptr [rbp + 11680], rax
 mov qword ptr [rbp + 11688], rdx
 jmp xchain511_n32_α
 xchain511_n29_β:
 jmp xchain511_n27_α
 xchain511_n30_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11856] -> [zr+11824]
 mov rax, qword ptr [rbp + 11856]
 mov qword ptr [rbp + 11824], rax
 mov rax, qword ptr [rbp + 11864]
 mov qword ptr [rbp + 11832], rax
  .section .rodata
  .Lrkfn553: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn553]
 lea rsi, [rbp + 11824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11808], rax
 mov qword ptr [rbp + 11816], rdx
 cmp eax, 99
 je xchain511_n34_α
 jmp xchain511_n33_α
 xchain511_n30_β:
 jmp xchain511_n34_α
# IR_ASSIGN gva
 xchain511_n31_α:
 mov rax, qword ptr [rbp + 11280]
 mov rdx, qword ptr [rbp + 11288]
 mov qword ptr [1879052944], rax
 mov qword ptr [1879052952], rdx
 mov qword ptr [rbp + 11264], rax
 mov qword ptr [rbp + 11272], rdx
 jmp xchain511_n22_α
 xchain511_n31_β:
 jmp xchain511_n22_α
# IR_LIT_STRING
 xchain511_n32_α:
 mov qword ptr [rbp + 11616], 1
 mov rax, qword ptr [rip + .Lx555_0]
 mov qword ptr [rbp + 11624], rax
 jmp xchain511_n35_α
 xchain511_n32_β:
 jmp xchain511_n27_α
.Lx555_0:
 .quad .Lx555_0_s
.Lx555_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain511_n33_α:
 mov rax, qword ptr [rbp + 11808]
 mov rdx, qword ptr [rbp + 11816]
 mov qword ptr [1879052976], rax
 mov qword ptr [1879052984], rdx
 mov qword ptr [rbp + 11792], rax
 mov qword ptr [rbp + 11800], rdx
 jmp xchain511_n34_α
 xchain511_n33_β:
 jmp xchain511_n34_α
# IR_LIT_STRING
 xchain511_n34_α:
 mov qword ptr [rbp + 11952], 1
 mov rax, qword ptr [rip + .Lx557_0]
 mov qword ptr [rbp + 11960], rax
 jmp xchain511_n36_α
 xchain511_n34_β:
 jmp xchain511_n39_α
.Lx557_0:
 .quad .Lx557_0_s
.Lx557_0_s:
 .string "PAT$4"
# IR_VAR
 xchain511_n35_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11648], rax
 mov qword ptr [rbp + 11656], rdx
 jmp xchain511_n37_α
 xchain511_n35_β:
 jmp xchain511_n27_α
 xchain511_n36_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11952] -> [zr+11920]
 mov rax, qword ptr [rbp + 11952]
 mov qword ptr [rbp + 11920], rax
 mov rax, qword ptr [rbp + 11960]
 mov qword ptr [rbp + 11928], rax
  .section .rodata
  .Lrkfn560: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn560]
 lea rsi, [rbp + 11920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11904], rax
 mov qword ptr [rbp + 11912], rdx
 cmp eax, 99
 je xchain511_n39_α
 jmp xchain511_n38_α
 xchain511_n36_β:
 jmp xchain511_n39_α
 xchain511_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11616]
 mov rsi, qword ptr [rbp + 11624]
 mov rdx, qword ptr [rbp + 11648]
 mov rcx, qword ptr [rbp + 11656]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11584], rax
 mov qword ptr [rbp + 11592], rdx
 jmp xchain511_n40_α
 xchain511_n37_β:
 jmp xchain511_n27_α
# IR_ASSIGN gva
 xchain511_n38_α:
 mov rax, qword ptr [rbp + 11904]
 mov rdx, qword ptr [rbp + 11912]
 mov qword ptr [1879053008], rax
 mov qword ptr [1879053016], rdx
 mov qword ptr [rbp + 11888], rax
 mov qword ptr [rbp + 11896], rdx
 jmp xchain511_n39_α
 xchain511_n38_β:
 jmp xchain511_n39_α
# IR_VAR
 xchain511_n39_α:
 mov rdi, qword ptr [rip + .Lx563_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain511_n42_α
 mov qword ptr [rbp + 12000], rax
 mov qword ptr [rbp + 12008], rdx
 jmp xchain511_n41_α
 xchain511_n39_β:
 jmp xchain511_n42_α
.Lx563_0:
 .quad .Lx563_0_s
.Lx563_0_s:
 .string "INPUT"
# IR_ASSIGN gva
 xchain511_n40_α:
 mov rax, qword ptr [rbp + 11584]
 mov rdx, qword ptr [rbp + 11592]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
 mov qword ptr [rbp + 11568], rax
 mov qword ptr [rbp + 11576], rdx
 jmp xchain511_n43_α
 xchain511_n40_β:
 jmp xchain511_n27_α
# IR_ASSIGN gva
 xchain511_n41_α:
 mov rax, qword ptr [rbp + 12000]
 mov rdx, qword ptr [rbp + 12008]
 mov qword ptr [1879053040], rax
 mov qword ptr [1879053048], rdx
 mov qword ptr [rbp + 11984], rax
 mov qword ptr [rbp + 11992], rdx
 jmp xchain511_n44_α
 xchain511_n41_β:
 jmp xchain511_n42_α
# IR_LIT_STRING
 xchain511_n42_α:
 mov qword ptr [rbp + 12272], 1
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 12280], rax
 jmp xchain511_n45_α
 xchain511_n42_β:
 jmp xchain511_n49_α
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "bank"
# IR_LIT_STRING
 xchain511_n43_α:
 mov qword ptr [rbp + 11536], 1
 mov rax, qword ptr [rip + .Lx567_0]
 mov qword ptr [rbp + 11544], rax
 jmp xchain511_n46_α
 xchain511_n43_β:
 jmp xchain511_n27_α
.Lx567_0:
 .quad .Lx567_0_s
.Lx567_0_s:
 .string "PAT$2"
# IR_VAR
 xchain511_n44_α:
 mov rax, qword ptr [1879053056]
 mov rdx, qword ptr [1879053064]
 mov qword ptr [rbp + 12112], rax
 mov qword ptr [rbp + 12120], rdx
 jmp xchain511_n47_α
 xchain511_n44_β:
 jmp xchain511_n39_α
 xchain511_n45_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052448]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052456]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx570_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx570_5
 mov rax, qword ptr [rbp + 12272]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12280]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx570_6]
 lea rdx, [rip + .Lx570_7]
 jmp rax
.Lx570_6:
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
 jmp .Lx570_2
.Lx570_7:
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
 jmp .Lx570_2
.Lx570_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12272]
 mov rdx, qword ptr [rbp + 12280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx570_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx570_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx570_3]
 lea rdx, [rip + .Lx570_4]
 jmp rax
.Lx570_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx570_2
.Lx570_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx570_2
.Lx570_1:
 call rt_faildescr@PLT
.Lx570_2:
 mov qword ptr [rbp + 12224], rax
 mov qword ptr [rbp + 12232], rdx
 cmp eax, 99
 je xchain511_n49_α
 jmp xchain511_n48_α
 xchain511_n45_β:
 jmp xchain511_n49_α
.Lx570_0:
 .quad .Lx570_0_s
.Lx570_0_s:
 .string "init_list"
 xchain511_n46_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11536] -> [zr+11504]
 mov rax, qword ptr [rbp + 11536]
 mov qword ptr [rbp + 11504], rax
 mov rax, qword ptr [rbp + 11544]
 mov qword ptr [rbp + 11512], rax
  .section .rodata
  .Lrkfn572: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn572]
 lea rsi, [rbp + 11504]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 11488], rax
 mov qword ptr [rbp + 11496], rdx
 cmp eax, 99
 je xchain511_n27_α
 jmp xchain511_n50_α
 xchain511_n46_β:
 jmp xchain511_n27_α
# IR_VAR
 xchain511_n47_α:
 mov rax, qword ptr [1879053040]
 mov rdx, qword ptr [1879053048]
 mov qword ptr [rbp + 12144], rax
 mov qword ptr [rbp + 12152], rdx
 jmp xchain511_n51_α
 xchain511_n47_β:
 jmp xchain511_n39_α
# IR_ASSIGN gva
 xchain511_n48_α:
 mov rax, qword ptr [rbp + 12224]
 mov rdx, qword ptr [rbp + 12232]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12208], rax
 mov qword ptr [rbp + 12216], rdx
 jmp xchain511_n49_α
 xchain511_n48_β:
 jmp xchain511_n49_α
# IR_LIT_STRING
 xchain511_n49_α:
 mov qword ptr [rbp + 12368], 1
 mov rax, qword ptr [rip + .Lx575_0]
 mov qword ptr [rbp + 12376], rax
 jmp xchain511_n52_α
 xchain511_n49_β:
 jmp xchain511_n55_α
.Lx575_0:
 .quad .Lx575_0_s
.Lx575_0_s:
 .string "BANK"
# IR_ASSIGN gva
 xchain511_n50_α:
 mov rax, qword ptr [rbp + 11488]
 mov rdx, qword ptr [rbp + 11496]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain511_n27_α
 xchain511_n50_β:
 jmp xchain511_n27_α
 xchain511_n51_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12112]
 mov rsi, qword ptr [rbp + 12120]
 mov rdx, qword ptr [rbp + 12144]
 mov rcx, qword ptr [rbp + 12152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12080], rax
 mov qword ptr [rbp + 12088], rdx
 jmp xchain511_n53_α
 xchain511_n51_β:
 jmp xchain511_n39_α
 xchain511_n52_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx579_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx579_5
 mov rax, qword ptr [rbp + 12368]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12376]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx579_6]
 lea rdx, [rip + .Lx579_7]
 jmp rax
.Lx579_6:
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
 jmp .Lx579_2
.Lx579_7:
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
 jmp .Lx579_2
.Lx579_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12368]
 mov rdx, qword ptr [rbp + 12376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx579_0]
 mov esi, 1
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
 mov qword ptr [rbp + 12320], rax
 mov qword ptr [rbp + 12328], rdx
 cmp eax, 99
 je xchain511_n55_α
 jmp xchain511_n54_α
 xchain511_n52_β:
 jmp xchain511_n55_α
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "stk_push_frame"
# IR_VAR
 xchain511_n53_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 12176], rax
 mov qword ptr [rbp + 12184], rdx
 jmp xchain511_n56_α
 xchain511_n53_β:
 jmp xchain511_n39_α
# IR_ASSIGN gva
 xchain511_n54_α:
 mov rax, qword ptr [rbp + 12320]
 mov rdx, qword ptr [rbp + 12328]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12304], rax
 mov qword ptr [rbp + 12312], rdx
 jmp xchain511_n55_α
 xchain511_n54_β:
 jmp xchain511_n55_α
# IR_VAR
 xchain511_n55_α:
 mov rax, qword ptr [1879053056]
 mov rdx, qword ptr [1879053064]
 mov qword ptr [rbp + 12544], rax
 mov qword ptr [rbp + 12552], rdx
 jmp xchain511_n57_α
 xchain511_n55_β:
 jmp xchain511_n58_α
 xchain511_n56_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12080]
 mov rsi, qword ptr [rbp + 12088]
 mov rdx, qword ptr [rbp + 12176]
 mov rcx, qword ptr [rbp + 12184]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12048], rax
 mov qword ptr [rbp + 12056], rdx
 jmp xchain511_n59_α
 xchain511_n56_β:
 jmp xchain511_n39_α
# IR_MATCH_HEAD
 xchain511_n57_α:
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
.Lx585_0:
 mov r14d, dword ptr [rbp + 12416]
 jmp xchain511_n60_α
 xchain511_n57_β:
 add dword ptr [rbp + 12416], 1
 mov eax, dword ptr [rbp + 12416]
 cmp eax, r15d
 jg .Lx585_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx585_1
 jmp .Lx585_0
.Lx585_1:
 mov rax, qword ptr [rbp + 12424]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12432]
 mov r12, qword ptr [rbp + 12448]
 mov rbp, qword ptr [rbp + 12456]
 jmp xchain511_n58_α
# IR_LIT_STRING
 xchain511_n58_α:
 mov qword ptr [rbp + 13072], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 13080], rax
 jmp xchain511_n61_α
 xchain511_n58_β:
 jmp xchain511_n64_α
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "bank"
# IR_ASSIGN gva
 xchain511_n59_α:
 mov rax, qword ptr [rbp + 12048]
 mov rdx, qword ptr [rbp + 12056]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
 mov qword ptr [rbp + 12032], rax
 mov qword ptr [rbp + 12040], rdx
 jmp xchain511_n39_α
 xchain511_n59_β:
 jmp xchain511_n39_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain511_n60_α:
 mov rax, qword ptr [1879053008]
 mov rdx, qword ptr [1879053016]
 cmp eax, 3
 jne .Lx588_9
 mov rax, qword ptr [rdx + 0]
 test rax, rax
 jne .Lx588_10
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx588_10
.Lx588_9:
 xor eax, eax
.Lx588_10:
 test rax, rax
 jz .Lx588_0
 mov r8d, 0
 lea rcx, [rip + .Lx588_4]
 lea rdx, [rip + .Lx588_5]
 jmp rax
.Lx588_4:
 jmp xchain511_n62_α
.Lx588_5:
 jmp xchain511_n57_β
.Lx588_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S9]
 xor esi, esi
 call rt_defer_open@PLT
.Lx588_2:
 test rax, rax
 je .Lx588_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx588_7]
 lea rdx, [rip + .Lx588_8]
 jmp rax
.Lx588_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx588_2
.Lx588_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx588_2
.Lx588_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain511_n57_β
 mov r14d, eax
 lea rax, [rip + .Lx588_6]
 sub rsp, 8
 push rax
 jmp xchain511_n62_α
.Lx588_6:
 add rsp, 16
 jmp xchain511_n57_β
 xchain511_n60_β:
 jmp qword ptr [rsp]
 xchain511_n61_α:
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
 mov rdi, qword ptr [rip + .Lx590_0]
 mov esi, 2
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx590_5
 mov rax, qword ptr [rbp + 13072]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rbp + 13080]
 mov qword ptr [1879052440], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx590_6]
 lea rdx, [rip + .Lx590_7]
 jmp rax
.Lx590_6:
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
 jmp .Lx590_2
.Lx590_7:
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
 jmp .Lx590_2
.Lx590_5:
 add rsp, 48
 mov edi, 0
 mov rsi, qword ptr [rbp + 13072]
 mov rdx, qword ptr [rbp + 13080]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx590_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx590_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx590_3]
 lea rdx, [rip + .Lx590_4]
 jmp rax
.Lx590_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx590_2
.Lx590_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx590_2
.Lx590_1:
 call rt_faildescr@PLT
.Lx590_2:
 mov qword ptr [rbp + 13024], rax
 mov qword ptr [rbp + 13032], rdx
 cmp eax, 99
 je xchain511_n64_α
 jmp xchain511_n63_α
 xchain511_n61_β:
 jmp xchain511_n64_α
.Lx590_0:
 .quad .Lx590_0_s
.Lx590_0_s:
 .string "stk_pop_final"
# IR_MATCH_RELEASE
 xchain511_n62_α:
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
.Lx592_1:
 test rax, rax
 je .Lx592_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx592_3]
 lea rdx, [rip + .Lx592_4]
 jmp rax
.Lx592_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx592_1
.Lx592_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx592_1
.Lx592_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 12448]
 jmp xchain511_n65_α
# IR_ASSIGN gva
 xchain511_n63_α:
 mov rax, qword ptr [rbp + 13024]
 mov rdx, qword ptr [rbp + 13032]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13008], rax
 mov qword ptr [rbp + 13016], rdx
 jmp xchain511_n64_α
 xchain511_n63_β:
 jmp xchain511_n64_α
 xchain511_n64_α:
 sub rsp, 16
 mov rax, qword ptr [1879052800]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052808]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx595_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx595_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx595_6]
 lea rdx, [rip + .Lx595_7]
 jmp rax
.Lx595_6:
 mov rdi, qword ptr [1879052800]
 mov rsi, qword ptr [1879052808]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx595_2
.Lx595_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052808], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx595_2
.Lx595_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx595_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx595_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx595_3]
 lea rdx, [rip + .Lx595_4]
 jmp rax
.Lx595_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx595_2
.Lx595_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx595_2
.Lx595_1:
 call rt_faildescr@PLT
.Lx595_2:
 mov qword ptr [rbp + 13120], rax
 mov qword ptr [rbp + 13128], rdx
 cmp eax, 99
 je main_γ
 jmp xchain511_n66_α
 xchain511_n64_β:
 jmp main_γ
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "pp_bank"
# IR_LIT_STRING
 xchain511_n65_α:
 mov qword ptr [rbp + 12480], 1
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 12488], rax
 jmp xchain511_n67_α
 xchain511_n65_β:
 jmp xchain511_n58_α
.Lx596_0:
 .quad .Lx596_0_s
.Lx596_0_s:
 .string ""
# IR_ASSIGN gva
 xchain511_n66_α:
 mov rax, qword ptr [rbp + 13120]
 mov rdx, qword ptr [rbp + 13128]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 13104], rax
 mov qword ptr [rbp + 13112], rdx
 jmp main_γ
 xchain511_n66_β:
 jmp main_γ
# IR_MATCH_REPLACE
 xchain511_n67_α:
 mov rdi, qword ptr [rip + .Lx599_0]
 mov rsi, qword ptr [rbp + 12544]
 mov rdx, qword ptr [rbp + 12552]
 mov ecx, dword ptr [rbp + 12416]
 mov r8, qword ptr [rbp + 12440]
 lea r9, [rbp + 12480]
 call rt_match_replace@PLT
 jmp .Lx599_1
.Lx599_0:
 .quad .Lx599_0_s
.Lx599_0_s:
 .string "src"
.Lx599_1:
 mov rbp, qword ptr [rbp + 12456]
 jmp xchain511_n68_α
# IR_LIT_STRING
 xchain511_n68_α:
 mov qword ptr [rbp + 12640], 1
 mov rax, qword ptr [rip + .Lx600_0]
 mov qword ptr [rbp + 12648], rax
 jmp xchain511_n69_α
 xchain511_n68_β:
 jmp xchain511_n71_α
.Lx600_0:
 .quad .Lx600_0_s
.Lx600_0_s:
 .string "ROOT"
 xchain511_n69_α:
 sub rsp, 32
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx602_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx602_5
 mov rax, qword ptr [rbp + 12640]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 12648]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx602_6]
 lea rdx, [rip + .Lx602_7]
 jmp rax
.Lx602_6:
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
 jmp .Lx602_2
.Lx602_7:
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
 jmp .Lx602_2
.Lx602_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 12640]
 mov rdx, qword ptr [rbp + 12648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx602_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx602_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx602_3]
 lea rdx, [rip + .Lx602_4]
 jmp rax
.Lx602_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx602_2
.Lx602_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx602_2
.Lx602_1:
 call rt_faildescr@PLT
.Lx602_2:
 mov qword ptr [rbp + 12592], rax
 mov qword ptr [rbp + 12600], rdx
 cmp eax, 99
 je xchain511_n71_α
 jmp xchain511_n70_α
 xchain511_n69_β:
 jmp xchain511_n71_α
.Lx602_0:
 .quad .Lx602_0_s
.Lx602_0_s:
 .string "stk_push_frame"
# IR_ASSIGN gva
 xchain511_n70_α:
 mov rax, qword ptr [rbp + 12592]
 mov rdx, qword ptr [rbp + 12600]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12576], rax
 mov qword ptr [rbp + 12584], rdx
 jmp xchain511_n71_α
 xchain511_n70_β:
 jmp xchain511_n71_α
# IR_VAR
 xchain511_n71_α:
 mov rax, qword ptr [1879053024]
 mov rdx, qword ptr [1879053032]
 mov qword ptr [rbp + 12768], rax
 mov qword ptr [rbp + 12776], rdx
 jmp xchain511_n72_α
 xchain511_n71_β:
 jmp xchain511_n73_α
# IR_MATCH_HEAD
 xchain511_n72_α:
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
.Lx606_0:
 mov r14d, dword ptr [rbp + 12688]
 jmp xchain511_n74_α
 xchain511_n72_β:
 add dword ptr [rbp + 12688], 1
 mov eax, dword ptr [rbp + 12688]
 cmp eax, r15d
 jg .Lx606_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx606_1
 jmp .Lx606_0
.Lx606_1:
 mov rax, qword ptr [rbp + 12696]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 12704]
 mov r12, qword ptr [rbp + 12720]
 mov rbp, qword ptr [rbp + 12728]
 jmp xchain511_n73_α
# IR_LIT_STRING
 xchain511_n73_α:
 mov qword ptr [rbp + 12896], 1
 mov rax, qword ptr [rip + .Lx607_0]
 mov qword ptr [rbp + 12904], rax
 jmp xchain511_n75_α
 xchain511_n73_β:
 jmp xchain511_n78_α
.Lx607_0:
 .quad .Lx607_0_s
.Lx607_0_s:
 .string "Parse failed on: "
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain511_n74_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 cmp eax, 3
 jne .Lx608_9
 mov rax, qword ptr [rdx + 0]
 test rax, rax
 jne .Lx608_10
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx608_10
.Lx608_9:
 xor eax, eax
.Lx608_10:
 test rax, rax
 jz .Lx608_0
 mov r8d, 0
 lea rcx, [rip + .Lx608_4]
 lea rdx, [rip + .Lx608_5]
 jmp rax
.Lx608_4:
 jmp xchain511_n76_α
.Lx608_5:
 jmp xchain511_n72_β
.Lx608_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx608_2:
 test rax, rax
 je .Lx608_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx608_7]
 lea rdx, [rip + .Lx608_8]
 jmp rax
.Lx608_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx608_2
.Lx608_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx608_2
.Lx608_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain511_n72_β
 mov r14d, eax
 lea rax, [rip + .Lx608_6]
 sub rsp, 8
 push rax
 jmp xchain511_n76_α
.Lx608_6:
 add rsp, 16
 jmp xchain511_n72_β
 xchain511_n74_β:
 jmp qword ptr [rsp]
# IR_VAR
 xchain511_n75_α:
 mov rax, qword ptr [1879053024]
 mov rdx, qword ptr [1879053032]
 mov qword ptr [rbp + 12928], rax
 mov qword ptr [rbp + 12936], rdx
 jmp xchain511_n77_α
 xchain511_n75_β:
 jmp xchain511_n78_α
# IR_MATCH_RELEASE
 xchain511_n76_α:
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
.Lx611_1:
 test rax, rax
 je .Lx611_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx611_3]
 lea rdx, [rip + .Lx611_4]
 jmp rax
.Lx611_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx611_1
.Lx611_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx611_1
.Lx611_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 12720]
 mov rbp, qword ptr [rbp + 12728]
 jmp xchain511_n79_α
 xchain511_n77_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 12896]
 mov rsi, qword ptr [rbp + 12904]
 mov rdx, qword ptr [rbp + 12928]
 mov rcx, qword ptr [rbp + 12936]
 call str_concat_d@PLT
 mov qword ptr [rbp + 12864], rax
 mov qword ptr [rbp + 12872], rdx
 jmp xchain511_n80_α
 xchain511_n77_β:
 jmp xchain511_n78_α
 xchain511_n78_α:
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
 mov rdi, qword ptr [rip + .Lx614_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx614_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx614_6]
 lea rdx, [rip + .Lx614_7]
 jmp rax
.Lx614_6:
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
 jmp .Lx614_2
.Lx614_7:
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
 jmp .Lx614_2
.Lx614_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx614_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx614_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx614_3]
 lea rdx, [rip + .Lx614_4]
 jmp rax
.Lx614_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx614_2
.Lx614_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx614_2
.Lx614_1:
 call rt_faildescr@PLT
.Lx614_2:
 mov qword ptr [rbp + 12976], rax
 mov qword ptr [rbp + 12984], rdx
 cmp eax, 99
 je xchain511_n55_α
 jmp xchain511_n81_α
 xchain511_n78_β:
 jmp xchain511_n55_α
.Lx614_0:
 .quad .Lx614_0_s
.Lx614_0_s:
 .string "stk_pop_into_parent"
 xchain511_n79_α:
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
 mov rdi, qword ptr [rip + .Lx616_0]
 mov esi, 3
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx616_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx616_6]
 lea rdx, [rip + .Lx616_7]
 jmp rax
.Lx616_6:
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
 jmp .Lx616_2
.Lx616_7:
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
 jmp .Lx616_2
.Lx616_5:
 add rsp, 64
 mov rdi, qword ptr [rip + .Lx616_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx616_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx616_3]
 lea rdx, [rip + .Lx616_4]
 jmp rax
.Lx616_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx616_2
.Lx616_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx616_2
.Lx616_1:
 call rt_faildescr@PLT
.Lx616_2:
 mov qword ptr [rbp + 12816], rax
 mov qword ptr [rbp + 12824], rdx
 cmp eax, 99
 je xchain511_n55_α
 jmp xchain511_n82_α
 xchain511_n79_β:
 jmp xchain511_n55_α
.Lx616_0:
 .quad .Lx616_0_s
.Lx616_0_s:
 .string "stk_pop_into_parent"
# IR_ASSIGN global
 xchain511_n80_α:
 mov rsi, qword ptr [rbp + 12864]
 mov rdx, qword ptr [rbp + 12872]
 mov rdi, qword ptr [rip + .Lx617_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 12848], rax
 mov qword ptr [rbp + 12856], rdx
 jmp xchain511_n78_α
 xchain511_n80_β:
 jmp xchain511_n78_α
.Lx617_0:
 .quad .Lx617_0_s
.Lx617_0_s:
 .string "OUTPUT"
# IR_ASSIGN gva
 xchain511_n81_α:
 mov rax, qword ptr [rbp + 12976]
 mov rdx, qword ptr [rbp + 12984]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12960], rax
 mov qword ptr [rbp + 12968], rdx
 jmp xchain511_n55_α
 xchain511_n81_β:
 jmp xchain511_n55_α
# IR_ASSIGN gva
 xchain511_n82_α:
 mov rax, qword ptr [rbp + 12816]
 mov rdx, qword ptr [rbp + 12824]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 12800], rax
 mov qword ptr [rbp + 12808], rdx
 jmp xchain511_n55_α
 xchain511_n82_β:
 jmp xchain511_n55_α
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
.S3: .string "word"
.S4: .string "delim"
.S5: .string "group"
.S6: .string "wrd"
.S7: .string "item"
.S8: .string "nl"
.S9: .string "spat"
.text
