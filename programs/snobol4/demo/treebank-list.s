  .intel_syntax noprefix
  .text
  .globl proc_list_reverse_α
proc_list_reverse_α:
#=======================================================================================================================
    .global proc_list_reverse_α
    .global proc_list_reverse_β
    .global proc_list_reverse_γ
    .global proc_list_reverse_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_list_reverse_α_body:
# IR_LIT_STRING
 xchain0_n0_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx1_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain0_n1_α
.Lx1_0:
 .quad .Lx1_0_s
.Lx1_0_s:
 .string ""
# IR_ASSIGN gva
 xchain0_n1_α:
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n2_α
# IR_VAR
 xchain0_n2_α:
 mov rax, qword ptr [1879052304]
 mov rdx, qword ptr [1879052312]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n3_α
# IR_ASSIGN gva
 xchain0_n3_α:
 mov rax, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n4_α
# IR_VAR
 xchain0_n4_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn7: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn7]
 lea rsi, [rbp + 512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp xchain0_n6_α
# IR_VAR
 xchain0_n6_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n8_α
# IR_VAR
 xchain0_n7_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n9_α
# IR_ASSIGN gva
 xchain0_n8_α:
 mov rax, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 mov qword ptr [1879052288], rax
 mov qword ptr [1879052296], rdx
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp proc_list_reverse_γ
 xchain0_n9_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
  .section .rodata
  .Lrkfn12: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn12]
 lea rsi, [rbp + 672]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n10_α
# IR_VAR
 xchain0_n10_α:
 mov rax, qword ptr [1879052336]
 mov rdx, qword ptr [1879052344]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n12_α
# IR_VAR
 xchain0_n11_α:
 mov rax, qword ptr [1879052320]
 mov rdx, qword ptr [1879052328]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n13_α
 xchain0_n12_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn16: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn16]
 lea rsi, [rbp + 800]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain0_n4_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n4_α
 xchain0_n13_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+624]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn18: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn18]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain0_n10_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n10_α
# IR_ASSIGN gva
 xchain0_n14_α:
 mov rax, qword ptr [rbp + 784]
 mov rdx, qword ptr [rbp + 792]
 mov qword ptr [1879052336], rax
 mov qword ptr [1879052344], rdx
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain0_n4_α
# IR_ASSIGN gva
 xchain0_n15_α:
 mov rax, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 mov qword ptr [1879052320], rax
 mov qword ptr [1879052328], rdx
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n10_α
proc_list_reverse_res:
add rsp, 8
pop rbp
proc_list_reverse_β:
jmp proc_list_reverse_ω
proc_list_reverse_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_list_reverse_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_stk_push_frame_α
proc_stk_push_frame_α:
#=======================================================================================================================
    .global proc_stk_push_frame_α
    .global proc_stk_push_frame_β
    .global proc_stk_push_frame_γ
    .global proc_stk_push_frame_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_stk_push_frame_α_body:
# IR_VAR
 xchain21_n0_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain21_n1_α
# IR_LIT_STRING
 xchain21_n1_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain21_n3_α
.Lx23_0:
 .quad .Lx23_0_s
.Lx23_0_s:
 .string ""
# IR_LIT_STRING
 xchain21_n2_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx24_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain21_n4_α
.Lx24_0:
 .quad .Lx24_0_s
.Lx24_0_s:
 .string "dummy"
 xchain21_n3_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1008]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
  .section .rodata
  .Lrkfn26: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn26]
 lea rsi, [rbp + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain21_n2_α
 jmp xchain21_n5_α
 xchain21_n3_β:
 jmp xchain21_n2_α
 xchain21_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1192], rax
  .section .rodata
  .Lrkfn28: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn28]
 lea rsi, [rbp + 1184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je proc_stk_push_frame_γ
 jmp xchain21_n6_α
 xchain21_n4_β:
 jmp proc_stk_push_frame_γ
# IR_VAR
 xchain21_n5_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain21_n7_α
# IR_ASSIGN gva
 xchain21_n6_α:
 mov rax, qword ptr [rbp + 1168]
 mov rdx, qword ptr [rbp + 1176]
 mov qword ptr [1879052352], rax
 mov qword ptr [1879052360], rdx
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp proc_stk_push_frame_γ
 xchain21_n7_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+944]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+960]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 968], rax
  .section .rodata
  .Lrkfn32: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn32]
 lea rsi, [rbp + 944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain21_n2_α
 jmp xchain21_n8_α
 xchain21_n7_β:
 jmp xchain21_n2_α
# IR_ASSIGN gva
 xchain21_n8_α:
 mov rax, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain21_n2_α
proc_stk_push_frame_res:
add rsp, 8
pop rbp
proc_stk_push_frame_β:
jmp proc_stk_push_frame_ω
proc_stk_push_frame_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_stk_push_frame_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_stk_push_item_α
proc_stk_push_item_α:
#=======================================================================================================================
    .global proc_stk_push_item_α
    .global proc_stk_push_item_β
    .global proc_stk_push_item_γ
    .global proc_stk_push_item_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_stk_push_item_α_body:
# IR_VAR
 xchain34_n0_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain34_n1_α
# IR_FIELD_GET lv
 xchain34_n1_α:
 mov rdi, qword ptr [rip + .Lx36_0]
 mov rsi, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain34_n2_α
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain34_n3_α
.Lx36_0:
 .quad .Lx36_0_s
.Lx36_0_s:
 .string "head"
# IR_LIT_STRING
 xchain34_n2_α:
 mov qword ptr [rbp + 1568], 1
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain34_n4_α
.Lx37_0:
 .quad .Lx37_0_s
.Lx37_0_s:
 .string "dummy"
# IR_VAR
 xchain34_n3_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain34_n5_α
 xchain34_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1536]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1544], rax
  .section .rodata
  .Lrkfn40: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn40]
 lea rsi, [rbp + 1536]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je proc_stk_push_item_γ
 jmp xchain34_n6_α
 xchain34_n4_β:
 jmp proc_stk_push_item_γ
# IR_VAR
 xchain34_n5_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain34_n7_α
# IR_ASSIGN gva
 xchain34_n6_α:
 mov rax, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 mov qword ptr [1879052384], rax
 mov qword ptr [1879052392], rdx
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp proc_stk_push_item_γ
 xchain34_n7_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1424]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1432], rax
  .section .rodata
  .Lrkfn44: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn44]
 lea rsi, [rbp + 1424]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain34_n2_α
 jmp xchain34_n8_α
 xchain34_n7_β:
 jmp xchain34_n2_α
 xchain34_n8_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn46: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn46]
 lea rsi, [rbp + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain34_n2_α
 jmp xchain34_n9_α
 xchain34_n8_β:
 jmp xchain34_n2_α
# IR_ASSIGN_VAR
 xchain34_n9_α:
 mov rdi, qword ptr [rbp + 1280]
 mov rsi, qword ptr [rbp + 1288]
 mov rdx, qword ptr [rbp + 1312]
 mov rcx, qword ptr [rbp + 1320]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain34_n2_α
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain34_n2_α
proc_stk_push_item_res:
add rsp, 8
pop rbp
proc_stk_push_item_β:
jmp proc_stk_push_item_ω
proc_stk_push_item_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_stk_push_item_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
#=======================================================================================================================
    .global proc_stk_pop_into_parent_α
    .global proc_stk_pop_into_parent_β
    .global proc_stk_pop_into_parent_γ
    .global proc_stk_pop_into_parent_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_stk_pop_into_parent_α_body:
# IR_VAR
 xchain48_n0_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain48_n1_α
 xchain48_n1_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1680]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1688], rax
  .section .rodata
  .Lrkfn51: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn51]
 lea rsi, [rbp + 1680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 cmp eax, 99
 je xchain48_n2_α
 jmp xchain48_n3_α
 xchain48_n1_β:
 jmp xchain48_n2_α
# IR_VAR
 xchain48_n2_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain48_n4_α
 xchain48_n3_α:
 sub rsp, 64
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052320]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052328]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052336]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052344]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 56], rax
 mov rdi, qword ptr [rip + .Lx54_0]
 mov esi, 3
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx54_5
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx54_6]
 lea rdx, [rip + .Lx54_7]
 jmp rax
.Lx54_6:
 mov rdi, qword ptr [1879052288]
 mov rsi, qword ptr [1879052296]
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052336], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052344], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052320], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052328], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx54_2
.Lx54_7:
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052336], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052344], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052320], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052328], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx54_2
.Lx54_5:
 add rsp, 64
 mov edi, 0
 mov rsi, qword ptr [rbp + 1664]
 mov rdx, qword ptr [rbp + 1672]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx54_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx54_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx54_3]
 lea rdx, [rip + .Lx54_4]
 jmp rax
.Lx54_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx54_2
.Lx54_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx54_2
.Lx54_1:
 call rt_faildescr@PLT
.Lx54_2:
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain48_n2_α
 jmp xchain48_n6_α
 xchain48_n3_β:
 jmp xchain48_n2_α
.Lx54_0:
 .quad .Lx54_0_s
.Lx54_0_s:
 .string "list_reverse"
 xchain48_n4_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1776]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
  .section .rodata
  .Lrkfn56: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn56]
 lea rsi, [rbp + 1776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain48_n5_α
 jmp xchain48_n7_α
 xchain48_n4_β:
 jmp xchain48_n5_α
# IR_VAR
 xchain48_n5_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain48_n8_α
# IR_ASSIGN gva
 xchain48_n6_α:
 mov rax, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 mov qword ptr [1879052416], rax
 mov qword ptr [1879052424], rdx
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain48_n2_α
# IR_ASSIGN gva
 xchain48_n7_α:
 mov rax, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain48_n5_α
# IR_FIELD_GET lv
 xchain48_n8_α:
 mov rdi, qword ptr [rip + .Lx60_0]
 mov rsi, qword ptr [rbp + 1840]
 mov rdx, qword ptr [rbp + 1848]
 call rt_field_var@PLT
 cmp eax, 99
 je xchain48_n9_α
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain48_n10_α
.Lx60_0:
 .quad .Lx60_0_s
.Lx60_0_s:
 .string "head"
# IR_LIT_STRING
 xchain48_n9_α:
 mov qword ptr [rbp + 2160], 1
 mov rax, qword ptr [rip + .Lx61_0]
 mov qword ptr [rbp + 2168], rax
 jmp xchain48_n11_α
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "dummy"
# IR_VAR
 xchain48_n10_α:
 mov rax, qword ptr [1879052416]
 mov rdx, qword ptr [1879052424]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain48_n12_α
 xchain48_n11_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2160] -> [zr+2128]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2136], rax
  .section .rodata
  .Lrkfn64: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn64]
 lea rsi, [rbp + 2128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je proc_stk_pop_into_parent_γ
 jmp xchain48_n13_α
 xchain48_n11_β:
 jmp proc_stk_pop_into_parent_γ
# IR_VAR
 xchain48_n12_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain48_n14_α
# IR_ASSIGN gva
 xchain48_n13_α:
 mov rax, qword ptr [rbp + 2112]
 mov rdx, qword ptr [rbp + 2120]
 mov qword ptr [1879052400], rax
 mov qword ptr [1879052408], rdx
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp proc_stk_pop_into_parent_γ
 xchain48_n14_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2024], rax
  .section .rodata
  .Lrkfn68: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn68]
 lea rsi, [rbp + 2016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain48_n9_α
 jmp xchain48_n15_α
 xchain48_n14_β:
 jmp xchain48_n9_α
 xchain48_n15_α:
# BOX IR_CALL list(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1920]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1928], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1936]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1944], rax
  .section .rodata
  .Lrkfn70: .string "list"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn70]
 lea rsi, [rbp + 1920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain48_n9_α
 jmp xchain48_n16_α
 xchain48_n15_β:
 jmp xchain48_n9_α
# IR_ASSIGN_VAR
 xchain48_n16_α:
 mov rdi, qword ptr [rbp + 1872]
 mov rsi, qword ptr [rbp + 1880]
 mov rdx, qword ptr [rbp + 1904]
 mov rcx, qword ptr [rbp + 1912]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain48_n9_α
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain48_n9_α
proc_stk_pop_into_parent_res:
add rsp, 8
pop rbp
proc_stk_pop_into_parent_β:
jmp proc_stk_pop_into_parent_ω
proc_stk_pop_into_parent_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_stk_pop_into_parent_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_stk_pop_final_α
proc_stk_pop_final_α:
#=======================================================================================================================
    .global proc_stk_pop_final_α
    .global proc_stk_pop_final_β
    .global proc_stk_pop_final_γ
    .global proc_stk_pop_final_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_stk_pop_final_α_body:
# IR_VAR
 xchain72_n0_α:
 mov rax, qword ptr [1879052448]
 mov rdx, qword ptr [1879052456]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain72_n1_α
 xchain72_n1_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2208]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2216], rax
  .section .rodata
  .Lrkfn75: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn75]
 lea rsi, [rbp + 2208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain72_n2_α
 jmp xchain72_n3_α
 xchain72_n1_β:
 jmp xchain72_n2_α
# IR_VAR
 xchain72_n2_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain72_n4_α
# IR_VAR
 xchain72_n3_α:
 mov rax, qword ptr [1879052832]
 mov rdx, qword ptr [1879052840]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain72_n6_α
 xchain72_n4_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2448]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
  .section .rodata
  .Lrkfn79: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn79]
 lea rsi, [rbp + 2448]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain72_n5_α
 jmp xchain72_n7_α
 xchain72_n4_β:
 jmp xchain72_n5_α
# IR_LIT_STRING
 xchain72_n5_α:
 mov qword ptr [rbp + 2576], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain72_n8_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "dummy"
 xchain72_n6_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2336]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2344], rax
  .section .rodata
  .Lrkfn82: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn82]
 lea rsi, [rbp + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain72_n2_α
 jmp xchain72_n9_α
 xchain72_n6_β:
 jmp xchain72_n2_α
# IR_ASSIGN gva
 xchain72_n7_α:
 mov rax, qword ptr [rbp + 2432]
 mov rdx, qword ptr [rbp + 2440]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain72_n5_α
 xchain72_n8_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2544]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2552], rax
  .section .rodata
  .Lrkfn85: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn85]
 lea rsi, [rbp + 2544]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je proc_stk_pop_final_γ
 jmp xchain72_n10_α
 xchain72_n8_β:
 jmp proc_stk_pop_final_γ
 xchain72_n9_α:
 sub rsp, 64
 mov rax, qword ptr [1879052304]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052312]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052320]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052328]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052336]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052344]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052288]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052296]
 mov qword ptr [rsp + 56], rax
 mov rdi, qword ptr [rip + .Lx87_0]
 mov esi, 3
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx87_5
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [1879052312], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx87_6]
 lea rdx, [rip + .Lx87_7]
 jmp rax
.Lx87_6:
 mov rdi, qword ptr [1879052288]
 mov rsi, qword ptr [1879052296]
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052336], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052344], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052320], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052328], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx87_2
.Lx87_7:
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052288], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052296], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052336], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052344], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052320], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052328], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052304], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052312], rax
 add rsp, 64
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx87_2
.Lx87_5:
 add rsp, 64
 mov edi, 0
 mov rsi, qword ptr [rbp + 2320]
 mov rdx, qword ptr [rbp + 2328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx87_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx87_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx87_3]
 lea rdx, [rip + .Lx87_4]
 jmp rax
.Lx87_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx87_2
.Lx87_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx87_2
.Lx87_1:
 call rt_faildescr@PLT
.Lx87_2:
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain72_n2_α
 jmp xchain72_n11_α
 xchain72_n9_β:
 jmp xchain72_n2_α
.Lx87_0:
 .quad .Lx87_0_s
.Lx87_0_s:
 .string "list_reverse"
# IR_ASSIGN gva
 xchain72_n10_α:
 mov rax, qword ptr [rbp + 2528]
 mov rdx, qword ptr [rbp + 2536]
 mov qword ptr [1879052432], rax
 mov qword ptr [1879052440], rdx
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp proc_stk_pop_final_γ
# IR_ASSIGN_VAR
 xchain72_n11_α:
 mov rdi, qword ptr [rbp + 2192]
 mov rsi, qword ptr [rbp + 2200]
 mov rdx, qword ptr [rbp + 2272]
 mov rcx, qword ptr [rbp + 2280]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain72_n2_α
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain72_n2_α
proc_stk_pop_final_res:
add rsp, 8
pop rbp
proc_stk_pop_final_β:
jmp proc_stk_pop_final_ω
proc_stk_pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_stk_pop_final_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_init_list_α
proc_init_list_α:
#=======================================================================================================================
    .global proc_init_list_α
    .global proc_init_list_β
    .global proc_init_list_γ
    .global proc_init_list_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_init_list_α_body:
# IR_VAR
 xchain90_n0_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain90_n1_α
 xchain90_n1_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2624]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2632], rax
  .section .rodata
  .Lrkfn93: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn93]
 lea rsi, [rbp + 2624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je xchain90_n2_α
 jmp xchain90_n3_α
 xchain90_n1_β:
 jmp xchain90_n2_α
# IR_LIT_STRING
 xchain90_n2_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain90_n4_α
.Lx94_0:
 .quad .Lx94_0_s
.Lx94_0_s:
 .string ""
# IR_LIT_STRING
 xchain90_n3_α:
 mov qword ptr [rbp + 2688], 1
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain90_n5_α
.Lx95_0:
 .quad .Lx95_0_s
.Lx95_0_s:
 .string ""
# IR_ASSIGN gva
 xchain90_n4_α:
 mov rax, qword ptr [rbp + 2752]
 mov rdx, qword ptr [rbp + 2760]
 mov qword ptr [1879052832], rax
 mov qword ptr [1879052840], rdx
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain90_n6_α
# IR_ASSIGN_VAR
 xchain90_n5_α:
 mov rdi, qword ptr [rbp + 2608]
 mov rsi, qword ptr [rbp + 2616]
 mov rdx, qword ptr [rbp + 2688]
 mov rcx, qword ptr [rbp + 2696]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain90_n2_α
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain90_n2_α
# IR_LIT_STRING
 xchain90_n6_α:
 mov qword ptr [rbp + 2848], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rbp + 2856], rax
 jmp xchain90_n7_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "dummy"
 xchain90_n7_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2848] -> [zr+2816]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2824], rax
  .section .rodata
  .Lrkfn100: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn100]
 lea rsi, [rbp + 2816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 cmp eax, 99
 je xchain90_n9_α
 jmp xchain90_n8_α
 xchain90_n7_β:
 jmp xchain90_n9_α
# IR_ASSIGN gva
 xchain90_n8_α:
 mov rax, qword ptr [rbp + 2800]
 mov rdx, qword ptr [rbp + 2808]
 mov qword ptr [1879052464], rax
 mov qword ptr [1879052472], rdx
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain90_n9_α
# IR_LIT_STRING
 xchain90_n9_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain90_n10_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string ""
 xchain90_n10_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn104: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn104]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_init_list_ω
 jmp proc_init_list_γ
 xchain90_n10_β:
 jmp proc_init_list_ω
proc_init_list_res:
add rsp, 8
pop rbp
proc_init_list_β:
jmp proc_init_list_ω
proc_init_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_init_list_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_Init_list_α
proc_Init_list_α:
#=======================================================================================================================
    .global proc_Init_list_α
    .global proc_Init_list_β
    .global proc_Init_list_γ
    .global proc_Init_list_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_Init_list_α_body:
# IR_LIT_STRING
 xchain105_n0_α:
 mov qword ptr [rbp + 3008], 1
 mov rax, qword ptr [rip + .Lx106_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain105_n1_α
.Lx106_0:
 .quad .Lx106_0_s
.Lx106_0_s:
 .string "epsilon . *init_list("
# IR_VAR
 xchain105_n1_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain105_n2_α
 xchain105_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3008]
 mov rsi, qword ptr [rbp + 3016]
 mov rdx, qword ptr [rbp + 3040]
 mov rcx, qword ptr [rbp + 3048]
 call str_concat_d@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 jmp xchain105_n3_α
# IR_LIT_STRING
 xchain105_n3_α:
 mov qword ptr [rbp + 3072], 1
 mov rax, qword ptr [rip + .Lx109_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain105_n4_α
.Lx109_0:
 .quad .Lx109_0_s
.Lx109_0_s:
 .string ")"
 xchain105_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 2976]
 mov rsi, qword ptr [rbp + 2984]
 mov rdx, qword ptr [rbp + 3072]
 mov rcx, qword ptr [rbp + 3080]
 call str_concat_d@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain105_n5_α
 xchain105_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2944] -> [zr+2912]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2920], rax
  .section .rodata
  .Lrkfn112: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn112]
 lea rsi, [rbp + 2912]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je proc_Init_list_γ
 jmp xchain105_n6_α
 xchain105_n5_β:
 jmp proc_Init_list_γ
# IR_ASSIGN gva
 xchain105_n6_α:
 mov rax, qword ptr [rbp + 2896]
 mov rdx, qword ptr [rbp + 2904]
 mov qword ptr [1879052480], rax
 mov qword ptr [1879052488], rdx
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 jmp proc_Init_list_γ
proc_Init_list_res:
add rsp, 8
pop rbp
proc_Init_list_β:
jmp proc_Init_list_ω
proc_Init_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_Init_list_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_push_list_α
proc_push_list_α:
#=======================================================================================================================
    .global proc_push_list_α
    .global proc_push_list_β
    .global proc_push_list_γ
    .global proc_push_list_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_push_list_α_body:
# IR_VAR
 xchain114_n0_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 jmp xchain114_n1_α
 xchain114_n1_α:
 sub rsp, 32
 mov rax, qword ptr [1879052368]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052376]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052352]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052360]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx117_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx117_5
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [1879052376], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx117_6]
 lea rdx, [rip + .Lx117_7]
 jmp rax
.Lx117_6:
 mov rdi, qword ptr [1879052352]
 mov rsi, qword ptr [1879052360]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052352], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052360], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx117_2
.Lx117_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052352], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052360], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx117_2
.Lx117_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 3168]
 mov rdx, qword ptr [rbp + 3176]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx117_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx117_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx117_3]
 lea rdx, [rip + .Lx117_4]
 jmp rax
.Lx117_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx117_2
.Lx117_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx117_2
.Lx117_1:
 call rt_faildescr@PLT
.Lx117_2:
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 cmp eax, 99
 je xchain114_n2_α
 jmp xchain114_n3_α
 xchain114_n1_β:
 jmp xchain114_n2_α
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
 .string "stk_push_frame"
# IR_LIT_STRING
 xchain114_n2_α:
 mov qword ptr [rbp + 3264], 1
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain114_n4_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain114_n3_α:
 mov rax, qword ptr [rbp + 3120]
 mov rdx, qword ptr [rbp + 3128]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain114_n2_α
 xchain114_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3232]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3240], rax
  .section .rodata
  .Lrkfn121: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn121]
 lea rsi, [rbp + 3232]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3216], rax
 mov qword ptr [rbp + 3224], rdx
 cmp eax, 99
 je xchain114_n6_α
 jmp xchain114_n5_α
 xchain114_n4_β:
 jmp xchain114_n6_α
# IR_ASSIGN gva
 xchain114_n5_α:
 mov rax, qword ptr [rbp + 3216]
 mov rdx, qword ptr [rbp + 3224]
 mov qword ptr [1879052512], rax
 mov qword ptr [1879052520], rdx
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 jmp xchain114_n6_α
# IR_LIT_STRING
 xchain114_n6_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx123_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain114_n7_α
.Lx123_0:
 .quad .Lx123_0_s
.Lx123_0_s:
 .string ""
 xchain114_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn125: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn125]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_push_list_ω
 jmp proc_push_list_γ
 xchain114_n7_β:
 jmp proc_push_list_ω
proc_push_list_res:
add rsp, 8
pop rbp
proc_push_list_β:
jmp proc_push_list_ω
proc_push_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_push_list_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_Push_list_α
proc_Push_list_α:
#=======================================================================================================================
    .global proc_Push_list_α
    .global proc_Push_list_β
    .global proc_Push_list_γ
    .global proc_Push_list_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_Push_list_α_body:
# IR_LIT_STRING
 xchain126_n0_α:
 mov qword ptr [rbp + 3424], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain126_n1_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "epsilon . *push_list("
# IR_VAR
 xchain126_n1_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 jmp xchain126_n2_α
 xchain126_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3424]
 mov rsi, qword ptr [rbp + 3432]
 mov rdx, qword ptr [rbp + 3456]
 mov rcx, qword ptr [rbp + 3464]
 call str_concat_d@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain126_n3_α
# IR_LIT_STRING
 xchain126_n3_α:
 mov qword ptr [rbp + 3488], 1
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 3496], rax
 jmp xchain126_n4_α
.Lx130_0:
 .quad .Lx130_0_s
.Lx130_0_s:
 .string ")"
 xchain126_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3392]
 mov rsi, qword ptr [rbp + 3400]
 mov rdx, qword ptr [rbp + 3488]
 mov rcx, qword ptr [rbp + 3496]
 call str_concat_d@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 jmp xchain126_n5_α
 xchain126_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3360] -> [zr+3328]
 mov rax, qword ptr [rbp + 3360]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3368]
 mov qword ptr [rbp + 3336], rax
  .section .rodata
  .Lrkfn133: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn133]
 lea rsi, [rbp + 3328]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 cmp eax, 99
 je proc_Push_list_γ
 jmp xchain126_n6_α
 xchain126_n5_β:
 jmp proc_Push_list_γ
# IR_ASSIGN gva
 xchain126_n6_α:
 mov rax, qword ptr [rbp + 3312]
 mov rdx, qword ptr [rbp + 3320]
 mov qword ptr [1879052528], rax
 mov qword ptr [1879052536], rdx
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 jmp proc_Push_list_γ
proc_Push_list_res:
add rsp, 8
pop rbp
proc_Push_list_β:
jmp proc_Push_list_ω
proc_Push_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_Push_list_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_push_item_α
proc_push_item_α:
#=======================================================================================================================
    .global proc_push_item_α
    .global proc_push_item_β
    .global proc_push_item_γ
    .global proc_push_item_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_push_item_α_body:
# IR_VAR
 xchain135_n0_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain135_n1_α
 xchain135_n1_α:
 sub rsp, 32
 mov rax, qword ptr [1879052368]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052376]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052384]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052392]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx138_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx138_5
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [1879052376], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx138_6]
 lea rdx, [rip + .Lx138_7]
 jmp rax
.Lx138_6:
 mov rdi, qword ptr [1879052384]
 mov rsi, qword ptr [1879052392]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052384], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052392], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx138_2
.Lx138_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052384], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052392], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052368], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052376], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx138_2
.Lx138_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 3584]
 mov rdx, qword ptr [rbp + 3592]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx138_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx138_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx138_3]
 lea rdx, [rip + .Lx138_4]
 jmp rax
.Lx138_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx138_2
.Lx138_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx138_2
.Lx138_1:
 call rt_faildescr@PLT
.Lx138_2:
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 cmp eax, 99
 je xchain135_n2_α
 jmp xchain135_n3_α
 xchain135_n1_β:
 jmp xchain135_n2_α
.Lx138_0:
 .quad .Lx138_0_s
.Lx138_0_s:
 .string "stk_push_item"
# IR_LIT_STRING
 xchain135_n2_α:
 mov qword ptr [rbp + 3680], 1
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [rbp + 3688], rax
 jmp xchain135_n4_α
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain135_n3_α:
 mov rax, qword ptr [rbp + 3536]
 mov rdx, qword ptr [rbp + 3544]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain135_n2_α
 xchain135_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3680] -> [zr+3648]
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3656], rax
  .section .rodata
  .Lrkfn142: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn142]
 lea rsi, [rbp + 3648]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain135_n6_α
 jmp xchain135_n5_α
 xchain135_n4_β:
 jmp xchain135_n6_α
# IR_ASSIGN gva
 xchain135_n5_α:
 mov rax, qword ptr [rbp + 3632]
 mov rdx, qword ptr [rbp + 3640]
 mov qword ptr [1879052544], rax
 mov qword ptr [1879052552], rdx
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain135_n6_α
# IR_LIT_STRING
 xchain135_n6_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain135_n7_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string ""
 xchain135_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn146: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn146]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_push_item_ω
 jmp proc_push_item_γ
 xchain135_n7_β:
 jmp proc_push_item_ω
proc_push_item_res:
add rsp, 8
pop rbp
proc_push_item_β:
jmp proc_push_item_ω
proc_push_item_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_push_item_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_Push_item_α
proc_Push_item_α:
#=======================================================================================================================
    .global proc_Push_item_α
    .global proc_Push_item_β
    .global proc_Push_item_γ
    .global proc_Push_item_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_Push_item_α_body:
# IR_LIT_STRING
 xchain147_n0_α:
 mov qword ptr [rbp + 3840], 1
 mov rax, qword ptr [rip + .Lx148_0]
 mov qword ptr [rbp + 3848], rax
 jmp xchain147_n1_α
.Lx148_0:
 .quad .Lx148_0_s
.Lx148_0_s:
 .string "epsilon . *push_item("
# IR_VAR
 xchain147_n1_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 3872], rax
 mov qword ptr [rbp + 3880], rdx
 jmp xchain147_n2_α
 xchain147_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3840]
 mov rsi, qword ptr [rbp + 3848]
 mov rdx, qword ptr [rbp + 3872]
 mov rcx, qword ptr [rbp + 3880]
 call str_concat_d@PLT
 mov qword ptr [rbp + 3808], rax
 mov qword ptr [rbp + 3816], rdx
 jmp xchain147_n3_α
# IR_LIT_STRING
 xchain147_n3_α:
 mov qword ptr [rbp + 3904], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [rbp + 3912], rax
 jmp xchain147_n4_α
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string ")"
 xchain147_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 3808]
 mov rsi, qword ptr [rbp + 3816]
 mov rdx, qword ptr [rbp + 3904]
 mov rcx, qword ptr [rbp + 3912]
 call str_concat_d@PLT
 mov qword ptr [rbp + 3776], rax
 mov qword ptr [rbp + 3784], rdx
 jmp xchain147_n5_α
 xchain147_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3776] -> [zr+3744]
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 3752], rax
  .section .rodata
  .Lrkfn154: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn154]
 lea rsi, [rbp + 3744]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3728], rax
 mov qword ptr [rbp + 3736], rdx
 cmp eax, 99
 je proc_Push_item_γ
 jmp xchain147_n6_α
 xchain147_n5_β:
 jmp proc_Push_item_γ
# IR_ASSIGN gva
 xchain147_n6_α:
 mov rax, qword ptr [rbp + 3728]
 mov rdx, qword ptr [rbp + 3736]
 mov qword ptr [1879052560], rax
 mov qword ptr [1879052568], rdx
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 jmp proc_Push_item_γ
proc_Push_item_res:
add rsp, 8
pop rbp
proc_Push_item_β:
jmp proc_Push_item_ω
proc_Push_item_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_Push_item_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_pop_list_α
proc_pop_list_α:
#=======================================================================================================================
    .global proc_pop_list_α
    .global proc_pop_list_β
    .global proc_pop_list_γ
    .global proc_pop_list_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_pop_list_α_body:
 xchain156_n0_α:
 sub rsp, 32
 mov rax, qword ptr [1879052416]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052424]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052400]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052408]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx158_0]
 mov esi, 1
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx158_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx158_6]
 lea rdx, [rip + .Lx158_7]
 jmp rax
.Lx158_6:
 mov rdi, qword ptr [1879052400]
 mov rsi, qword ptr [1879052408]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052416], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052424], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx158_2
.Lx158_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052400], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052408], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052416], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052424], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx158_2
.Lx158_5:
 add rsp, 32
 mov rdi, qword ptr [rip + .Lx158_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx158_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx158_3]
 lea rdx, [rip + .Lx158_4]
 jmp rax
.Lx158_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx158_2
.Lx158_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx158_2
.Lx158_1:
 call rt_faildescr@PLT
.Lx158_2:
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain156_n2_α
 jmp xchain156_n1_α
 xchain156_n0_β:
 jmp xchain156_n2_α
.Lx158_0:
 .quad .Lx158_0_s
.Lx158_0_s:
 .string "stk_pop_into_parent"
# IR_ASSIGN gva
 xchain156_n1_α:
 mov rax, qword ptr [rbp + 3952]
 mov rdx, qword ptr [rbp + 3960]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 3936], rax
 mov qword ptr [rbp + 3944], rdx
 jmp xchain156_n2_α
# IR_LIT_STRING
 xchain156_n2_α:
 mov qword ptr [rbp + 4048], 1
 mov rax, qword ptr [rip + .Lx160_0]
 mov qword ptr [rbp + 4056], rax
 jmp xchain156_n3_α
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "dummy"
 xchain156_n3_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4048] -> [zr+4016]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 4016], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 4024], rax
  .section .rodata
  .Lrkfn162: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn162]
 lea rsi, [rbp + 4016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4000], rax
 mov qword ptr [rbp + 4008], rdx
 cmp eax, 99
 je xchain156_n5_α
 jmp xchain156_n4_α
 xchain156_n3_β:
 jmp xchain156_n5_α
# IR_ASSIGN gva
 xchain156_n4_α:
 mov rax, qword ptr [rbp + 4000]
 mov rdx, qword ptr [rbp + 4008]
 mov qword ptr [1879052576], rax
 mov qword ptr [1879052584], rdx
 mov qword ptr [rbp + 3984], rax
 mov qword ptr [rbp + 3992], rdx
 jmp xchain156_n5_α
# IR_LIT_STRING
 xchain156_n5_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain156_n6_α
.Lx164_0:
 .quad .Lx164_0_s
.Lx164_0_s:
 .string ""
 xchain156_n6_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn166: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn166]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_pop_list_ω
 jmp proc_pop_list_γ
 xchain156_n6_β:
 jmp proc_pop_list_ω
proc_pop_list_res:
add rsp, 8
pop rbp
proc_pop_list_β:
jmp proc_pop_list_ω
proc_pop_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_pop_list_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_Pop_list_α
proc_Pop_list_α:
#=======================================================================================================================
    .global proc_Pop_list_α
    .global proc_Pop_list_β
    .global proc_Pop_list_γ
    .global proc_Pop_list_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_Pop_list_α_body:
# IR_LIT_INTEGER
 xchain167_n0_α:
 mov qword ptr [rbp + 4176], 6
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [rbp + 4184], rax
 jmp xchain167_n1_α
.Lx168_0:
 .quad 42
# IR_LIT_STRING
 xchain167_n1_α:
 mov qword ptr [rbp + 4208], 1
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [rbp + 4216], rax
 jmp xchain167_n2_α
.Lx169_0:
 .quad .Lx169_0_s
.Lx169_0_s:
 .string "*EXPR$65"
# IR_VAR
 xchain167_n2_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain167_n3_α
 xchain167_n3_α:
# BOX CALL SNO$PBC(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4112]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4120], rax
# marshal arg1 = producer-box slot [zr+4208] -> [zr+4128]
 mov rax, qword ptr [rbp + 4208]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4216]
 mov qword ptr [rbp + 4136], rax
# marshal arg2 = producer-box slot [zr+4240] -> [zr+4144]
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [rbp + 4152], rax
  .section .rodata
  .Lbynamefn123: .string "SNO$PBC"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn123]
 lea rsi, [rbp + 4112]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je proc_Pop_list_γ
 jmp xchain167_n4_α
 xchain167_n3_β:
 jmp proc_Pop_list_γ
# IR_ASSIGN gva
 xchain167_n4_α:
 mov rax, qword ptr [rbp + 4096]
 mov rdx, qword ptr [rbp + 4104]
 mov qword ptr [1879052592], rax
 mov qword ptr [1879052600], rdx
 mov qword ptr [rbp + 4080], rax
 mov qword ptr [rbp + 4088], rdx
 jmp proc_Pop_list_γ
proc_Pop_list_res:
add rsp, 8
pop rbp
proc_Pop_list_β:
jmp proc_Pop_list_ω
proc_Pop_list_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_Pop_list_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_pop_final_α
proc_pop_final_α:
#=======================================================================================================================
    .global proc_pop_final_α
    .global proc_pop_final_β
    .global proc_pop_final_γ
    .global proc_pop_final_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_pop_final_α_body:
# IR_VAR
 xchain173_n0_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 jmp xchain173_n1_α
 xchain173_n1_α:
 sub rsp, 32
 mov rax, qword ptr [1879052448]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052456]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052432]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052440]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx176_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx176_5
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [1879052448], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [1879052456], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx176_6]
 lea rdx, [rip + .Lx176_7]
 jmp rax
.Lx176_6:
 mov rdi, qword ptr [1879052432]
 mov rsi, qword ptr [1879052440]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052440], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052448], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052456], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx176_2
.Lx176_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052432], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052440], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052448], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052456], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx176_2
.Lx176_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 4336]
 mov rdx, qword ptr [rbp + 4344]
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
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain173_n2_α
 jmp xchain173_n3_α
 xchain173_n1_β:
 jmp xchain173_n2_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "stk_pop_final"
# IR_LIT_STRING
 xchain173_n2_α:
 mov qword ptr [rbp + 4432], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [rbp + 4440], rax
 jmp xchain173_n4_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain173_n3_α:
 mov rax, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain173_n2_α
 xchain173_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4432] -> [zr+4400]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4400], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4408], rax
  .section .rodata
  .Lrkfn180: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn180]
 lea rsi, [rbp + 4400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 cmp eax, 99
 je xchain173_n6_α
 jmp xchain173_n5_α
 xchain173_n4_β:
 jmp xchain173_n6_α
# IR_ASSIGN gva
 xchain173_n5_α:
 mov rax, qword ptr [rbp + 4384]
 mov rdx, qword ptr [rbp + 4392]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
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
 je proc_pop_final_ω
 jmp proc_pop_final_γ
 xchain173_n7_β:
 jmp proc_pop_final_ω
proc_pop_final_res:
add rsp, 8
pop rbp
proc_pop_final_β:
jmp proc_pop_final_ω
proc_pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_pop_final_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_Pop_final_α
proc_Pop_final_α:
#=======================================================================================================================
    .global proc_Pop_final_α
    .global proc_Pop_final_β
    .global proc_Pop_final_γ
    .global proc_Pop_final_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_Pop_final_α_body:
# IR_LIT_STRING
 xchain185_n0_α:
 mov qword ptr [rbp + 4592], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain185_n1_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "epsilon . *pop_final("
# IR_VAR
 xchain185_n1_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 jmp xchain185_n2_α
 xchain185_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4592]
 mov rsi, qword ptr [rbp + 4600]
 mov rdx, qword ptr [rbp + 4624]
 mov rcx, qword ptr [rbp + 4632]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain185_n3_α
# IR_LIT_STRING
 xchain185_n3_α:
 mov qword ptr [rbp + 4656], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 4664], rax
 jmp xchain185_n4_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string ")"
 xchain185_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4560]
 mov rsi, qword ptr [rbp + 4568]
 mov rdx, qword ptr [rbp + 4656]
 mov rcx, qword ptr [rbp + 4664]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 jmp xchain185_n5_α
 xchain185_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4528] -> [zr+4496]
 mov rax, qword ptr [rbp + 4528]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4536]
 mov qword ptr [rbp + 4504], rax
  .section .rodata
  .Lrkfn192: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn192]
 lea rsi, [rbp + 4496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 cmp eax, 99
 je proc_Pop_final_γ
 jmp xchain185_n6_α
 xchain185_n5_β:
 jmp proc_Pop_final_γ
# IR_ASSIGN gva
 xchain185_n6_α:
 mov rax, qword ptr [rbp + 4480]
 mov rdx, qword ptr [rbp + 4488]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp proc_Pop_final_γ
proc_Pop_final_res:
add rsp, 8
pop rbp
proc_Pop_final_β:
jmp proc_Pop_final_ω
proc_Pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_Pop_final_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_node_repr_α
proc_node_repr_α:
#=======================================================================================================================
    .global proc_node_repr_α
    .global proc_node_repr_β
    .global proc_node_repr_γ
    .global proc_node_repr_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_node_repr_α_body:
# IR_VAR
 xchain194_n0_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 7664], rax
 mov qword ptr [rbp + 7672], rdx
 jmp xchain194_n1_α
 xchain194_n1_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7664] -> [zr+7632]
 mov rax, qword ptr [rbp + 7664]
 mov qword ptr [rbp + 7632], rax
 mov rax, qword ptr [rbp + 7672]
 mov qword ptr [rbp + 7640], rax
  .section .rodata
  .Lrkfn197: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn197]
 lea rsi, [rbp + 7632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7616], rax
 mov qword ptr [rbp + 7624], rdx
 cmp eax, 99
 je xchain194_n2_α
 jmp xchain194_n3_α
 xchain194_n1_β:
 jmp xchain194_n2_α
# IR_LIT_STRING
 xchain194_n2_α:
 mov qword ptr [rbp + 7952], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 7960], rax
 jmp xchain194_n4_α
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "("
# IR_KEYWORD_SNOBOL4_read
 xchain194_n3_α:
 mov rdi, qword ptr [rip + .Lx199_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 7696], rax
 mov qword ptr [rbp + 7704], rdx
 jmp xchain194_n5_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "LCASE"
# IR_ASSIGN gva
 xchain194_n4_α:
 mov rax, qword ptr [rbp + 7952]
 mov rdx, qword ptr [rbp + 7960]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 7936], rax
 mov qword ptr [rbp + 7944], rdx
 jmp xchain194_n6_α
# IR_KEYWORD_SNOBOL4_read
 xchain194_n5_α:
 mov rdi, qword ptr [rip + .Lx201_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain194_n7_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "UCASE"
# IR_LIT_STRING
 xchain194_n6_α:
 mov qword ptr [rbp + 8000], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 8008], rax
 jmp xchain194_n8_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string ""
 xchain194_n7_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7616] -> [zr+7552]
 mov rax, qword ptr [rbp + 7616]
 mov qword ptr [rbp + 7552], rax
 mov rax, qword ptr [rbp + 7624]
 mov qword ptr [rbp + 7560], rax
# marshal arg1 = producer-box slot [zr+7696] -> [zr+7568]
 mov rax, qword ptr [rbp + 7696]
 mov qword ptr [rbp + 7568], rax
 mov rax, qword ptr [rbp + 7704]
 mov qword ptr [rbp + 7576], rax
# marshal arg2 = producer-box slot [zr+7712] -> [zr+7584]
 mov rax, qword ptr [rbp + 7712]
 mov qword ptr [rbp + 7584], rax
 mov rax, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 7592], rax
  .section .rodata
  .Lrkfn204: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn204]
 lea rsi, [rbp + 7552]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7536], rax
 mov qword ptr [rbp + 7544], rdx
 cmp eax, 99
 je xchain194_n2_α
 jmp xchain194_n9_α
 xchain194_n7_β:
 jmp xchain194_n2_α
# IR_ASSIGN gva
 xchain194_n8_α:
 mov rax, qword ptr [rbp + 8000]
 mov rdx, qword ptr [rbp + 8008]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 7984], rax
 mov qword ptr [rbp + 7992], rdx
 jmp xchain194_n10_α
# IR_LIT_STRING
 xchain194_n9_α:
 mov qword ptr [rbp + 7728], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 7736], rax
 jmp xchain194_n11_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "STRING"
# IR_VAR
 xchain194_n10_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 jmp xchain194_n12_α
 xchain194_n11_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7536] -> [zr+7488]
 mov rax, qword ptr [rbp + 7536]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 7544]
 mov qword ptr [rbp + 7496], rax
# marshal arg1 = producer-box slot [zr+7728] -> [zr+7504]
 mov rax, qword ptr [rbp + 7728]
 mov qword ptr [rbp + 7504], rax
 mov rax, qword ptr [rbp + 7736]
 mov qword ptr [rbp + 7512], rax
  .section .rodata
  .Lrkfn209: .string "IDENT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn209]
 lea rsi, [rbp + 7488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je xchain194_n2_α
 jmp xchain194_n14_α
 xchain194_n11_β:
 jmp xchain194_n2_α
# IR_ASSIGN gva
 xchain194_n12_α:
 mov rax, qword ptr [rbp + 8048]
 mov rdx, qword ptr [rbp + 8056]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 8032], rax
 mov qword ptr [rbp + 8040], rdx
 jmp xchain194_n13_α
# IR_VAR
 xchain194_n13_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain194_n15_α
# IR_LIT_STRING
 xchain194_n14_α:
 mov qword ptr [rbp + 7840], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 7848], rax
 jmp xchain194_n17_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "'"
 xchain194_n15_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8128] -> [zr+8096]
 mov rax, qword ptr [rbp + 8128]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8136]
 mov qword ptr [rbp + 8104], rax
  .section .rodata
  .Lrkfn214: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn214]
 lea rsi, [rbp + 8096]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain194_n16_α
 jmp xchain194_n18_α
 xchain194_n15_β:
 jmp xchain194_n16_α
# IR_VAR
 xchain194_n16_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 8624], rax
 mov qword ptr [rbp + 8632], rdx
 jmp xchain194_n19_α
# IR_VAR
 xchain194_n17_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 7872], rax
 mov qword ptr [rbp + 7880], rdx
 jmp xchain194_n20_α
# IR_VAR
 xchain194_n18_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 jmp xchain194_n21_α
# IR_LIT_STRING
 xchain194_n19_α:
 mov qword ptr [rbp + 8656], 1
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 8664], rax
 jmp xchain194_n23_α
.Lx218_0:
 .quad .Lx218_0_s
.Lx218_0_s:
 .string ")"
 xchain194_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7840]
 mov rsi, qword ptr [rbp + 7848]
 mov rdx, qword ptr [rbp + 7872]
 mov rcx, qword ptr [rbp + 7880]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 jmp xchain194_n24_α
# IR_VAR
 xchain194_n21_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 jmp xchain194_n25_α
# IR_LIT_STRING
 xchain194_n22_α:
 mov qword ptr [rbp + 8448], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 8456], rax
 jmp xchain194_n26_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string ", "
 xchain194_n23_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8624]
 mov rsi, qword ptr [rbp + 8632]
 mov rdx, qword ptr [rbp + 8656]
 mov rcx, qword ptr [rbp + 8664]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8592], rax
 mov qword ptr [rbp + 8600], rdx
 jmp xchain194_n27_α
# IR_LIT_STRING
 xchain194_n24_α:
 mov qword ptr [rbp + 7904], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 7912], rax
 jmp xchain194_n28_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "'"
 xchain194_n25_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8240]
 mov rsi, qword ptr [rbp + 8248]
 mov rdx, qword ptr [rbp + 8272]
 mov rcx, qword ptr [rbp + 8280]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 jmp xchain194_n29_α
# IR_ASSIGN gva
 xchain194_n26_α:
 mov rax, qword ptr [rbp + 8448]
 mov rdx, qword ptr [rbp + 8456]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 8432], rax
 mov qword ptr [rbp + 8440], rdx
 jmp xchain194_n30_α
# IR_ASSIGN gva
 xchain194_n27_α:
 mov rax, qword ptr [rbp + 8592]
 mov rdx, qword ptr [rbp + 8600]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
 jmp proc_node_repr_γ
 xchain194_n28_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7808]
 mov rsi, qword ptr [rbp + 7816]
 mov rdx, qword ptr [rbp + 7904]
 mov rcx, qword ptr [rbp + 7912]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
 jmp xchain194_n31_α
# IR_VAR
 xchain194_n29_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain194_n32_α
# IR_VAR
 xchain194_n30_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 8544], rax
 mov qword ptr [rbp + 8552], rdx
 jmp xchain194_n33_α
# IR_ASSIGN gva
 xchain194_n31_α:
 mov rax, qword ptr [rbp + 7776]
 mov rdx, qword ptr [rbp + 7784]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 jmp proc_node_repr_γ
 xchain194_n32_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8400] -> [zr+8368]
 mov rax, qword ptr [rbp + 8400]
 mov qword ptr [rbp + 8368], rax
 mov rax, qword ptr [rbp + 8408]
 mov qword ptr [rbp + 8376], rax
  .section .rodata
  .Lrkfn232: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn232]
 lea rsi, [rbp + 8368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 cmp eax, 99
 je xchain194_n22_α
 jmp xchain194_n34_α
 xchain194_n32_β:
 jmp xchain194_n22_α
 xchain194_n33_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8544] -> [zr+8512]
 mov rax, qword ptr [rbp + 8544]
 mov qword ptr [rbp + 8512], rax
 mov rax, qword ptr [rbp + 8552]
 mov qword ptr [rbp + 8520], rax
  .section .rodata
  .Lrkfn234: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn234]
 lea rsi, [rbp + 8512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8496], rax
 mov qword ptr [rbp + 8504], rdx
 cmp eax, 99
 je xchain194_n13_α
 jmp xchain194_n35_α
 xchain194_n33_β:
 jmp xchain194_n13_α
 xchain194_n34_α:
 sub rsp, 80
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052672]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052680]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052704]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052712]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052640]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052648]
 mov qword ptr [rsp + 72], rax
 mov rdi, qword ptr [rip + .Lx236_0]
 mov esi, 4
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx236_5
 mov rax, qword ptr [rbp + 8352]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 8360]
 mov qword ptr [1879052664], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx236_6]
 lea rdx, [rip + .Lx236_7]
 jmp rax
.Lx236_6:
 mov rdi, qword ptr [1879052640]
 mov rsi, qword ptr [1879052648]
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 80
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx236_2
.Lx236_7:
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 80
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx236_2
.Lx236_5:
 add rsp, 80
 mov edi, 0
 mov rsi, qword ptr [rbp + 8352]
 mov rdx, qword ptr [rbp + 8360]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx236_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx236_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx236_3]
 lea rdx, [rip + .Lx236_4]
 jmp rax
.Lx236_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx236_2
.Lx236_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx236_2
.Lx236_1:
 call rt_faildescr@PLT
.Lx236_2:
 mov qword ptr [rbp + 8304], rax
 mov qword ptr [rbp + 8312], rdx
 cmp eax, 99
 je xchain194_n22_α
 jmp xchain194_n36_α
 xchain194_n34_β:
 jmp xchain194_n22_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "node_repr"
# IR_ASSIGN gva
 xchain194_n35_α:
 mov rax, qword ptr [rbp + 8496]
 mov rdx, qword ptr [rbp + 8504]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 8480], rax
 mov qword ptr [rbp + 8488], rdx
 jmp xchain194_n13_α
 xchain194_n36_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8208]
 mov rsi, qword ptr [rbp + 8216]
 mov rdx, qword ptr [rbp + 8304]
 mov rcx, qword ptr [rbp + 8312]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8176], rax
 mov qword ptr [rbp + 8184], rdx
 jmp xchain194_n37_α
# IR_ASSIGN gva
 xchain194_n37_α:
 mov rax, qword ptr [rbp + 8176]
 mov rdx, qword ptr [rbp + 8184]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 8160], rax
 mov qword ptr [rbp + 8168], rdx
 jmp xchain194_n22_α
proc_node_repr_res:
add rsp, 8
pop rbp
proc_node_repr_β:
jmp proc_node_repr_ω
proc_node_repr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_node_repr_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_pp_node_α
proc_pp_node_α:
#=======================================================================================================================
    .global proc_pp_node_α
    .global proc_pp_node_β
    .global proc_pp_node_γ
    .global proc_pp_node_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_pp_node_α_body:
# IR_VAR
 xchain240_n0_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 8752], rax
 mov qword ptr [rbp + 8760], rdx
 jmp xchain240_n1_α
 xchain240_n1_α:
 sub rsp, 80
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052672]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052680]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052704]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052712]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052640]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052648]
 mov qword ptr [rsp + 72], rax
 mov rdi, qword ptr [rip + .Lx243_0]
 mov esi, 4
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx243_5
 mov rax, qword ptr [rbp + 8752]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 8760]
 mov qword ptr [1879052664], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx243_6]
 lea rdx, [rip + .Lx243_7]
 jmp rax
.Lx243_6:
 mov rdi, qword ptr [1879052640]
 mov rsi, qword ptr [1879052648]
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 80
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx243_2
.Lx243_7:
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052640], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052648], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052704], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052712], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 80
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx243_2
.Lx243_5:
 add rsp, 80
 mov edi, 0
 mov rsi, qword ptr [rbp + 8752]
 mov rdx, qword ptr [rbp + 8760]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx243_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx243_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx243_3]
 lea rdx, [rip + .Lx243_4]
 jmp rax
.Lx243_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx243_2
.Lx243_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx243_2
.Lx243_1:
 call rt_faildescr@PLT
.Lx243_2:
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 cmp eax, 99
 je xchain240_n2_α
 jmp xchain240_n3_α
 xchain240_n1_β:
 jmp xchain240_n2_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "node_repr"
# IR_LIT_STRING
 xchain240_n2_α:
 mov qword ptr [rbp + 8864], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 8872], rax
 jmp xchain240_n4_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string " "
# IR_ASSIGN gva
 xchain240_n3_α:
 mov rax, qword ptr [rbp + 8704]
 mov rdx, qword ptr [rbp + 8712]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 8688], rax
 mov qword ptr [rbp + 8696], rdx
 jmp xchain240_n2_α
# IR_VAR
 xchain240_n4_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 8896], rax
 mov qword ptr [rbp + 8904], rdx
 jmp xchain240_n5_α
 xchain240_n5_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8864] -> [zr+8816]
 mov rax, qword ptr [rbp + 8864]
 mov qword ptr [rbp + 8816], rax
 mov rax, qword ptr [rbp + 8872]
 mov qword ptr [rbp + 8824], rax
# marshal arg1 = producer-box slot [zr+8896] -> [zr+8832]
 mov rax, qword ptr [rbp + 8896]
 mov qword ptr [rbp + 8832], rax
 mov rax, qword ptr [rbp + 8904]
 mov qword ptr [rbp + 8840], rax
  .section .rodata
  .Lrkfn248: .string "DUPL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn248]
 lea rsi, [rbp + 8816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 cmp eax, 99
 je xchain240_n6_α
 jmp xchain240_n7_α
 xchain240_n5_β:
 jmp xchain240_n6_α
# IR_LIT_INTEGER
 xchain240_n6_α:
 mov qword ptr [rbp + 9168], 6
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 9176], rax
 jmp xchain240_n8_α
.Lx249_0:
 .quad 80
# IR_ASSIGN gva
 xchain240_n7_α:
 mov rax, qword ptr [rbp + 8800]
 mov rdx, qword ptr [rbp + 8808]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 8784], rax
 mov qword ptr [rbp + 8792], rdx
 jmp xchain240_n6_α
# IR_VAR
 xchain240_n8_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 9056], rax
 mov qword ptr [rbp + 9064], rdx
 jmp xchain240_n9_α
# IR_VAR
 xchain240_n9_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 jmp xchain240_n11_α
# IR_VAR
 xchain240_n10_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 9520], rax
 mov qword ptr [rbp + 9528], rdx
 jmp xchain240_n12_α
 xchain240_n11_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9136] -> [zr+9104]
 mov rax, qword ptr [rbp + 9136]
 mov qword ptr [rbp + 9104], rax
 mov rax, qword ptr [rbp + 9144]
 mov qword ptr [rbp + 9112], rax
  .section .rodata
  .Lrkfn255: .string "SIZE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn255]
 lea rsi, [rbp + 9104]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9088], rax
 mov qword ptr [rbp + 9096], rdx
 cmp eax, 99
 je xchain240_n10_α
 jmp xchain240_n14_α
 xchain240_n11_β:
 jmp xchain240_n10_α
# IR_LIT_STRING
 xchain240_n12_α:
 mov qword ptr [rbp + 9552], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 9560], rax
 jmp xchain240_n15_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "( "
# IR_VAR
 xchain240_n13_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 9792], rax
 mov qword ptr [rbp + 9800], rdx
 jmp xchain240_n16_α
 xchain240_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 9056]
 cmp eax, 100
 je .Lx258_0
 mov eax, dword ptr [rbp + 9088]
 cmp eax, 100
 je .Lx258_0
 mov eax, dword ptr [rbp + 9056]
 cmp eax, 6
 jne .Lx258_2
 mov eax, dword ptr [rbp + 9088]
 cmp eax, 6
 jne .Lx258_2
.Lx258_1:
 mov rax, qword ptr [rbp + 9064]
 mov rcx, qword ptr [rbp + 9096]
 add rax, rcx
 mov qword ptr [rbp + 9024], 6
 mov qword ptr [rbp + 9032], rax
 jmp xchain240_n18_α
.Lx258_0:
 mov rdi, qword ptr [rbp + 9056]
 mov rsi, qword ptr [rbp + 9064]
 mov rdx, qword ptr [rbp + 9088]
 mov rcx, qword ptr [rbp + 9096]
 mov r8d, 0
 lea r9, [rbp + 9024]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain240_n18_α
.Lx258_2:
 mov rdi, qword ptr [rbp + 9056]
 mov rsi, qword ptr [rbp + 9064]
 mov rdx, qword ptr [rbp + 9088]
 mov rcx, qword ptr [rbp + 9096]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain240_n10_α
 mov qword ptr [rbp + 9024], rax
 mov qword ptr [rbp + 9032], rdx
 jmp xchain240_n18_α
 xchain240_n14_β:
 jmp xchain240_n10_α
 xchain240_n15_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9520]
 mov rsi, qword ptr [rbp + 9528]
 mov rdx, qword ptr [rbp + 9552]
 mov rcx, qword ptr [rbp + 9560]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9488], rax
 mov qword ptr [rbp + 9496], rdx
 jmp xchain240_n19_α
 xchain240_n16_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9792] -> [zr+9760]
 mov rax, qword ptr [rbp + 9792]
 mov qword ptr [rbp + 9760], rax
 mov rax, qword ptr [rbp + 9800]
 mov qword ptr [rbp + 9768], rax
  .section .rodata
  .Lrkfn261: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn261]
 lea rsi, [rbp + 9760]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9744], rax
 mov qword ptr [rbp + 9752], rdx
 cmp eax, 99
 je xchain240_n17_α
 jmp xchain240_n20_α
 xchain240_n16_β:
 jmp xchain240_n17_α
# IR_VAR
 xchain240_n17_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 jmp xchain240_n21_α
# IR_COERCE_NUMERIC
 xchain240_n18_α:
 mov eax, dword ptr [rbp + 9168]
 cmp eax, 7
 je .Lx264_1
 cmp eax, 6
 jne .Lx264_0
 mov eax, dword ptr [rbp + 9024]
 cmp eax, 6
 jne .Lx264_0
.Lx264_1:
 mov rax, qword ptr [rbp + 9168]
 mov qword ptr [rbp + 8992], rax
 mov rax, qword ptr [rbp + 9176]
 mov qword ptr [rbp + 9000], rax
 jmp xchain240_n22_α
.Lx264_0:
 lea rdi, [rbp + 9168]
 lea rsi, [rbp + 9024]
 lea rdx, [rbp + 8992]
 mov rcx, 111
 call rt_coerce_num2_d@PLT
 jmp xchain240_n22_α
# IR_LIT_STRING
 xchain240_n19_α:
 mov qword ptr [rbp + 9584], 1
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 9592], rax
 jmp xchain240_n23_α
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "'"
# IR_ASSIGN gva
 xchain240_n20_α:
 mov rax, qword ptr [rbp + 9744]
 mov rdx, qword ptr [rbp + 9752]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 9728], rax
 mov qword ptr [rbp + 9736], rdx
 jmp xchain240_n17_α
 xchain240_n21_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9872] -> [zr+9840]
 mov rax, qword ptr [rbp + 9872]
 mov qword ptr [rbp + 9840], rax
 mov rax, qword ptr [rbp + 9880]
 mov qword ptr [rbp + 9848], rax
  .section .rodata
  .Lrkfn268: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn268]
 lea rsi, [rbp + 9840]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9824], rax
 mov qword ptr [rbp + 9832], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp xchain240_n24_α
 xchain240_n21_β:
 jmp proc_pp_node_γ
# IR_COERCE_NUMERIC
 xchain240_n22_α:
 mov eax, dword ptr [rbp + 9024]
 cmp eax, 7
 je .Lx270_1
 cmp eax, 6
 jne .Lx270_0
 mov eax, dword ptr [rbp + 9168]
 cmp eax, 6
 jne .Lx270_0
.Lx270_1:
 mov rax, qword ptr [rbp + 9024]
 mov qword ptr [rbp + 8960], rax
 mov rax, qword ptr [rbp + 9032]
 mov qword ptr [rbp + 8968], rax
 jmp xchain240_n25_α
.Lx270_0:
 lea rdi, [rbp + 9024]
 lea rsi, [rbp + 9168]
 lea rdx, [rbp + 8960]
 mov rcx, 112
 call rt_coerce_num2_d@PLT
 jmp xchain240_n25_α
 xchain240_n23_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9488]
 mov rsi, qword ptr [rbp + 9496]
 mov rdx, qword ptr [rbp + 9584]
 mov rcx, qword ptr [rbp + 9592]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9456], rax
 mov qword ptr [rbp + 9464], rdx
 jmp xchain240_n26_α
# IR_VAR
 xchain240_n24_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 9968], rax
 mov qword ptr [rbp + 9976], rdx
 jmp xchain240_n27_α
# IR_CMP_TEST
 xchain240_n25_α:
 lea rdi, [rbp + 8992]
 lea rsi, [rbp + 8960]
 call rt_cmp_d@PLT
 test eax, eax
 jle xchain240_n10_α
 mov qword ptr [rbp + 8928], 0
 mov qword ptr [rbp + 8936], 0
 jmp xchain240_n29_α
# IR_VAR
 xchain240_n26_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 9664], rax
 mov qword ptr [rbp + 9672], rdx
 jmp xchain240_n30_α
 xchain240_n27_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9968] -> [zr+9936]
 mov rax, qword ptr [rbp + 9968]
 mov qword ptr [rbp + 9936], rax
 mov rax, qword ptr [rbp + 9976]
 mov qword ptr [rbp + 9944], rax
  .section .rodata
  .Lrkfn277: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn277]
 lea rsi, [rbp + 9936]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9920], rax
 mov qword ptr [rbp + 9928], rdx
 cmp eax, 99
 je xchain240_n28_α
 jmp xchain240_n31_α
 xchain240_n27_β:
 jmp xchain240_n28_α
# IR_VAR
 xchain240_n28_α:
 mov rax, qword ptr [1879052784]
 mov rdx, qword ptr [1879052792]
 mov qword ptr [rbp + 10048], rax
 mov qword ptr [rbp + 10056], rdx
 jmp xchain240_n32_α
# IR_VAR
 xchain240_n29_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp xchain240_n34_α
 xchain240_n30_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9664] -> [zr+9632]
 mov rax, qword ptr [rbp + 9664]
 mov qword ptr [rbp + 9632], rax
 mov rax, qword ptr [rbp + 9672]
 mov qword ptr [rbp + 9640], rax
  .section .rodata
  .Lrkfn281: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn281]
 lea rsi, [rbp + 9632]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 cmp eax, 99
 je xchain240_n13_α
 jmp xchain240_n35_α
 xchain240_n30_β:
 jmp xchain240_n13_α
# IR_ASSIGN gva
 xchain240_n31_α:
 mov rax, qword ptr [rbp + 9920]
 mov rdx, qword ptr [rbp + 9928]
 mov qword ptr [1879052784], rax
 mov qword ptr [1879052792], rdx
 mov qword ptr [rbp + 9904], rax
 mov qword ptr [rbp + 9912], rdx
 jmp xchain240_n28_α
 xchain240_n32_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10048] -> [zr+10016]
 mov rax, qword ptr [rbp + 10048]
 mov qword ptr [rbp + 10016], rax
 mov rax, qword ptr [rbp + 10056]
 mov qword ptr [rbp + 10024], rax
  .section .rodata
  .Lrkfn284: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn284]
 lea rsi, [rbp + 10016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10000], rax
 mov qword ptr [rbp + 10008], rdx
 cmp eax, 99
 je xchain240_n33_α
 jmp xchain240_n36_α
 xchain240_n32_β:
 jmp xchain240_n33_α
# IR_VAR
 xchain240_n33_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10544], rax
 mov qword ptr [rbp + 10552], rdx
 jmp xchain240_n37_α
# IR_VAR
 xchain240_n34_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 jmp xchain240_n38_α
 xchain240_n35_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9456]
 mov rsi, qword ptr [rbp + 9464]
 mov rdx, qword ptr [rbp + 9616]
 mov rcx, qword ptr [rbp + 9624]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9424], rax
 mov qword ptr [rbp + 9432], rdx
 jmp xchain240_n39_α
# IR_VAR
 xchain240_n36_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 10208], rax
 mov qword ptr [rbp + 10216], rdx
 jmp xchain240_n40_α
 xchain240_n37_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10544] -> [zr+10512]
 mov rax, qword ptr [rbp + 10544]
 mov qword ptr [rbp + 10512], rax
 mov rax, qword ptr [rbp + 10552]
 mov qword ptr [rbp + 10520], rax
  .section .rodata
  .Lrkfn290: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn290]
 lea rsi, [rbp + 10512]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10496], rax
 mov qword ptr [rbp + 10504], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp xchain240_n42_α
 xchain240_n37_β:
 jmp proc_pp_node_γ
 xchain240_n38_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9280]
 mov rsi, qword ptr [rbp + 9288]
 mov rdx, qword ptr [rbp + 9312]
 mov rcx, qword ptr [rbp + 9320]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 jmp xchain240_n43_α
# IR_LIT_STRING
 xchain240_n39_α:
 mov qword ptr [rbp + 9696], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 9704], rax
 jmp xchain240_n44_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "',"
 xchain240_n40_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10208] -> [zr+10176]
 mov rax, qword ptr [rbp + 10208]
 mov qword ptr [rbp + 10176], rax
 mov rax, qword ptr [rbp + 10216]
 mov qword ptr [rbp + 10184], rax
  .section .rodata
  .Lrkfn294: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn294]
 lea rsi, [rbp + 10176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10160], rax
 mov qword ptr [rbp + 10168], rdx
 cmp eax, 99
 je xchain240_n41_α
 jmp xchain240_n45_α
 xchain240_n40_β:
 jmp xchain240_n41_α
# IR_VAR
 xchain240_n41_α:
 mov rax, qword ptr [1879052784]
 mov rdx, qword ptr [1879052792]
 mov qword ptr [rbp + 10384], rax
 mov qword ptr [rbp + 10392], rdx
 jmp xchain240_n46_α
# IR_VAR
 xchain240_n42_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 10608], rax
 mov qword ptr [rbp + 10616], rdx
 jmp xchain240_n47_α
# IR_VAR
 xchain240_n43_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 9344], rax
 mov qword ptr [rbp + 9352], rdx
 jmp xchain240_n48_α
 xchain240_n44_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9424]
 mov rsi, qword ptr [rbp + 9432]
 mov rdx, qword ptr [rbp + 9696]
 mov rcx, qword ptr [rbp + 9704]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 jmp xchain240_n49_α
# IR_VAR
 xchain240_n45_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 10272], rax
 mov qword ptr [rbp + 10280], rdx
 jmp xchain240_n50_α
# IR_ASSIGN gva
 xchain240_n46_α:
 mov rax, qword ptr [rbp + 10384]
 mov rdx, qword ptr [rbp + 10392]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 10368], rax
 mov qword ptr [rbp + 10376], rdx
 jmp xchain240_n17_α
# IR_LIT_INTEGER
 xchain240_n47_α:
 mov qword ptr [rbp + 10640], 6
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain240_n51_α
.Lx301_0:
 .quad 2
 xchain240_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9248]
 mov rsi, qword ptr [rbp + 9256]
 mov rdx, qword ptr [rbp + 9344]
 mov rcx, qword ptr [rbp + 9352]
 call str_concat_d@PLT
 mov qword ptr [rbp + 9216], rax
 mov qword ptr [rbp + 9224], rdx
 jmp xchain240_n52_α
# IR_ASSIGN global
 xchain240_n49_α:
 mov rsi, qword ptr [rbp + 9392]
 mov rdx, qword ptr [rbp + 9400]
 mov rdi, qword ptr [rip + .Lx303_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 9376], rax
 mov qword ptr [rbp + 9384], rdx
 jmp xchain240_n13_α
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "OUTPUT"
# IR_LIT_INTEGER
 xchain240_n50_α:
 mov qword ptr [rbp + 10304], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 10312], rax
 jmp xchain240_n53_α
.Lx304_0:
 .quad 2
 xchain240_n51_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10608]
 cmp eax, 100
 je .Lx305_0
 mov eax, dword ptr [rbp + 10608]
 cmp eax, 6
 jne .Lx305_2
.Lx305_1:
 mov rax, qword ptr [rbp + 10616]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 10576], 6
 mov qword ptr [rbp + 10584], rax
 jmp xchain240_n54_α
.Lx305_0:
 mov rdi, qword ptr [rbp + 10608]
 mov rsi, qword ptr [rbp + 10616]
 mov rdx, qword ptr [rbp + 10640]
 mov rcx, qword ptr [rbp + 10648]
 mov r8d, 0
 lea r9, [rbp + 10576]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain240_n54_α
.Lx305_2:
 mov rdi, qword ptr [rbp + 10608]
 mov rsi, qword ptr [rbp + 10616]
 mov rdx, qword ptr [rbp + 10640]
 mov rcx, qword ptr [rbp + 10648]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 10576], rax
 mov qword ptr [rbp + 10584], rdx
 jmp xchain240_n54_α
 xchain240_n51_β:
 jmp proc_pp_node_γ
# IR_ASSIGN global
 xchain240_n52_α:
 mov rsi, qword ptr [rbp + 9216]
 mov rdx, qword ptr [rbp + 9224]
 mov rdi, qword ptr [rip + .Lx306_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp proc_pp_node_γ
.Lx306_0:
 .quad .Lx306_0_s
.Lx306_0_s:
 .string "OUTPUT"
 xchain240_n53_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 10272]
 cmp eax, 100
 je .Lx307_0
 mov eax, dword ptr [rbp + 10272]
 cmp eax, 6
 jne .Lx307_2
.Lx307_1:
 mov rax, qword ptr [rbp + 10280]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 10240], 6
 mov qword ptr [rbp + 10248], rax
 jmp xchain240_n55_α
.Lx307_0:
 mov rdi, qword ptr [rbp + 10272]
 mov rsi, qword ptr [rbp + 10280]
 mov rdx, qword ptr [rbp + 10304]
 mov rcx, qword ptr [rbp + 10312]
 mov r8d, 0
 lea r9, [rbp + 10240]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain240_n55_α
.Lx307_2:
 mov rdi, qword ptr [rbp + 10272]
 mov rsi, qword ptr [rbp + 10280]
 mov rdx, qword ptr [rbp + 10304]
 mov rcx, qword ptr [rbp + 10312]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain240_n41_α
 mov qword ptr [rbp + 10240], rax
 mov qword ptr [rbp + 10248], rdx
 jmp xchain240_n55_α
 xchain240_n53_β:
 jmp xchain240_n41_α
# IR_LIT_STRING
 xchain240_n54_α:
 mov qword ptr [rbp + 10704], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 10712], rax
 jmp xchain240_n56_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string ")"
# IR_LIT_STRING
 xchain240_n55_α:
 mov qword ptr [rbp + 10336], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 10344], rax
 jmp xchain240_n57_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string ","
# IR_VAR
 xchain240_n56_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain240_n58_α
 xchain240_n57_α:
 sub rsp, 128
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052736]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052744]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052752]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052760]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052672]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052680]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052768]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052776]
 mov qword ptr [rsp + 72], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 80], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 88], rax
 mov rax, qword ptr [1879052784]
 mov qword ptr [rsp + 96], rax
 mov rax, qword ptr [1879052792]
 mov qword ptr [rsp + 104], rax
 mov rax, qword ptr [1879052720]
 mov qword ptr [rsp + 112], rax
 mov rax, qword ptr [1879052728]
 mov qword ptr [rsp + 120], rax
 mov rdi, qword ptr [rip + .Lx312_0]
 mov esi, 7
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx312_5
 mov rax, qword ptr [rbp + 10160]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 10168]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rbp + 10240]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 10248]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 10336]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 10344]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx312_6]
 lea rdx, [rip + .Lx312_7]
 jmp rax
.Lx312_6:
 mov rdi, qword ptr [1879052720]
 mov rsi, qword ptr [1879052728]
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 128
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx312_2
.Lx312_7:
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 128
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx312_2
.Lx312_5:
 add rsp, 128
 mov edi, 0
 mov rsi, qword ptr [rbp + 10160]
 mov rdx, qword ptr [rbp + 10168]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10240]
 mov rdx, qword ptr [rbp + 10248]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 10336]
 mov rdx, qword ptr [rbp + 10344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx312_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx312_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx312_3]
 lea rdx, [rip + .Lx312_4]
 jmp rax
.Lx312_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx312_2
.Lx312_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx312_2
.Lx312_1:
 call rt_faildescr@PLT
.Lx312_2:
 mov qword ptr [rbp + 10080], rax
 mov qword ptr [rbp + 10088], rdx
 cmp eax, 99
 je xchain240_n41_α
 jmp xchain240_n41_α
 xchain240_n57_β:
 jmp xchain240_n41_α
.Lx312_0:
 .quad .Lx312_0_s
.Lx312_0_s:
 .string "pp_node"
 xchain240_n58_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 10704]
 mov rsi, qword ptr [rbp + 10712]
 mov rdx, qword ptr [rbp + 10736]
 mov rcx, qword ptr [rbp + 10744]
 call str_concat_d@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 jmp xchain240_n59_α
 xchain240_n59_α:
 sub rsp, 128
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052736]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052744]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052752]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052760]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052672]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052680]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052768]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052776]
 mov qword ptr [rsp + 72], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 80], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 88], rax
 mov rax, qword ptr [1879052784]
 mov qword ptr [rsp + 96], rax
 mov rax, qword ptr [1879052792]
 mov qword ptr [rsp + 104], rax
 mov rax, qword ptr [1879052720]
 mov qword ptr [rsp + 112], rax
 mov rax, qword ptr [1879052728]
 mov qword ptr [rsp + 120], rax
 mov rdi, qword ptr [rip + .Lx315_0]
 mov esi, 7
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx315_5
 mov rax, qword ptr [rbp + 10496]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 10504]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rbp + 10576]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 10584]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 10672]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 10680]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx315_6]
 lea rdx, [rip + .Lx315_7]
 jmp rax
.Lx315_6:
 mov rdi, qword ptr [1879052720]
 mov rsi, qword ptr [1879052728]
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 128
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx315_2
.Lx315_7:
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 128
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx315_2
.Lx315_5:
 add rsp, 128
 mov edi, 0
 mov rsi, qword ptr [rbp + 10496]
 mov rdx, qword ptr [rbp + 10504]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10576]
 mov rdx, qword ptr [rbp + 10584]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 10672]
 mov rdx, qword ptr [rbp + 10680]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx315_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx315_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx315_3]
 lea rdx, [rip + .Lx315_4]
 jmp rax
.Lx315_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx315_2
.Lx315_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx315_2
.Lx315_1:
 call rt_faildescr@PLT
.Lx315_2:
 mov qword ptr [rbp + 10416], rax
 mov qword ptr [rbp + 10424], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp proc_pp_node_γ
 xchain240_n59_β:
 jmp proc_pp_node_γ
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "pp_node"
proc_pp_node_res:
add rsp, 8
pop rbp
proc_pp_node_β:
jmp proc_pp_node_ω
proc_pp_node_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_pp_node_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
  .globl proc_pp_bank_α
proc_pp_bank_α:
#=======================================================================================================================
    .global proc_pp_bank_α
    .global proc_pp_bank_β
    .global proc_pp_bank_γ
    .global proc_pp_bank_ω
  sub rsp, 11536
  mov [rsp + 11512], rcx
  mov [rsp + 11520], rdx
  mov [rsp + 11528], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 11504
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 11496], rsp
proc_pp_bank_α_body:
# IR_VAR
 xchain316_n0_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 mov qword ptr [rbp + 10848], rax
 mov qword ptr [rbp + 10856], rdx
 jmp xchain316_n1_α
# IR_LIT_INTEGER
 xchain316_n1_α:
 mov qword ptr [rbp + 10880], 6
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [rbp + 10888], rax
 jmp xchain316_n3_α
.Lx318_0:
 .quad 0
# IR_LIT_STRING
 xchain316_n2_α:
 mov qword ptr [rbp + 11008], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 11016], rax
 jmp xchain316_n4_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string "dummy"
# IR_LIT_STRING
 xchain316_n3_α:
 mov qword ptr [rbp + 10912], 1
 mov rax, qword ptr [rip + .Lx320_0]
 mov qword ptr [rbp + 10920], rax
 jmp xchain316_n5_α
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
 .string ""
 xchain316_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11008] -> [zr+10976]
 mov rax, qword ptr [rbp + 11008]
 mov qword ptr [rbp + 10976], rax
 mov rax, qword ptr [rbp + 11016]
 mov qword ptr [rbp + 10984], rax
  .section .rodata
  .Lrkfn322: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn322]
 lea rsi, [rbp + 10976]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 10960], rax
 mov qword ptr [rbp + 10968], rdx
 cmp eax, 99
 je proc_pp_bank_γ
 jmp xchain316_n6_α
 xchain316_n4_β:
 jmp proc_pp_bank_γ
 xchain316_n5_α:
 sub rsp, 128
 mov rax, qword ptr [1879052656]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052664]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052736]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052744]
 mov qword ptr [rsp + 24], rax
 mov rax, qword ptr [1879052752]
 mov qword ptr [rsp + 32], rax
 mov rax, qword ptr [1879052760]
 mov qword ptr [rsp + 40], rax
 mov rax, qword ptr [1879052672]
 mov qword ptr [rsp + 48], rax
 mov rax, qword ptr [1879052680]
 mov qword ptr [rsp + 56], rax
 mov rax, qword ptr [1879052768]
 mov qword ptr [rsp + 64], rax
 mov rax, qword ptr [1879052776]
 mov qword ptr [rsp + 72], rax
 mov rax, qword ptr [1879052688]
 mov qword ptr [rsp + 80], rax
 mov rax, qword ptr [1879052696]
 mov qword ptr [rsp + 88], rax
 mov rax, qword ptr [1879052784]
 mov qword ptr [rsp + 96], rax
 mov rax, qword ptr [1879052792]
 mov qword ptr [rsp + 104], rax
 mov rax, qword ptr [1879052720]
 mov qword ptr [rsp + 112], rax
 mov rax, qword ptr [1879052728]
 mov qword ptr [rsp + 120], rax
 mov rdi, qword ptr [rip + .Lx324_0]
 mov esi, 7
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx324_5
 mov rax, qword ptr [rbp + 10848]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 10856]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rbp + 10880]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 10888]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx324_6]
 lea rdx, [rip + .Lx324_7]
 jmp rax
.Lx324_6:
 mov rdi, qword ptr [1879052720]
 mov rsi, qword ptr [1879052728]
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 128
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx324_2
.Lx324_7:
 mov rax, qword ptr [rsp + 112]
 mov qword ptr [1879052720], rax
 mov rax, qword ptr [rsp + 120]
 mov qword ptr [1879052728], rax
 mov rax, qword ptr [rsp + 96]
 mov qword ptr [1879052784], rax
 mov rax, qword ptr [rsp + 104]
 mov qword ptr [1879052792], rax
 mov rax, qword ptr [rsp + 80]
 mov qword ptr [1879052688], rax
 mov rax, qword ptr [rsp + 88]
 mov qword ptr [1879052696], rax
 mov rax, qword ptr [rsp + 64]
 mov qword ptr [1879052768], rax
 mov rax, qword ptr [rsp + 72]
 mov qword ptr [1879052776], rax
 mov rax, qword ptr [rsp + 48]
 mov qword ptr [1879052672], rax
 mov rax, qword ptr [rsp + 56]
 mov qword ptr [1879052680], rax
 mov rax, qword ptr [rsp + 32]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rsp + 40]
 mov qword ptr [1879052760], rax
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052664], rax
 add rsp, 128
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx324_2
.Lx324_5:
 add rsp, 128
 mov edi, 0
 mov rsi, qword ptr [rbp + 10848]
 mov rdx, qword ptr [rbp + 10856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 10880]
 mov rdx, qword ptr [rbp + 10888]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 10912]
 mov rdx, qword ptr [rbp + 10920]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx324_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx324_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx324_3]
 lea rdx, [rip + .Lx324_4]
 jmp rax
.Lx324_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx324_2
.Lx324_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx324_2
.Lx324_1:
 call rt_faildescr@PLT
.Lx324_2:
 mov qword ptr [rbp + 10768], rax
 mov qword ptr [rbp + 10776], rdx
 cmp eax, 99
 je xchain316_n2_α
 jmp xchain316_n2_α
 xchain316_n5_β:
 jmp xchain316_n2_α
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
 .string "pp_node"
# IR_ASSIGN gva
 xchain316_n6_α:
 mov rax, qword ptr [rbp + 10960]
 mov rdx, qword ptr [rbp + 10968]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 10944], rax
 mov qword ptr [rbp + 10952], rdx
 jmp proc_pp_bank_γ
proc_pp_bank_res:
add rsp, 8
pop rbp
proc_pp_bank_β:
jmp proc_pp_bank_ω
proc_pp_bank_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 11512]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
jmp rax
proc_pp_bank_ω:
mov rax, [rbp + 11520]
lea rsp, [rbp + 11536]
mov rbp, [rbp + 11528]
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
 xchain326_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx328_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx328_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx328_6]
 lea rdx, [rip + .Lx328_7]
 jmp rax
.Lx328_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx328_2
.Lx328_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx328_2
.Lx328_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx328_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx328_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx328_3]
 lea rdx, [rip + .Lx328_4]
 jmp rax
.Lx328_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx328_2
.Lx328_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx328_2
.Lx328_1:
 call rt_faildescr@PLT
.Lx328_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$0_ω
 jmp xchain326_n1_α
 xchain326_n0_β:
 jmp proc_EXPR$0_ω
.Lx328_0:
 .quad .Lx328_0_s
.Lx328_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain326_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053024], rax
 mov qword ptr [1879053032], rdx
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
 xchain330_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain330_n1_α
# IR_ASSIGN gva
 xchain330_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053040], rax
 mov qword ptr [1879053048], rdx
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
 xchain333_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain333_n1_α
# IR_ASSIGN gva
 xchain333_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053056], rax
 mov qword ptr [1879053064], rdx
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
# IR_VAR
 xchain336_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain336_n1_α
# IR_ASSIGN gva
 xchain336_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053072], rax
 mov qword ptr [1879053080], rdx
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
 xchain339_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain339_n1_α
# IR_ASSIGN gva
 xchain339_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053088], rax
 mov qword ptr [1879053096], rdx
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
 xchain342_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx344_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx344_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx344_6]
 lea rdx, [rip + .Lx344_7]
 jmp rax
.Lx344_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx344_2
.Lx344_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx344_2
.Lx344_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx344_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx344_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx344_3]
 lea rdx, [rip + .Lx344_4]
 jmp rax
.Lx344_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx344_2
.Lx344_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx344_2
.Lx344_1:
 call rt_faildescr@PLT
.Lx344_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$5_ω
 jmp xchain342_n1_α
 xchain342_n0_β:
 jmp proc_EXPR$5_ω
.Lx344_0:
 .quad .Lx344_0_s
.Lx344_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain342_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053104], rax
 mov qword ptr [1879053112], rdx
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
# IR_VAR
 xchain346_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain346_n1_α
# IR_ASSIGN gva
 xchain346_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053120], rax
 mov qword ptr [1879053128], rdx
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
 xchain349_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain349_n1_α
# IR_ASSIGN gva
 xchain349_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053136], rax
 mov qword ptr [1879053144], rdx
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
 xchain352_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain352_n1_α
# IR_ASSIGN gva
 xchain352_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053152], rax
 mov qword ptr [1879053160], rdx
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
# IR_VAR
 xchain355_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain355_n1_α
# IR_ASSIGN gva
 xchain355_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053168], rax
 mov qword ptr [1879053176], rdx
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
 xchain358_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx360_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx360_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx360_6]
 lea rdx, [rip + .Lx360_7]
 jmp rax
.Lx360_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx360_2
.Lx360_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx360_2
.Lx360_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx360_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx360_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx360_3]
 lea rdx, [rip + .Lx360_4]
 jmp rax
.Lx360_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx360_2
.Lx360_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx360_2
.Lx360_1:
 call rt_faildescr@PLT
.Lx360_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$10_ω
 jmp xchain358_n1_α
 xchain358_n0_β:
 jmp proc_EXPR$10_ω
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain358_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053184], rax
 mov qword ptr [1879053192], rdx
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
 xchain362_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain362_n1_α
# IR_ASSIGN gva
 xchain362_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053200], rax
 mov qword ptr [1879053208], rdx
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
# IR_VAR
 xchain365_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain365_n1_α
# IR_ASSIGN gva
 xchain365_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053216], rax
 mov qword ptr [1879053224], rdx
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
 xchain368_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain368_n1_α
# IR_ASSIGN gva
 xchain368_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053232], rax
 mov qword ptr [1879053240], rdx
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
 xchain371_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain371_n1_α
# IR_ASSIGN gva
 xchain371_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053248], rax
 mov qword ptr [1879053256], rdx
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
 xchain374_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx376_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx376_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx376_6]
 lea rdx, [rip + .Lx376_7]
 jmp rax
.Lx376_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx376_2
.Lx376_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx376_2
.Lx376_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx376_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx376_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx376_3]
 lea rdx, [rip + .Lx376_4]
 jmp rax
.Lx376_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx376_2
.Lx376_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx376_2
.Lx376_1:
 call rt_faildescr@PLT
.Lx376_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$15_ω
 jmp xchain374_n1_α
 xchain374_n0_β:
 jmp proc_EXPR$15_ω
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain374_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053264], rax
 mov qword ptr [1879053272], rdx
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
 xchain378_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain378_n1_α
# IR_ASSIGN gva
 xchain378_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053280], rax
 mov qword ptr [1879053288], rdx
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
 xchain381_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain381_n1_α
# IR_ASSIGN gva
 xchain381_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053296], rax
 mov qword ptr [1879053304], rdx
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
# IR_VAR
 xchain384_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain384_n1_α
# IR_ASSIGN gva
 xchain384_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053312], rax
 mov qword ptr [1879053320], rdx
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
 xchain387_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain387_n1_α
# IR_ASSIGN gva
 xchain387_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053328], rax
 mov qword ptr [1879053336], rdx
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
 xchain390_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx392_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx392_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx392_6]
 lea rdx, [rip + .Lx392_7]
 jmp rax
.Lx392_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx392_2
.Lx392_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx392_2
.Lx392_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx392_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx392_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx392_3]
 lea rdx, [rip + .Lx392_4]
 jmp rax
.Lx392_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx392_2
.Lx392_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx392_2
.Lx392_1:
 call rt_faildescr@PLT
.Lx392_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$20_ω
 jmp xchain390_n1_α
 xchain390_n0_β:
 jmp proc_EXPR$20_ω
.Lx392_0:
 .quad .Lx392_0_s
.Lx392_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain390_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053344], rax
 mov qword ptr [1879053352], rdx
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
# IR_VAR
 xchain394_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain394_n1_α
# IR_ASSIGN gva
 xchain394_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053360], rax
 mov qword ptr [1879053368], rdx
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
 xchain397_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain397_n1_α
# IR_ASSIGN gva
 xchain397_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053376], rax
 mov qword ptr [1879053384], rdx
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
 xchain400_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain400_n1_α
# IR_ASSIGN gva
 xchain400_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053392], rax
 mov qword ptr [1879053400], rdx
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
# IR_VAR
 xchain403_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain403_n1_α
# IR_ASSIGN gva
 xchain403_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053408], rax
 mov qword ptr [1879053416], rdx
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
 xchain406_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx408_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx408_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx408_6]
 lea rdx, [rip + .Lx408_7]
 jmp rax
.Lx408_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx408_2
.Lx408_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx408_2
.Lx408_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx408_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx408_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx408_3]
 lea rdx, [rip + .Lx408_4]
 jmp rax
.Lx408_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx408_2
.Lx408_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx408_2
.Lx408_1:
 call rt_faildescr@PLT
.Lx408_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$25_ω
 jmp xchain406_n1_α
 xchain406_n0_β:
 jmp proc_EXPR$25_ω
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain406_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053424], rax
 mov qword ptr [1879053432], rdx
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
 xchain410_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain410_n1_α
# IR_ASSIGN gva
 xchain410_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053440], rax
 mov qword ptr [1879053448], rdx
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
# IR_VAR
 xchain413_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain413_n1_α
# IR_ASSIGN gva
 xchain413_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053456], rax
 mov qword ptr [1879053464], rdx
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
 xchain416_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain416_n1_α
# IR_ASSIGN gva
 xchain416_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053472], rax
 mov qword ptr [1879053480], rdx
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
 xchain419_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain419_n1_α
# IR_ASSIGN gva
 xchain419_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053488], rax
 mov qword ptr [1879053496], rdx
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
 xchain422_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx424_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx424_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx424_6]
 lea rdx, [rip + .Lx424_7]
 jmp rax
.Lx424_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx424_2
.Lx424_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx424_2
.Lx424_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx424_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx424_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx424_3]
 lea rdx, [rip + .Lx424_4]
 jmp rax
.Lx424_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx424_2
.Lx424_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx424_2
.Lx424_1:
 call rt_faildescr@PLT
.Lx424_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$30_ω
 jmp xchain422_n1_α
 xchain422_n0_β:
 jmp proc_EXPR$30_ω
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain422_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053504], rax
 mov qword ptr [1879053512], rdx
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
 xchain426_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain426_n1_α
# IR_ASSIGN gva
 xchain426_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053520], rax
 mov qword ptr [1879053528], rdx
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
 xchain429_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain429_n1_α
# IR_ASSIGN gva
 xchain429_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053536], rax
 mov qword ptr [1879053544], rdx
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
# IR_VAR
 xchain432_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain432_n1_α
# IR_ASSIGN gva
 xchain432_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053552], rax
 mov qword ptr [1879053560], rdx
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
 xchain435_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain435_n1_α
# IR_ASSIGN gva
 xchain435_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053568], rax
 mov qword ptr [1879053576], rdx
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
 xchain438_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx440_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx440_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx440_6]
 lea rdx, [rip + .Lx440_7]
 jmp rax
.Lx440_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx440_2
.Lx440_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx440_2
.Lx440_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx440_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx440_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx440_3]
 lea rdx, [rip + .Lx440_4]
 jmp rax
.Lx440_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx440_2
.Lx440_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx440_2
.Lx440_1:
 call rt_faildescr@PLT
.Lx440_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$35_ω
 jmp xchain438_n1_α
 xchain438_n0_β:
 jmp proc_EXPR$35_ω
.Lx440_0:
 .quad .Lx440_0_s
.Lx440_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain438_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053584], rax
 mov qword ptr [1879053592], rdx
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
# IR_VAR
 xchain442_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain442_n1_α
# IR_ASSIGN gva
 xchain442_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053600], rax
 mov qword ptr [1879053608], rdx
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
 xchain445_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain445_n1_α
# IR_ASSIGN gva
 xchain445_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053616], rax
 mov qword ptr [1879053624], rdx
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
 xchain448_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain448_n1_α
# IR_ASSIGN gva
 xchain448_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053632], rax
 mov qword ptr [1879053640], rdx
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
# IR_VAR
 xchain451_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain451_n1_α
# IR_ASSIGN gva
 xchain451_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053648], rax
 mov qword ptr [1879053656], rdx
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
 xchain454_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx456_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx456_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx456_6]
 lea rdx, [rip + .Lx456_7]
 jmp rax
.Lx456_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx456_2
.Lx456_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx456_2
.Lx456_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx456_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx456_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx456_3]
 lea rdx, [rip + .Lx456_4]
 jmp rax
.Lx456_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx456_2
.Lx456_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx456_2
.Lx456_1:
 call rt_faildescr@PLT
.Lx456_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$40_ω
 jmp xchain454_n1_α
 xchain454_n0_β:
 jmp proc_EXPR$40_ω
.Lx456_0:
 .quad .Lx456_0_s
.Lx456_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain454_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053664], rax
 mov qword ptr [1879053672], rdx
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
 xchain458_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain458_n1_α
# IR_ASSIGN gva
 xchain458_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053680], rax
 mov qword ptr [1879053688], rdx
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
# IR_VAR
 xchain461_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain461_n1_α
# IR_ASSIGN gva
 xchain461_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053696], rax
 mov qword ptr [1879053704], rdx
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
 xchain464_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain464_n1_α
# IR_ASSIGN gva
 xchain464_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053712], rax
 mov qword ptr [1879053720], rdx
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
 xchain467_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain467_n1_α
# IR_ASSIGN gva
 xchain467_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053728], rax
 mov qword ptr [1879053736], rdx
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
 xchain470_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx472_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx472_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx472_6]
 lea rdx, [rip + .Lx472_7]
 jmp rax
.Lx472_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx472_2
.Lx472_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx472_2
.Lx472_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx472_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx472_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx472_3]
 lea rdx, [rip + .Lx472_4]
 jmp rax
.Lx472_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx472_2
.Lx472_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx472_2
.Lx472_1:
 call rt_faildescr@PLT
.Lx472_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$45_ω
 jmp xchain470_n1_α
 xchain470_n0_β:
 jmp proc_EXPR$45_ω
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain470_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053744], rax
 mov qword ptr [1879053752], rdx
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
 xchain474_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain474_n1_α
# IR_ASSIGN gva
 xchain474_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053760], rax
 mov qword ptr [1879053768], rdx
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
 xchain477_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain477_n1_α
# IR_ASSIGN gva
 xchain477_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053776], rax
 mov qword ptr [1879053784], rdx
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
# IR_VAR
 xchain480_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain480_n1_α
# IR_ASSIGN gva
 xchain480_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053792], rax
 mov qword ptr [1879053800], rdx
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
 xchain483_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain483_n1_α
# IR_ASSIGN gva
 xchain483_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053808], rax
 mov qword ptr [1879053816], rdx
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
 xchain486_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx488_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx488_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx488_6]
 lea rdx, [rip + .Lx488_7]
 jmp rax
.Lx488_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx488_2
.Lx488_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx488_2
.Lx488_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx488_0]
 mov esi, 0
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
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$50_ω
 jmp xchain486_n1_α
 xchain486_n0_β:
 jmp proc_EXPR$50_ω
.Lx488_0:
 .quad .Lx488_0_s
.Lx488_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain486_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053824], rax
 mov qword ptr [1879053832], rdx
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
# IR_VAR
 xchain490_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain490_n1_α
# IR_ASSIGN gva
 xchain490_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053840], rax
 mov qword ptr [1879053848], rdx
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
 xchain493_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain493_n1_α
# IR_ASSIGN gva
 xchain493_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053856], rax
 mov qword ptr [1879053864], rdx
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
 xchain496_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain496_n1_α
# IR_ASSIGN gva
 xchain496_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053872], rax
 mov qword ptr [1879053880], rdx
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
  .globl proc_EXPR$54_α
proc_EXPR$54_α:
#=======================================================================================================================
    .global proc_EXPR$54_α
    .global proc_EXPR$54_β
    .global proc_EXPR$54_γ
    .global proc_EXPR$54_ω
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
proc_EXPR$54_α_body:
# IR_VAR
 xchain499_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain499_n1_α
# IR_ASSIGN gva
 xchain499_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053888], rax
 mov qword ptr [1879053896], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$54_γ
proc_EXPR$54_res:
add rsp, 8
pop rbp
proc_EXPR$54_β:
jmp proc_EXPR$54_ω
proc_EXPR$54_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$54_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$55_α
proc_EXPR$55_α:
#=======================================================================================================================
    .global proc_EXPR$55_α
    .global proc_EXPR$55_β
    .global proc_EXPR$55_γ
    .global proc_EXPR$55_ω
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
proc_EXPR$55_α_body:
 xchain502_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx504_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx504_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx504_6]
 lea rdx, [rip + .Lx504_7]
 jmp rax
.Lx504_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx504_2
.Lx504_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx504_2
.Lx504_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx504_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx504_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx504_3]
 lea rdx, [rip + .Lx504_4]
 jmp rax
.Lx504_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx504_2
.Lx504_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx504_2
.Lx504_1:
 call rt_faildescr@PLT
.Lx504_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$55_ω
 jmp xchain502_n1_α
 xchain502_n0_β:
 jmp proc_EXPR$55_ω
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain502_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053904], rax
 mov qword ptr [1879053912], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$55_γ
proc_EXPR$55_res:
add rsp, 8
pop rbp
proc_EXPR$55_β:
jmp proc_EXPR$55_ω
proc_EXPR$55_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$55_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$56_α
proc_EXPR$56_α:
#=======================================================================================================================
    .global proc_EXPR$56_α
    .global proc_EXPR$56_β
    .global proc_EXPR$56_γ
    .global proc_EXPR$56_ω
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
proc_EXPR$56_α_body:
# IR_VAR
 xchain506_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain506_n1_α
# IR_ASSIGN gva
 xchain506_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053920], rax
 mov qword ptr [1879053928], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$56_γ
proc_EXPR$56_res:
add rsp, 8
pop rbp
proc_EXPR$56_β:
jmp proc_EXPR$56_ω
proc_EXPR$56_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$56_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$57_α
proc_EXPR$57_α:
#=======================================================================================================================
    .global proc_EXPR$57_α
    .global proc_EXPR$57_β
    .global proc_EXPR$57_γ
    .global proc_EXPR$57_ω
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
proc_EXPR$57_α_body:
# IR_VAR
 xchain509_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain509_n1_α
# IR_ASSIGN gva
 xchain509_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053936], rax
 mov qword ptr [1879053944], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$57_γ
proc_EXPR$57_res:
add rsp, 8
pop rbp
proc_EXPR$57_β:
jmp proc_EXPR$57_ω
proc_EXPR$57_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$57_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$58_α
proc_EXPR$58_α:
#=======================================================================================================================
    .global proc_EXPR$58_α
    .global proc_EXPR$58_β
    .global proc_EXPR$58_γ
    .global proc_EXPR$58_ω
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
proc_EXPR$58_α_body:
# IR_VAR
 xchain512_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain512_n1_α
# IR_ASSIGN gva
 xchain512_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053952], rax
 mov qword ptr [1879053960], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$58_γ
proc_EXPR$58_res:
add rsp, 8
pop rbp
proc_EXPR$58_β:
jmp proc_EXPR$58_ω
proc_EXPR$58_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$58_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$59_α
proc_EXPR$59_α:
#=======================================================================================================================
    .global proc_EXPR$59_α
    .global proc_EXPR$59_β
    .global proc_EXPR$59_γ
    .global proc_EXPR$59_ω
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
proc_EXPR$59_α_body:
# IR_VAR
 xchain515_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain515_n1_α
# IR_ASSIGN gva
 xchain515_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053968], rax
 mov qword ptr [1879053976], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$59_γ
proc_EXPR$59_res:
add rsp, 8
pop rbp
proc_EXPR$59_β:
jmp proc_EXPR$59_ω
proc_EXPR$59_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$59_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$60_α
proc_EXPR$60_α:
#=======================================================================================================================
    .global proc_EXPR$60_α
    .global proc_EXPR$60_β
    .global proc_EXPR$60_γ
    .global proc_EXPR$60_ω
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
proc_EXPR$60_α_body:
 xchain518_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx520_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx520_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx520_6]
 lea rdx, [rip + .Lx520_7]
 jmp rax
.Lx520_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx520_2
.Lx520_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx520_2
.Lx520_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx520_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx520_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx520_3]
 lea rdx, [rip + .Lx520_4]
 jmp rax
.Lx520_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx520_2
.Lx520_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx520_2
.Lx520_1:
 call rt_faildescr@PLT
.Lx520_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$60_ω
 jmp xchain518_n1_α
 xchain518_n0_β:
 jmp proc_EXPR$60_ω
.Lx520_0:
 .quad .Lx520_0_s
.Lx520_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain518_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879053984], rax
 mov qword ptr [1879053992], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$60_γ
proc_EXPR$60_res:
add rsp, 8
pop rbp
proc_EXPR$60_β:
jmp proc_EXPR$60_ω
proc_EXPR$60_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$60_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$61_α
proc_EXPR$61_α:
#=======================================================================================================================
    .global proc_EXPR$61_α
    .global proc_EXPR$61_β
    .global proc_EXPR$61_γ
    .global proc_EXPR$61_ω
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
proc_EXPR$61_α_body:
# IR_VAR
 xchain522_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain522_n1_α
# IR_ASSIGN gva
 xchain522_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054000], rax
 mov qword ptr [1879054008], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$61_γ
proc_EXPR$61_res:
add rsp, 8
pop rbp
proc_EXPR$61_β:
jmp proc_EXPR$61_ω
proc_EXPR$61_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$61_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$62_α
proc_EXPR$62_α:
#=======================================================================================================================
    .global proc_EXPR$62_α
    .global proc_EXPR$62_β
    .global proc_EXPR$62_γ
    .global proc_EXPR$62_ω
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
proc_EXPR$62_α_body:
# IR_VAR
 xchain525_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain525_n1_α
# IR_ASSIGN gva
 xchain525_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054016], rax
 mov qword ptr [1879054024], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$62_γ
proc_EXPR$62_res:
add rsp, 8
pop rbp
proc_EXPR$62_β:
jmp proc_EXPR$62_ω
proc_EXPR$62_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$62_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$63_α
proc_EXPR$63_α:
#=======================================================================================================================
    .global proc_EXPR$63_α
    .global proc_EXPR$63_β
    .global proc_EXPR$63_γ
    .global proc_EXPR$63_ω
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
proc_EXPR$63_α_body:
# IR_VAR
 xchain528_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain528_n1_α
# IR_ASSIGN gva
 xchain528_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054032], rax
 mov qword ptr [1879054040], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$63_γ
proc_EXPR$63_res:
add rsp, 8
pop rbp
proc_EXPR$63_β:
jmp proc_EXPR$63_ω
proc_EXPR$63_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$63_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$64_α
proc_EXPR$64_α:
#=======================================================================================================================
    .global proc_EXPR$64_α
    .global proc_EXPR$64_β
    .global proc_EXPR$64_γ
    .global proc_EXPR$64_ω
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
proc_EXPR$64_α_body:
# IR_VAR
 xchain531_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain531_n1_α
# IR_ASSIGN gva
 xchain531_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054048], rax
 mov qword ptr [1879054056], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$64_γ
proc_EXPR$64_res:
add rsp, 8
pop rbp
proc_EXPR$64_β:
jmp proc_EXPR$64_ω
proc_EXPR$64_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$64_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$65_α
proc_EXPR$65_α:
#=======================================================================================================================
    .global proc_EXPR$65_α
    .global proc_EXPR$65_β
    .global proc_EXPR$65_γ
    .global proc_EXPR$65_ω
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
proc_EXPR$65_α_body:
 xchain534_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx536_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx536_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx536_6]
 lea rdx, [rip + .Lx536_7]
 jmp rax
.Lx536_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx536_2
.Lx536_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx536_2
.Lx536_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx536_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx536_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx536_3]
 lea rdx, [rip + .Lx536_4]
 jmp rax
.Lx536_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx536_2
.Lx536_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx536_2
.Lx536_1:
 call rt_faildescr@PLT
.Lx536_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$65_ω
 jmp xchain534_n1_α
 xchain534_n0_β:
 jmp proc_EXPR$65_ω
.Lx536_0:
 .quad .Lx536_0_s
.Lx536_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain534_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054064], rax
 mov qword ptr [1879054072], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$65_γ
proc_EXPR$65_res:
add rsp, 8
pop rbp
proc_EXPR$65_β:
jmp proc_EXPR$65_ω
proc_EXPR$65_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$65_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$66_α
proc_EXPR$66_α:
#=======================================================================================================================
    .global proc_EXPR$66_α
    .global proc_EXPR$66_β
    .global proc_EXPR$66_γ
    .global proc_EXPR$66_ω
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
proc_EXPR$66_α_body:
# IR_VAR
 xchain538_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain538_n1_α
# IR_ASSIGN gva
 xchain538_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054080], rax
 mov qword ptr [1879054088], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$66_γ
proc_EXPR$66_res:
add rsp, 8
pop rbp
proc_EXPR$66_β:
jmp proc_EXPR$66_ω
proc_EXPR$66_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$66_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$67_α
proc_EXPR$67_α:
#=======================================================================================================================
    .global proc_EXPR$67_α
    .global proc_EXPR$67_β
    .global proc_EXPR$67_γ
    .global proc_EXPR$67_ω
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
proc_EXPR$67_α_body:
# IR_VAR
 xchain541_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain541_n1_α
# IR_ASSIGN gva
 xchain541_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054096], rax
 mov qword ptr [1879054104], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$67_γ
proc_EXPR$67_res:
add rsp, 8
pop rbp
proc_EXPR$67_β:
jmp proc_EXPR$67_ω
proc_EXPR$67_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$67_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$68_α
proc_EXPR$68_α:
#=======================================================================================================================
    .global proc_EXPR$68_α
    .global proc_EXPR$68_β
    .global proc_EXPR$68_γ
    .global proc_EXPR$68_ω
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
proc_EXPR$68_α_body:
# IR_VAR
 xchain544_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain544_n1_α
# IR_ASSIGN gva
 xchain544_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054112], rax
 mov qword ptr [1879054120], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$68_γ
proc_EXPR$68_res:
add rsp, 8
pop rbp
proc_EXPR$68_β:
jmp proc_EXPR$68_ω
proc_EXPR$68_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$68_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$69_α
proc_EXPR$69_α:
#=======================================================================================================================
    .global proc_EXPR$69_α
    .global proc_EXPR$69_β
    .global proc_EXPR$69_γ
    .global proc_EXPR$69_ω
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
proc_EXPR$69_α_body:
# IR_VAR
 xchain547_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain547_n1_α
# IR_ASSIGN gva
 xchain547_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054128], rax
 mov qword ptr [1879054136], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$69_γ
proc_EXPR$69_res:
add rsp, 8
pop rbp
proc_EXPR$69_β:
jmp proc_EXPR$69_ω
proc_EXPR$69_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$69_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$70_α
proc_EXPR$70_α:
#=======================================================================================================================
    .global proc_EXPR$70_α
    .global proc_EXPR$70_β
    .global proc_EXPR$70_γ
    .global proc_EXPR$70_ω
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
proc_EXPR$70_α_body:
 xchain550_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx552_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx552_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx552_6]
 lea rdx, [rip + .Lx552_7]
 jmp rax
.Lx552_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx552_2
.Lx552_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx552_2
.Lx552_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx552_0]
 mov esi, 0
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
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$70_ω
 jmp xchain550_n1_α
 xchain550_n0_β:
 jmp proc_EXPR$70_ω
.Lx552_0:
 .quad .Lx552_0_s
.Lx552_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain550_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054144], rax
 mov qword ptr [1879054152], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$70_γ
proc_EXPR$70_res:
add rsp, 8
pop rbp
proc_EXPR$70_β:
jmp proc_EXPR$70_ω
proc_EXPR$70_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$70_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$71_α
proc_EXPR$71_α:
#=======================================================================================================================
    .global proc_EXPR$71_α
    .global proc_EXPR$71_β
    .global proc_EXPR$71_γ
    .global proc_EXPR$71_ω
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
proc_EXPR$71_α_body:
# IR_VAR
 xchain554_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain554_n1_α
# IR_ASSIGN gva
 xchain554_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054160], rax
 mov qword ptr [1879054168], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$71_γ
proc_EXPR$71_res:
add rsp, 8
pop rbp
proc_EXPR$71_β:
jmp proc_EXPR$71_ω
proc_EXPR$71_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$71_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$72_α
proc_EXPR$72_α:
#=======================================================================================================================
    .global proc_EXPR$72_α
    .global proc_EXPR$72_β
    .global proc_EXPR$72_γ
    .global proc_EXPR$72_ω
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
proc_EXPR$72_α_body:
# IR_VAR
 xchain557_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain557_n1_α
# IR_ASSIGN gva
 xchain557_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054176], rax
 mov qword ptr [1879054184], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$72_γ
proc_EXPR$72_res:
add rsp, 8
pop rbp
proc_EXPR$72_β:
jmp proc_EXPR$72_ω
proc_EXPR$72_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$72_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$73_α
proc_EXPR$73_α:
#=======================================================================================================================
    .global proc_EXPR$73_α
    .global proc_EXPR$73_β
    .global proc_EXPR$73_γ
    .global proc_EXPR$73_ω
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
proc_EXPR$73_α_body:
# IR_VAR
 xchain560_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain560_n1_α
# IR_ASSIGN gva
 xchain560_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054192], rax
 mov qword ptr [1879054200], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$73_γ
proc_EXPR$73_res:
add rsp, 8
pop rbp
proc_EXPR$73_β:
jmp proc_EXPR$73_ω
proc_EXPR$73_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$73_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$74_α
proc_EXPR$74_α:
#=======================================================================================================================
    .global proc_EXPR$74_α
    .global proc_EXPR$74_β
    .global proc_EXPR$74_γ
    .global proc_EXPR$74_ω
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
proc_EXPR$74_α_body:
# IR_VAR
 xchain563_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain563_n1_α
# IR_ASSIGN gva
 xchain563_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054208], rax
 mov qword ptr [1879054216], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$74_γ
proc_EXPR$74_res:
add rsp, 8
pop rbp
proc_EXPR$74_β:
jmp proc_EXPR$74_ω
proc_EXPR$74_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$74_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$75_α
proc_EXPR$75_α:
#=======================================================================================================================
    .global proc_EXPR$75_α
    .global proc_EXPR$75_β
    .global proc_EXPR$75_γ
    .global proc_EXPR$75_ω
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
proc_EXPR$75_α_body:
 xchain566_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx568_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx568_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx568_6]
 lea rdx, [rip + .Lx568_7]
 jmp rax
.Lx568_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx568_2
.Lx568_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx568_2
.Lx568_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx568_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx568_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx568_3]
 lea rdx, [rip + .Lx568_4]
 jmp rax
.Lx568_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx568_2
.Lx568_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx568_2
.Lx568_1:
 call rt_faildescr@PLT
.Lx568_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$75_ω
 jmp xchain566_n1_α
 xchain566_n0_β:
 jmp proc_EXPR$75_ω
.Lx568_0:
 .quad .Lx568_0_s
.Lx568_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain566_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054224], rax
 mov qword ptr [1879054232], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$75_γ
proc_EXPR$75_res:
add rsp, 8
pop rbp
proc_EXPR$75_β:
jmp proc_EXPR$75_ω
proc_EXPR$75_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$75_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$76_α
proc_EXPR$76_α:
#=======================================================================================================================
    .global proc_EXPR$76_α
    .global proc_EXPR$76_β
    .global proc_EXPR$76_γ
    .global proc_EXPR$76_ω
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
proc_EXPR$76_α_body:
# IR_VAR
 xchain570_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain570_n1_α
# IR_ASSIGN gva
 xchain570_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054240], rax
 mov qword ptr [1879054248], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$76_γ
proc_EXPR$76_res:
add rsp, 8
pop rbp
proc_EXPR$76_β:
jmp proc_EXPR$76_ω
proc_EXPR$76_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$76_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$77_α
proc_EXPR$77_α:
#=======================================================================================================================
    .global proc_EXPR$77_α
    .global proc_EXPR$77_β
    .global proc_EXPR$77_γ
    .global proc_EXPR$77_ω
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
proc_EXPR$77_α_body:
# IR_VAR
 xchain573_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain573_n1_α
# IR_ASSIGN gva
 xchain573_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054256], rax
 mov qword ptr [1879054264], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$77_γ
proc_EXPR$77_res:
add rsp, 8
pop rbp
proc_EXPR$77_β:
jmp proc_EXPR$77_ω
proc_EXPR$77_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$77_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$78_α
proc_EXPR$78_α:
#=======================================================================================================================
    .global proc_EXPR$78_α
    .global proc_EXPR$78_β
    .global proc_EXPR$78_γ
    .global proc_EXPR$78_ω
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
proc_EXPR$78_α_body:
# IR_VAR
 xchain576_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain576_n1_α
# IR_ASSIGN gva
 xchain576_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054272], rax
 mov qword ptr [1879054280], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$78_γ
proc_EXPR$78_res:
add rsp, 8
pop rbp
proc_EXPR$78_β:
jmp proc_EXPR$78_ω
proc_EXPR$78_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$78_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$79_α
proc_EXPR$79_α:
#=======================================================================================================================
    .global proc_EXPR$79_α
    .global proc_EXPR$79_β
    .global proc_EXPR$79_γ
    .global proc_EXPR$79_ω
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
proc_EXPR$79_α_body:
# IR_VAR
 xchain579_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain579_n1_α
# IR_ASSIGN gva
 xchain579_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054288], rax
 mov qword ptr [1879054296], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$79_γ
proc_EXPR$79_res:
add rsp, 8
pop rbp
proc_EXPR$79_β:
jmp proc_EXPR$79_ω
proc_EXPR$79_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$79_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$80_α
proc_EXPR$80_α:
#=======================================================================================================================
    .global proc_EXPR$80_α
    .global proc_EXPR$80_β
    .global proc_EXPR$80_γ
    .global proc_EXPR$80_ω
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
proc_EXPR$80_α_body:
 xchain582_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx584_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx584_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx584_6]
 lea rdx, [rip + .Lx584_7]
 jmp rax
.Lx584_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx584_2
.Lx584_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx584_2
.Lx584_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx584_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx584_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx584_3]
 lea rdx, [rip + .Lx584_4]
 jmp rax
.Lx584_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx584_2
.Lx584_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx584_2
.Lx584_1:
 call rt_faildescr@PLT
.Lx584_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$80_ω
 jmp xchain582_n1_α
 xchain582_n0_β:
 jmp proc_EXPR$80_ω
.Lx584_0:
 .quad .Lx584_0_s
.Lx584_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain582_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054304], rax
 mov qword ptr [1879054312], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$80_γ
proc_EXPR$80_res:
add rsp, 8
pop rbp
proc_EXPR$80_β:
jmp proc_EXPR$80_ω
proc_EXPR$80_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$80_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$81_α
proc_EXPR$81_α:
#=======================================================================================================================
    .global proc_EXPR$81_α
    .global proc_EXPR$81_β
    .global proc_EXPR$81_γ
    .global proc_EXPR$81_ω
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
proc_EXPR$81_α_body:
# IR_VAR
 xchain586_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain586_n1_α
# IR_ASSIGN gva
 xchain586_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054320], rax
 mov qword ptr [1879054328], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$81_γ
proc_EXPR$81_res:
add rsp, 8
pop rbp
proc_EXPR$81_β:
jmp proc_EXPR$81_ω
proc_EXPR$81_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$81_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$82_α
proc_EXPR$82_α:
#=======================================================================================================================
    .global proc_EXPR$82_α
    .global proc_EXPR$82_β
    .global proc_EXPR$82_γ
    .global proc_EXPR$82_ω
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
proc_EXPR$82_α_body:
# IR_VAR
 xchain589_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain589_n1_α
# IR_ASSIGN gva
 xchain589_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054336], rax
 mov qword ptr [1879054344], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$82_γ
proc_EXPR$82_res:
add rsp, 8
pop rbp
proc_EXPR$82_β:
jmp proc_EXPR$82_ω
proc_EXPR$82_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$82_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$83_α
proc_EXPR$83_α:
#=======================================================================================================================
    .global proc_EXPR$83_α
    .global proc_EXPR$83_β
    .global proc_EXPR$83_γ
    .global proc_EXPR$83_ω
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
proc_EXPR$83_α_body:
# IR_VAR
 xchain592_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain592_n1_α
# IR_ASSIGN gva
 xchain592_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054352], rax
 mov qword ptr [1879054360], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$83_γ
proc_EXPR$83_res:
add rsp, 8
pop rbp
proc_EXPR$83_β:
jmp proc_EXPR$83_ω
proc_EXPR$83_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$83_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$84_α
proc_EXPR$84_α:
#=======================================================================================================================
    .global proc_EXPR$84_α
    .global proc_EXPR$84_β
    .global proc_EXPR$84_γ
    .global proc_EXPR$84_ω
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
proc_EXPR$84_α_body:
# IR_VAR
 xchain595_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain595_n1_α
# IR_ASSIGN gva
 xchain595_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054368], rax
 mov qword ptr [1879054376], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$84_γ
proc_EXPR$84_res:
add rsp, 8
pop rbp
proc_EXPR$84_β:
jmp proc_EXPR$84_ω
proc_EXPR$84_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$84_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$85_α
proc_EXPR$85_α:
#=======================================================================================================================
    .global proc_EXPR$85_α
    .global proc_EXPR$85_β
    .global proc_EXPR$85_γ
    .global proc_EXPR$85_ω
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
proc_EXPR$85_α_body:
 xchain598_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx600_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx600_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx600_6]
 lea rdx, [rip + .Lx600_7]
 jmp rax
.Lx600_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx600_2
.Lx600_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx600_2
.Lx600_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx600_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx600_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx600_3]
 lea rdx, [rip + .Lx600_4]
 jmp rax
.Lx600_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx600_2
.Lx600_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx600_2
.Lx600_1:
 call rt_faildescr@PLT
.Lx600_2:
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$85_ω
 jmp xchain598_n1_α
 xchain598_n0_β:
 jmp proc_EXPR$85_ω
.Lx600_0:
 .quad .Lx600_0_s
.Lx600_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain598_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054384], rax
 mov qword ptr [1879054392], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$85_γ
proc_EXPR$85_res:
add rsp, 8
pop rbp
proc_EXPR$85_β:
jmp proc_EXPR$85_ω
proc_EXPR$85_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$85_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$86_α
proc_EXPR$86_α:
#=======================================================================================================================
    .global proc_EXPR$86_α
    .global proc_EXPR$86_β
    .global proc_EXPR$86_γ
    .global proc_EXPR$86_ω
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
proc_EXPR$86_α_body:
# IR_VAR
 xchain602_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain602_n1_α
# IR_ASSIGN gva
 xchain602_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054400], rax
 mov qword ptr [1879054408], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$86_γ
proc_EXPR$86_res:
add rsp, 8
pop rbp
proc_EXPR$86_β:
jmp proc_EXPR$86_ω
proc_EXPR$86_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$86_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$87_α
proc_EXPR$87_α:
#=======================================================================================================================
    .global proc_EXPR$87_α
    .global proc_EXPR$87_β
    .global proc_EXPR$87_γ
    .global proc_EXPR$87_ω
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
proc_EXPR$87_α_body:
# IR_VAR
 xchain605_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain605_n1_α
# IR_ASSIGN gva
 xchain605_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054416], rax
 mov qword ptr [1879054424], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$87_γ
proc_EXPR$87_res:
add rsp, 8
pop rbp
proc_EXPR$87_β:
jmp proc_EXPR$87_ω
proc_EXPR$87_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$87_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$88_α
proc_EXPR$88_α:
#=======================================================================================================================
    .global proc_EXPR$88_α
    .global proc_EXPR$88_β
    .global proc_EXPR$88_γ
    .global proc_EXPR$88_ω
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
proc_EXPR$88_α_body:
# IR_VAR
 xchain608_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain608_n1_α
# IR_ASSIGN gva
 xchain608_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054432], rax
 mov qword ptr [1879054440], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$88_γ
proc_EXPR$88_res:
add rsp, 8
pop rbp
proc_EXPR$88_β:
jmp proc_EXPR$88_ω
proc_EXPR$88_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$88_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$89_α
proc_EXPR$89_α:
#=======================================================================================================================
    .global proc_EXPR$89_α
    .global proc_EXPR$89_β
    .global proc_EXPR$89_γ
    .global proc_EXPR$89_ω
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
proc_EXPR$89_α_body:
# IR_VAR
 xchain611_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain611_n1_α
# IR_ASSIGN gva
 xchain611_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054448], rax
 mov qword ptr [1879054456], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$89_γ
proc_EXPR$89_res:
add rsp, 8
pop rbp
proc_EXPR$89_β:
jmp proc_EXPR$89_ω
proc_EXPR$89_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$89_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$90_α
proc_EXPR$90_α:
#=======================================================================================================================
    .global proc_EXPR$90_α
    .global proc_EXPR$90_β
    .global proc_EXPR$90_γ
    .global proc_EXPR$90_ω
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
proc_EXPR$90_α_body:
 xchain614_n0_α:
 sub rsp, 16
 mov rax, qword ptr [1879052576]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052584]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx616_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx616_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx616_6]
 lea rdx, [rip + .Lx616_7]
 jmp rax
.Lx616_6:
 mov rdi, qword ptr [1879052576]
 mov rsi, qword ptr [1879052584]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx616_2
.Lx616_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052576], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052584], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx616_2
.Lx616_5:
 add rsp, 16
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
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 cmp eax, 99
 je proc_EXPR$90_ω
 jmp xchain614_n1_α
 xchain614_n0_β:
 jmp proc_EXPR$90_ω
.Lx616_0:
 .quad .Lx616_0_s
.Lx616_0_s:
 .string "pop_list"
# IR_ASSIGN gva
 xchain614_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054464], rax
 mov qword ptr [1879054472], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$90_γ
proc_EXPR$90_res:
add rsp, 8
pop rbp
proc_EXPR$90_β:
jmp proc_EXPR$90_ω
proc_EXPR$90_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$90_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$91_α
proc_EXPR$91_α:
#=======================================================================================================================
    .global proc_EXPR$91_α
    .global proc_EXPR$91_β
    .global proc_EXPR$91_γ
    .global proc_EXPR$91_ω
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
proc_EXPR$91_α_body:
# IR_VAR
 xchain618_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain618_n1_α
# IR_ASSIGN gva
 xchain618_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054480], rax
 mov qword ptr [1879054488], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$91_γ
proc_EXPR$91_res:
add rsp, 8
pop rbp
proc_EXPR$91_β:
jmp proc_EXPR$91_ω
proc_EXPR$91_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$91_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$92_α
proc_EXPR$92_α:
#=======================================================================================================================
    .global proc_EXPR$92_α
    .global proc_EXPR$92_β
    .global proc_EXPR$92_γ
    .global proc_EXPR$92_ω
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
proc_EXPR$92_α_body:
# IR_VAR
 xchain621_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain621_n1_α
# IR_ASSIGN gva
 xchain621_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054496], rax
 mov qword ptr [1879054504], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$92_γ
proc_EXPR$92_res:
add rsp, 8
pop rbp
proc_EXPR$92_β:
jmp proc_EXPR$92_ω
proc_EXPR$92_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$92_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$93_α
proc_EXPR$93_α:
#=======================================================================================================================
    .global proc_EXPR$93_α
    .global proc_EXPR$93_β
    .global proc_EXPR$93_γ
    .global proc_EXPR$93_ω
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
proc_EXPR$93_α_body:
# IR_VAR
 xchain624_n0_α:
 mov rax, qword ptr [1879052912]
 mov rdx, qword ptr [1879052920]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain624_n1_α
# IR_ASSIGN gva
 xchain624_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054512], rax
 mov qword ptr [1879054520], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$93_γ
proc_EXPR$93_res:
add rsp, 8
pop rbp
proc_EXPR$93_β:
jmp proc_EXPR$93_ω
proc_EXPR$93_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$93_ω:
mov rax, [rbp + 96]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
  .globl proc_EXPR$94_α
proc_EXPR$94_α:
#=======================================================================================================================
    .global proc_EXPR$94_α
    .global proc_EXPR$94_β
    .global proc_EXPR$94_γ
    .global proc_EXPR$94_ω
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
proc_EXPR$94_α_body:
# IR_VAR
 xchain627_n0_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 mov qword ptr [rbp + 32], rax
 mov qword ptr [rbp + 40], rdx
 jmp xchain627_n1_α
# IR_ASSIGN gva
 xchain627_n1_α:
 mov rax, qword ptr [rbp + 32]
 mov rdx, qword ptr [rbp + 40]
 mov qword ptr [1879054528], rax
 mov qword ptr [1879054536], rdx
 mov qword ptr [rbp + 16], rax
 mov qword ptr [rbp + 24], rdx
 jmp proc_EXPR$94_γ
proc_EXPR$94_res:
add rsp, 8
pop rbp
proc_EXPR$94_β:
jmp proc_EXPR$94_ω
proc_EXPR$94_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 88]
lea rsp, [rbp + 112]
mov rbp, [rbp + 104]
jmp rax
proc_EXPR$94_ω:
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
lea rax, [rip + xchain630_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain630_n0_α:
 mov rax, qword ptr [1879054544]
 mov rdx, qword ptr [1879054552]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain630_n1_α
# IR_COERCE_STRING
 xchain630_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain630_n2_α
# IR_MATCH_SPAN
 xchain630_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx635_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx635_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx635_1
 add dword ptr [rsp + 0], 1
 jmp .Lx635_0
.Lx635_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx635_240
 add rsp, 16
 jmp proc_PAT$0_scanfail
.Lx635_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$0_scanhit
 xchain630_n2_β:
 xchain630_n2_β:
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
lea rax, [rip + xchain636_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain636_n0_α:
 mov rax, qword ptr [1879054576]
 mov rdx, qword ptr [1879054584]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain636_n1_α
 xchain636_n0_β:
 jmp proc_PAT$1_scanfail
# IR_COERCE_STRING
 xchain636_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain636_n2_α
 xchain636_n1_β:
 jmp proc_PAT$1_scanfail
# IR_VAR
 xchain636_n2_α:
 mov rax, qword ptr [1879054560]
 mov rdx, qword ptr [1879054568]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain636_n3_α
 xchain636_n2_β:
 jmp proc_PAT$1_scanfail
# IR_COERCE_STRING
 xchain636_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain636_n4_α
 xchain636_n3_β:
 jmp proc_PAT$1_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain636_n4_α:
 jmp xchain636_n5_α
xchain636_n4_as:
 jmp proc_PAT$1_γ
 xchain636_n4_β:
 jmp xchain636_n6_β
xchain636_n4_af:
 jmp proc_PAT$1_ω
# IR_MATCH_NOTANY
 xchain636_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain636_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain636_n4_af
 add r14d, 1
 jmp xchain636_n6_α
 xchain636_n5_β:
 sub r14d, 1
 jmp xchain636_n4_af
# IR_MATCH_BREAK
 xchain636_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx647_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx647_240
 add rsp, 16
 jmp xchain636_n5_β
.Lx647_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx647_1
 add dword ptr [rsp + 0], 1
 jmp .Lx647_0
.Lx647_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain636_n4_as
 xchain636_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain636_n5_β
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
proc_PAT$2_attempt:
proc_PAT$2_α_body:
lea rax, [rip + xchain648_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain648_n0_α:
 mov rax, qword ptr [1879054592]
 mov rdx, qword ptr [1879054600]
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
 jmp proc_PAT$2_scanfail
.Lx653_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$2_scanhit
 xchain648_n2_β:
 xchain648_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$2_scanfail
proc_PAT$2_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$2_γ
proc_PAT$2_scanfail:
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
jmp proc_PAT$2_attempt
8:
jmp proc_PAT$2_ω
proc_PAT$2_res:
add rsp, 8
pop rbp
proc_PAT$2_β:
jmp qword ptr [rbp + 112]
proc_PAT$2_γ:
push rbp
lea rax, [rip + proc_PAT$2_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$2_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$3_α
proc_PAT$3_α:
#=======================================================================================================================
    .global proc_PAT$3_α
    .global proc_PAT$3_β
    .global proc_PAT$3_γ
    .global proc_PAT$3_ω
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
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + xchain654_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain654_n0_α:
 mov rax, qword ptr [1879054624]
 mov rdx, qword ptr [1879054632]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain654_n1_α
 xchain654_n0_β:
 jmp proc_PAT$3_scanfail
# IR_COERCE_STRING
 xchain654_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain654_n2_α
 xchain654_n1_β:
 jmp proc_PAT$3_scanfail
# IR_VAR
 xchain654_n2_α:
 mov rax, qword ptr [1879054608]
 mov rdx, qword ptr [1879054616]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain654_n3_α
 xchain654_n2_β:
 jmp proc_PAT$3_scanfail
# IR_COERCE_STRING
 xchain654_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain654_n4_α
 xchain654_n3_β:
 jmp proc_PAT$3_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain654_n4_α:
 jmp xchain654_n5_α
xchain654_n4_as:
 jmp proc_PAT$3_γ
 xchain654_n4_β:
 jmp xchain654_n6_β
xchain654_n4_af:
 jmp proc_PAT$3_ω
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
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
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
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 224]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
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
lea rax, [rip + xchain666_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain666_n0_α:
 mov rax, qword ptr [1879054640]
 mov rdx, qword ptr [1879054648]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain666_n1_α
# IR_COERCE_STRING
 xchain666_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain666_n2_α
# IR_MATCH_SPAN
 xchain666_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx671_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx671_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx671_1
 add dword ptr [rsp + 0], 1
 jmp .Lx671_0
.Lx671_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx671_240
 add rsp, 16
 jmp proc_PAT$4_scanfail
.Lx671_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$4_scanhit
 xchain666_n2_β:
 xchain666_n2_β:
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
lea rax, [rip + xchain672_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain672_n0_α:
 mov rax, qword ptr [1879054672]
 mov rdx, qword ptr [1879054680]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain672_n1_α
 xchain672_n0_β:
 jmp proc_PAT$5_scanfail
# IR_COERCE_STRING
 xchain672_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain672_n2_α
 xchain672_n1_β:
 jmp proc_PAT$5_scanfail
# IR_VAR
 xchain672_n2_α:
 mov rax, qword ptr [1879054656]
 mov rdx, qword ptr [1879054664]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain672_n3_α
 xchain672_n2_β:
 jmp proc_PAT$5_scanfail
# IR_COERCE_STRING
 xchain672_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain672_n4_α
 xchain672_n3_β:
 jmp proc_PAT$5_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain672_n4_α:
 jmp xchain672_n5_α
xchain672_n4_as:
 jmp proc_PAT$5_γ
 xchain672_n4_β:
 jmp xchain672_n6_β
xchain672_n4_af:
 jmp proc_PAT$5_ω
# IR_MATCH_NOTANY
 xchain672_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain672_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain672_n4_af
 add r14d, 1
 jmp xchain672_n6_α
 xchain672_n5_β:
 sub r14d, 1
 jmp xchain672_n4_af
# IR_MATCH_BREAK
 xchain672_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx683_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx683_240
 add rsp, 16
 jmp xchain672_n5_β
.Lx683_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx683_1
 add dword ptr [rsp + 0], 1
 jmp .Lx683_0
.Lx683_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain672_n4_as
 xchain672_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain672_n5_β
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
lea rax, [rip + xchain684_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain684_n0_α:
 mov rax, qword ptr [1879054688]
 mov rdx, qword ptr [1879054696]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain684_n1_α
# IR_COERCE_STRING
 xchain684_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain684_n2_α
# IR_MATCH_SPAN
 xchain684_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx689_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx689_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx689_1
 add dword ptr [rsp + 0], 1
 jmp .Lx689_0
.Lx689_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx689_240
 add rsp, 16
 jmp proc_PAT$6_scanfail
.Lx689_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$6_scanhit
 xchain684_n2_β:
 xchain684_n2_β:
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
lea rax, [rip + xchain690_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain690_n0_α:
 mov rax, qword ptr [1879054720]
 mov rdx, qword ptr [1879054728]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain690_n1_α
 xchain690_n0_β:
 jmp proc_PAT$7_scanfail
# IR_COERCE_STRING
 xchain690_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain690_n2_α
 xchain690_n1_β:
 jmp proc_PAT$7_scanfail
# IR_VAR
 xchain690_n2_α:
 mov rax, qword ptr [1879054704]
 mov rdx, qword ptr [1879054712]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain690_n3_α
 xchain690_n2_β:
 jmp proc_PAT$7_scanfail
# IR_COERCE_STRING
 xchain690_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain690_n4_α
 xchain690_n3_β:
 jmp proc_PAT$7_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain690_n4_α:
 jmp xchain690_n5_α
xchain690_n4_as:
 jmp proc_PAT$7_γ
 xchain690_n4_β:
 jmp xchain690_n6_β
xchain690_n4_af:
 jmp proc_PAT$7_ω
# IR_MATCH_NOTANY
 xchain690_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain690_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain690_n4_af
 add r14d, 1
 jmp xchain690_n6_α
 xchain690_n5_β:
 sub r14d, 1
 jmp xchain690_n4_af
# IR_MATCH_BREAK
 xchain690_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx701_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx701_240
 add rsp, 16
 jmp xchain690_n5_β
.Lx701_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx701_1
 add dword ptr [rsp + 0], 1
 jmp .Lx701_0
.Lx701_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain690_n4_as
 xchain690_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain690_n5_β
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
lea rax, [rip + xchain702_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain702_n0_α:
 mov rax, qword ptr [1879054736]
 mov rdx, qword ptr [1879054744]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain702_n1_α
# IR_COERCE_STRING
 xchain702_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain702_n2_α
# IR_MATCH_SPAN
 xchain702_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx707_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx707_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx707_1
 add dword ptr [rsp + 0], 1
 jmp .Lx707_0
.Lx707_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx707_240
 add rsp, 16
 jmp proc_PAT$8_scanfail
.Lx707_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$8_scanhit
 xchain702_n2_β:
 xchain702_n2_β:
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
lea rax, [rip + xchain708_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain708_n0_α:
 mov rax, qword ptr [1879054768]
 mov rdx, qword ptr [1879054776]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain708_n1_α
 xchain708_n0_β:
 jmp proc_PAT$9_scanfail
# IR_COERCE_STRING
 xchain708_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain708_n2_α
 xchain708_n1_β:
 jmp proc_PAT$9_scanfail
# IR_VAR
 xchain708_n2_α:
 mov rax, qword ptr [1879054752]
 mov rdx, qword ptr [1879054760]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain708_n3_α
 xchain708_n2_β:
 jmp proc_PAT$9_scanfail
# IR_COERCE_STRING
 xchain708_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain708_n4_α
 xchain708_n3_β:
 jmp proc_PAT$9_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain708_n4_α:
 jmp xchain708_n5_α
xchain708_n4_as:
 jmp proc_PAT$9_γ
 xchain708_n4_β:
 jmp xchain708_n6_β
xchain708_n4_af:
 jmp proc_PAT$9_ω
# IR_MATCH_NOTANY
 xchain708_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain708_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain708_n4_af
 add r14d, 1
 jmp xchain708_n6_α
 xchain708_n5_β:
 sub r14d, 1
 jmp xchain708_n4_af
# IR_MATCH_BREAK
 xchain708_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx719_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx719_240
 add rsp, 16
 jmp xchain708_n5_β
.Lx719_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx719_1
 add dword ptr [rsp + 0], 1
 jmp .Lx719_0
.Lx719_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain708_n4_as
 xchain708_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain708_n5_β
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
proc_PAT$10_attempt:
proc_PAT$10_α_body:
lea rax, [rip + xchain720_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain720_n0_α:
 mov rax, qword ptr [1879054784]
 mov rdx, qword ptr [1879054792]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain720_n1_α
# IR_COERCE_STRING
 xchain720_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain720_n2_α
# IR_MATCH_SPAN
 xchain720_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx725_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx725_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx725_1
 add dword ptr [rsp + 0], 1
 jmp .Lx725_0
.Lx725_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx725_240
 add rsp, 16
 jmp proc_PAT$10_scanfail
.Lx725_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$10_scanhit
 xchain720_n2_β:
 xchain720_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$10_scanfail
proc_PAT$10_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$10_γ
proc_PAT$10_scanfail:
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
jmp proc_PAT$10_attempt
8:
jmp proc_PAT$10_ω
proc_PAT$10_res:
add rsp, 8
pop rbp
proc_PAT$10_β:
jmp qword ptr [rbp + 112]
proc_PAT$10_γ:
push rbp
lea rax, [rip + proc_PAT$10_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$10_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$11_α
proc_PAT$11_α:
#=======================================================================================================================
    .global proc_PAT$11_α
    .global proc_PAT$11_β
    .global proc_PAT$11_γ
    .global proc_PAT$11_ω
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
proc_PAT$11_attempt:
proc_PAT$11_α_body:
lea rax, [rip + xchain726_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain726_n0_α:
 mov rax, qword ptr [1879054816]
 mov rdx, qword ptr [1879054824]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain726_n1_α
 xchain726_n0_β:
 jmp proc_PAT$11_scanfail
# IR_COERCE_STRING
 xchain726_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain726_n2_α
 xchain726_n1_β:
 jmp proc_PAT$11_scanfail
# IR_VAR
 xchain726_n2_α:
 mov rax, qword ptr [1879054800]
 mov rdx, qword ptr [1879054808]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain726_n3_α
 xchain726_n2_β:
 jmp proc_PAT$11_scanfail
# IR_COERCE_STRING
 xchain726_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain726_n4_α
 xchain726_n3_β:
 jmp proc_PAT$11_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain726_n4_α:
 jmp xchain726_n5_α
xchain726_n4_as:
 jmp proc_PAT$11_γ
 xchain726_n4_β:
 jmp xchain726_n6_β
xchain726_n4_af:
 jmp proc_PAT$11_ω
# IR_MATCH_NOTANY
 xchain726_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain726_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain726_n4_af
 add r14d, 1
 jmp xchain726_n6_α
 xchain726_n5_β:
 sub r14d, 1
 jmp xchain726_n4_af
# IR_MATCH_BREAK
 xchain726_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx737_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx737_240
 add rsp, 16
 jmp xchain726_n5_β
.Lx737_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx737_1
 add dword ptr [rsp + 0], 1
 jmp .Lx737_0
.Lx737_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain726_n4_as
 xchain726_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain726_n5_β
proc_PAT$11_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$11_γ
proc_PAT$11_scanfail:
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
jmp proc_PAT$11_attempt
8:
jmp proc_PAT$11_ω
proc_PAT$11_res:
add rsp, 8
pop rbp
proc_PAT$11_β:
jmp qword ptr [rbp + 224]
proc_PAT$11_γ:
push rbp
lea rax, [rip + proc_PAT$11_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$11_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
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
lea rax, [rip + xchain738_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain738_n0_α:
 mov rax, qword ptr [1879054832]
 mov rdx, qword ptr [1879054840]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain738_n1_α
# IR_COERCE_STRING
 xchain738_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain738_n2_α
# IR_MATCH_SPAN
 xchain738_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx743_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx743_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx743_1
 add dword ptr [rsp + 0], 1
 jmp .Lx743_0
.Lx743_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx743_240
 add rsp, 16
 jmp proc_PAT$12_scanfail
.Lx743_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$12_scanhit
 xchain738_n2_β:
 xchain738_n2_β:
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
lea rax, [rip + xchain744_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain744_n0_α:
 mov rax, qword ptr [1879054864]
 mov rdx, qword ptr [1879054872]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain744_n1_α
 xchain744_n0_β:
 jmp proc_PAT$13_scanfail
# IR_COERCE_STRING
 xchain744_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain744_n2_α
 xchain744_n1_β:
 jmp proc_PAT$13_scanfail
# IR_VAR
 xchain744_n2_α:
 mov rax, qword ptr [1879054848]
 mov rdx, qword ptr [1879054856]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain744_n3_α
 xchain744_n2_β:
 jmp proc_PAT$13_scanfail
# IR_COERCE_STRING
 xchain744_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain744_n4_α
 xchain744_n3_β:
 jmp proc_PAT$13_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain744_n4_α:
 jmp xchain744_n5_α
xchain744_n4_as:
 jmp proc_PAT$13_γ
 xchain744_n4_β:
 jmp xchain744_n6_β
xchain744_n4_af:
 jmp proc_PAT$13_ω
# IR_MATCH_NOTANY
 xchain744_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain744_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain744_n4_af
 add r14d, 1
 jmp xchain744_n6_α
 xchain744_n5_β:
 sub r14d, 1
 jmp xchain744_n4_af
# IR_MATCH_BREAK
 xchain744_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx755_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx755_240
 add rsp, 16
 jmp xchain744_n5_β
.Lx755_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx755_1
 add dword ptr [rsp + 0], 1
 jmp .Lx755_0
.Lx755_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain744_n4_as
 xchain744_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain744_n5_β
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
proc_PAT$14_attempt:
proc_PAT$14_α_body:
lea rax, [rip + xchain756_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain756_n0_α:
 mov rax, qword ptr [1879054880]
 mov rdx, qword ptr [1879054888]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain756_n1_α
# IR_COERCE_STRING
 xchain756_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain756_n2_α
# IR_MATCH_SPAN
 xchain756_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx761_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx761_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx761_1
 add dword ptr [rsp + 0], 1
 jmp .Lx761_0
.Lx761_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx761_240
 add rsp, 16
 jmp proc_PAT$14_scanfail
.Lx761_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$14_scanhit
 xchain756_n2_β:
 xchain756_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$14_scanfail
proc_PAT$14_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$14_γ
proc_PAT$14_scanfail:
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
jmp proc_PAT$14_attempt
8:
jmp proc_PAT$14_ω
proc_PAT$14_res:
add rsp, 8
pop rbp
proc_PAT$14_β:
jmp qword ptr [rbp + 112]
proc_PAT$14_γ:
push rbp
lea rax, [rip + proc_PAT$14_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$14_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$15_α
proc_PAT$15_α:
#=======================================================================================================================
    .global proc_PAT$15_α
    .global proc_PAT$15_β
    .global proc_PAT$15_γ
    .global proc_PAT$15_ω
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
proc_PAT$15_attempt:
proc_PAT$15_α_body:
lea rax, [rip + xchain762_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain762_n0_α:
 mov rax, qword ptr [1879054912]
 mov rdx, qword ptr [1879054920]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain762_n1_α
 xchain762_n0_β:
 jmp proc_PAT$15_scanfail
# IR_COERCE_STRING
 xchain762_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain762_n2_α
 xchain762_n1_β:
 jmp proc_PAT$15_scanfail
# IR_VAR
 xchain762_n2_α:
 mov rax, qword ptr [1879054896]
 mov rdx, qword ptr [1879054904]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain762_n3_α
 xchain762_n2_β:
 jmp proc_PAT$15_scanfail
# IR_COERCE_STRING
 xchain762_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain762_n4_α
 xchain762_n3_β:
 jmp proc_PAT$15_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain762_n4_α:
 jmp xchain762_n5_α
xchain762_n4_as:
 jmp proc_PAT$15_γ
 xchain762_n4_β:
 jmp xchain762_n6_β
xchain762_n4_af:
 jmp proc_PAT$15_ω
# IR_MATCH_NOTANY
 xchain762_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain762_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain762_n4_af
 add r14d, 1
 jmp xchain762_n6_α
 xchain762_n5_β:
 sub r14d, 1
 jmp xchain762_n4_af
# IR_MATCH_BREAK
 xchain762_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx773_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx773_240
 add rsp, 16
 jmp xchain762_n5_β
.Lx773_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx773_1
 add dword ptr [rsp + 0], 1
 jmp .Lx773_0
.Lx773_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain762_n4_as
 xchain762_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain762_n5_β
proc_PAT$15_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$15_γ
proc_PAT$15_scanfail:
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
jmp proc_PAT$15_attempt
8:
jmp proc_PAT$15_ω
proc_PAT$15_res:
add rsp, 8
pop rbp
proc_PAT$15_β:
jmp qword ptr [rbp + 224]
proc_PAT$15_γ:
push rbp
lea rax, [rip + proc_PAT$15_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$15_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
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
lea rax, [rip + xchain774_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain774_n0_α:
 mov rax, qword ptr [1879054928]
 mov rdx, qword ptr [1879054936]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain774_n1_α
# IR_COERCE_STRING
 xchain774_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain774_n2_α
# IR_MATCH_SPAN
 xchain774_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx779_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx779_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx779_1
 add dword ptr [rsp + 0], 1
 jmp .Lx779_0
.Lx779_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx779_240
 add rsp, 16
 jmp proc_PAT$16_scanfail
.Lx779_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$16_scanhit
 xchain774_n2_β:
 xchain774_n2_β:
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
lea rax, [rip + xchain780_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain780_n0_α:
 mov rax, qword ptr [1879054960]
 mov rdx, qword ptr [1879054968]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain780_n1_α
 xchain780_n0_β:
 jmp proc_PAT$17_scanfail
# IR_COERCE_STRING
 xchain780_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain780_n2_α
 xchain780_n1_β:
 jmp proc_PAT$17_scanfail
# IR_VAR
 xchain780_n2_α:
 mov rax, qword ptr [1879054944]
 mov rdx, qword ptr [1879054952]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain780_n3_α
 xchain780_n2_β:
 jmp proc_PAT$17_scanfail
# IR_COERCE_STRING
 xchain780_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain780_n4_α
 xchain780_n3_β:
 jmp proc_PAT$17_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain780_n4_α:
 jmp xchain780_n5_α
xchain780_n4_as:
 jmp proc_PAT$17_γ
 xchain780_n4_β:
 jmp xchain780_n6_β
xchain780_n4_af:
 jmp proc_PAT$17_ω
# IR_MATCH_NOTANY
 xchain780_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain780_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain780_n4_af
 add r14d, 1
 jmp xchain780_n6_α
 xchain780_n5_β:
 sub r14d, 1
 jmp xchain780_n4_af
# IR_MATCH_BREAK
 xchain780_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx791_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx791_240
 add rsp, 16
 jmp xchain780_n5_β
.Lx791_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx791_1
 add dword ptr [rsp + 0], 1
 jmp .Lx791_0
.Lx791_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain780_n4_as
 xchain780_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain780_n5_β
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
lea rax, [rip + xchain792_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain792_n0_α:
 mov rax, qword ptr [1879054976]
 mov rdx, qword ptr [1879054984]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain792_n1_α
# IR_COERCE_STRING
 xchain792_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain792_n2_α
# IR_MATCH_SPAN
 xchain792_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx797_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx797_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx797_1
 add dword ptr [rsp + 0], 1
 jmp .Lx797_0
.Lx797_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx797_240
 add rsp, 16
 jmp proc_PAT$18_scanfail
.Lx797_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$18_scanhit
 xchain792_n2_β:
 xchain792_n2_β:
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
lea rax, [rip + xchain798_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain798_n0_α:
 mov rax, qword ptr [1879055008]
 mov rdx, qword ptr [1879055016]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain798_n1_α
 xchain798_n0_β:
 jmp proc_PAT$19_scanfail
# IR_COERCE_STRING
 xchain798_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain798_n2_α
 xchain798_n1_β:
 jmp proc_PAT$19_scanfail
# IR_VAR
 xchain798_n2_α:
 mov rax, qword ptr [1879054992]
 mov rdx, qword ptr [1879055000]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain798_n3_α
 xchain798_n2_β:
 jmp proc_PAT$19_scanfail
# IR_COERCE_STRING
 xchain798_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain798_n4_α
 xchain798_n3_β:
 jmp proc_PAT$19_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain798_n4_α:
 jmp xchain798_n5_α
xchain798_n4_as:
 jmp proc_PAT$19_γ
 xchain798_n4_β:
 jmp xchain798_n6_β
xchain798_n4_af:
 jmp proc_PAT$19_ω
# IR_MATCH_NOTANY
 xchain798_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain798_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain798_n4_af
 add r14d, 1
 jmp xchain798_n6_α
 xchain798_n5_β:
 sub r14d, 1
 jmp xchain798_n4_af
# IR_MATCH_BREAK
 xchain798_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx809_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx809_240
 add rsp, 16
 jmp xchain798_n5_β
.Lx809_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx809_1
 add dword ptr [rsp + 0], 1
 jmp .Lx809_0
.Lx809_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain798_n4_as
 xchain798_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain798_n5_β
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
lea rax, [rip + xchain810_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain810_n0_α:
 mov rax, qword ptr [1879055024]
 mov rdx, qword ptr [1879055032]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain810_n1_α
# IR_COERCE_STRING
 xchain810_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain810_n2_α
# IR_MATCH_SPAN
 xchain810_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx815_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx815_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx815_1
 add dword ptr [rsp + 0], 1
 jmp .Lx815_0
.Lx815_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx815_240
 add rsp, 16
 jmp proc_PAT$20_scanfail
.Lx815_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$20_scanhit
 xchain810_n2_β:
 xchain810_n2_β:
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
lea rax, [rip + xchain816_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain816_n0_α:
 mov rax, qword ptr [1879055056]
 mov rdx, qword ptr [1879055064]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain816_n1_α
 xchain816_n0_β:
 jmp proc_PAT$21_scanfail
# IR_COERCE_STRING
 xchain816_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain816_n2_α
 xchain816_n1_β:
 jmp proc_PAT$21_scanfail
# IR_VAR
 xchain816_n2_α:
 mov rax, qword ptr [1879055040]
 mov rdx, qword ptr [1879055048]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain816_n3_α
 xchain816_n2_β:
 jmp proc_PAT$21_scanfail
# IR_COERCE_STRING
 xchain816_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain816_n4_α
 xchain816_n3_β:
 jmp proc_PAT$21_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain816_n4_α:
 jmp xchain816_n5_α
xchain816_n4_as:
 jmp proc_PAT$21_γ
 xchain816_n4_β:
 jmp xchain816_n6_β
xchain816_n4_af:
 jmp proc_PAT$21_ω
# IR_MATCH_NOTANY
 xchain816_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain816_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain816_n4_af
 add r14d, 1
 jmp xchain816_n6_α
 xchain816_n5_β:
 sub r14d, 1
 jmp xchain816_n4_af
# IR_MATCH_BREAK
 xchain816_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx827_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx827_240
 add rsp, 16
 jmp xchain816_n5_β
.Lx827_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx827_1
 add dword ptr [rsp + 0], 1
 jmp .Lx827_0
.Lx827_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain816_n4_as
 xchain816_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain816_n5_β
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
proc_PAT$22_attempt:
proc_PAT$22_α_body:
lea rax, [rip + xchain828_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain828_n0_α:
 mov rax, qword ptr [1879055072]
 mov rdx, qword ptr [1879055080]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain828_n1_α
# IR_COERCE_STRING
 xchain828_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain828_n2_α
# IR_MATCH_SPAN
 xchain828_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx833_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx833_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx833_1
 add dword ptr [rsp + 0], 1
 jmp .Lx833_0
.Lx833_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx833_240
 add rsp, 16
 jmp proc_PAT$22_scanfail
.Lx833_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$22_scanhit
 xchain828_n2_β:
 xchain828_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$22_scanfail
proc_PAT$22_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$22_γ
proc_PAT$22_scanfail:
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
jmp proc_PAT$22_attempt
8:
jmp proc_PAT$22_ω
proc_PAT$22_res:
add rsp, 8
pop rbp
proc_PAT$22_β:
jmp qword ptr [rbp + 112]
proc_PAT$22_γ:
push rbp
lea rax, [rip + proc_PAT$22_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$22_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$23_α
proc_PAT$23_α:
#=======================================================================================================================
    .global proc_PAT$23_α
    .global proc_PAT$23_β
    .global proc_PAT$23_γ
    .global proc_PAT$23_ω
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
proc_PAT$23_attempt:
proc_PAT$23_α_body:
lea rax, [rip + xchain834_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain834_n0_α:
 mov rax, qword ptr [1879055104]
 mov rdx, qword ptr [1879055112]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain834_n1_α
 xchain834_n0_β:
 jmp proc_PAT$23_scanfail
# IR_COERCE_STRING
 xchain834_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain834_n2_α
 xchain834_n1_β:
 jmp proc_PAT$23_scanfail
# IR_VAR
 xchain834_n2_α:
 mov rax, qword ptr [1879055088]
 mov rdx, qword ptr [1879055096]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain834_n3_α
 xchain834_n2_β:
 jmp proc_PAT$23_scanfail
# IR_COERCE_STRING
 xchain834_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain834_n4_α
 xchain834_n3_β:
 jmp proc_PAT$23_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain834_n4_α:
 jmp xchain834_n5_α
xchain834_n4_as:
 jmp proc_PAT$23_γ
 xchain834_n4_β:
 jmp xchain834_n6_β
xchain834_n4_af:
 jmp proc_PAT$23_ω
# IR_MATCH_NOTANY
 xchain834_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain834_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain834_n4_af
 add r14d, 1
 jmp xchain834_n6_α
 xchain834_n5_β:
 sub r14d, 1
 jmp xchain834_n4_af
# IR_MATCH_BREAK
 xchain834_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx845_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx845_240
 add rsp, 16
 jmp xchain834_n5_β
.Lx845_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx845_1
 add dword ptr [rsp + 0], 1
 jmp .Lx845_0
.Lx845_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain834_n4_as
 xchain834_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain834_n5_β
proc_PAT$23_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$23_γ
proc_PAT$23_scanfail:
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
jmp proc_PAT$23_attempt
8:
jmp proc_PAT$23_ω
proc_PAT$23_res:
add rsp, 8
pop rbp
proc_PAT$23_β:
jmp qword ptr [rbp + 224]
proc_PAT$23_γ:
push rbp
lea rax, [rip + proc_PAT$23_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$23_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
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
lea rax, [rip + xchain846_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain846_n0_α:
 mov rax, qword ptr [1879055120]
 mov rdx, qword ptr [1879055128]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain846_n1_α
# IR_COERCE_STRING
 xchain846_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain846_n2_α
# IR_MATCH_SPAN
 xchain846_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx851_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx851_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx851_1
 add dword ptr [rsp + 0], 1
 jmp .Lx851_0
.Lx851_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx851_240
 add rsp, 16
 jmp proc_PAT$24_scanfail
.Lx851_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$24_scanhit
 xchain846_n2_β:
 xchain846_n2_β:
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
lea rax, [rip + xchain852_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain852_n0_α:
 mov rax, qword ptr [1879055152]
 mov rdx, qword ptr [1879055160]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain852_n1_α
 xchain852_n0_β:
 jmp proc_PAT$25_scanfail
# IR_COERCE_STRING
 xchain852_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain852_n2_α
 xchain852_n1_β:
 jmp proc_PAT$25_scanfail
# IR_VAR
 xchain852_n2_α:
 mov rax, qword ptr [1879055136]
 mov rdx, qword ptr [1879055144]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain852_n3_α
 xchain852_n2_β:
 jmp proc_PAT$25_scanfail
# IR_COERCE_STRING
 xchain852_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain852_n4_α
 xchain852_n3_β:
 jmp proc_PAT$25_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain852_n4_α:
 jmp xchain852_n5_α
xchain852_n4_as:
 jmp proc_PAT$25_γ
 xchain852_n4_β:
 jmp xchain852_n6_β
xchain852_n4_af:
 jmp proc_PAT$25_ω
# IR_MATCH_NOTANY
 xchain852_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain852_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain852_n4_af
 add r14d, 1
 jmp xchain852_n6_α
 xchain852_n5_β:
 sub r14d, 1
 jmp xchain852_n4_af
# IR_MATCH_BREAK
 xchain852_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx863_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx863_240
 add rsp, 16
 jmp xchain852_n5_β
.Lx863_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx863_1
 add dword ptr [rsp + 0], 1
 jmp .Lx863_0
.Lx863_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain852_n4_as
 xchain852_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain852_n5_β
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
lea rax, [rip + xchain864_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain864_n0_α:
 mov rax, qword ptr [1879055168]
 mov rdx, qword ptr [1879055176]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain864_n1_α
# IR_COERCE_STRING
 xchain864_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain864_n2_α
# IR_MATCH_SPAN
 xchain864_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx869_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx869_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx869_1
 add dword ptr [rsp + 0], 1
 jmp .Lx869_0
.Lx869_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx869_240
 add rsp, 16
 jmp proc_PAT$26_scanfail
.Lx869_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$26_scanhit
 xchain864_n2_β:
 xchain864_n2_β:
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
lea rax, [rip + xchain870_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain870_n0_α:
 mov rax, qword ptr [1879055200]
 mov rdx, qword ptr [1879055208]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain870_n1_α
 xchain870_n0_β:
 jmp proc_PAT$27_scanfail
# IR_COERCE_STRING
 xchain870_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain870_n2_α
 xchain870_n1_β:
 jmp proc_PAT$27_scanfail
# IR_VAR
 xchain870_n2_α:
 mov rax, qword ptr [1879055184]
 mov rdx, qword ptr [1879055192]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain870_n3_α
 xchain870_n2_β:
 jmp proc_PAT$27_scanfail
# IR_COERCE_STRING
 xchain870_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain870_n4_α
 xchain870_n3_β:
 jmp proc_PAT$27_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain870_n4_α:
 jmp xchain870_n5_α
xchain870_n4_as:
 jmp proc_PAT$27_γ
 xchain870_n4_β:
 jmp xchain870_n6_β
xchain870_n4_af:
 jmp proc_PAT$27_ω
# IR_MATCH_NOTANY
 xchain870_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain870_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain870_n4_af
 add r14d, 1
 jmp xchain870_n6_α
 xchain870_n5_β:
 sub r14d, 1
 jmp xchain870_n4_af
# IR_MATCH_BREAK
 xchain870_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx881_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx881_240
 add rsp, 16
 jmp xchain870_n5_β
.Lx881_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx881_1
 add dword ptr [rsp + 0], 1
 jmp .Lx881_0
.Lx881_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain870_n4_as
 xchain870_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain870_n5_β
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
lea rax, [rip + xchain882_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain882_n0_α:
 mov rax, qword ptr [1879055216]
 mov rdx, qword ptr [1879055224]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain882_n1_α
# IR_COERCE_STRING
 xchain882_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain882_n2_α
# IR_MATCH_SPAN
 xchain882_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx887_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx887_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx887_1
 add dword ptr [rsp + 0], 1
 jmp .Lx887_0
.Lx887_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx887_240
 add rsp, 16
 jmp proc_PAT$28_scanfail
.Lx887_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$28_scanhit
 xchain882_n2_β:
 xchain882_n2_β:
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
lea rax, [rip + xchain888_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain888_n0_α:
 mov rax, qword ptr [1879055248]
 mov rdx, qword ptr [1879055256]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain888_n1_α
 xchain888_n0_β:
 jmp proc_PAT$29_scanfail
# IR_COERCE_STRING
 xchain888_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain888_n2_α
 xchain888_n1_β:
 jmp proc_PAT$29_scanfail
# IR_VAR
 xchain888_n2_α:
 mov rax, qword ptr [1879055232]
 mov rdx, qword ptr [1879055240]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain888_n3_α
 xchain888_n2_β:
 jmp proc_PAT$29_scanfail
# IR_COERCE_STRING
 xchain888_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain888_n4_α
 xchain888_n3_β:
 jmp proc_PAT$29_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain888_n4_α:
 jmp xchain888_n5_α
xchain888_n4_as:
 jmp proc_PAT$29_γ
 xchain888_n4_β:
 jmp xchain888_n6_β
xchain888_n4_af:
 jmp proc_PAT$29_ω
# IR_MATCH_NOTANY
 xchain888_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain888_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain888_n4_af
 add r14d, 1
 jmp xchain888_n6_α
 xchain888_n5_β:
 sub r14d, 1
 jmp xchain888_n4_af
# IR_MATCH_BREAK
 xchain888_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx899_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx899_240
 add rsp, 16
 jmp xchain888_n5_β
.Lx899_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx899_1
 add dword ptr [rsp + 0], 1
 jmp .Lx899_0
.Lx899_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain888_n4_as
 xchain888_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain888_n5_β
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
lea rax, [rip + xchain900_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain900_n0_α:
 mov rax, qword ptr [1879055264]
 mov rdx, qword ptr [1879055272]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain900_n1_α
# IR_COERCE_STRING
 xchain900_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain900_n2_α
# IR_MATCH_SPAN
 xchain900_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx905_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx905_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx905_1
 add dword ptr [rsp + 0], 1
 jmp .Lx905_0
.Lx905_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx905_240
 add rsp, 16
 jmp proc_PAT$30_scanfail
.Lx905_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$30_scanhit
 xchain900_n2_β:
 xchain900_n2_β:
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
lea rax, [rip + xchain906_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain906_n0_α:
 mov rax, qword ptr [1879055296]
 mov rdx, qword ptr [1879055304]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain906_n1_α
 xchain906_n0_β:
 jmp proc_PAT$31_scanfail
# IR_COERCE_STRING
 xchain906_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain906_n2_α
 xchain906_n1_β:
 jmp proc_PAT$31_scanfail
# IR_VAR
 xchain906_n2_α:
 mov rax, qword ptr [1879055280]
 mov rdx, qword ptr [1879055288]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain906_n3_α
 xchain906_n2_β:
 jmp proc_PAT$31_scanfail
# IR_COERCE_STRING
 xchain906_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain906_n4_α
 xchain906_n3_β:
 jmp proc_PAT$31_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain906_n4_α:
 jmp xchain906_n5_α
xchain906_n4_as:
 jmp proc_PAT$31_γ
 xchain906_n4_β:
 jmp xchain906_n6_β
xchain906_n4_af:
 jmp proc_PAT$31_ω
# IR_MATCH_NOTANY
 xchain906_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain906_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain906_n4_af
 add r14d, 1
 jmp xchain906_n6_α
 xchain906_n5_β:
 sub r14d, 1
 jmp xchain906_n4_af
# IR_MATCH_BREAK
 xchain906_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx917_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx917_240
 add rsp, 16
 jmp xchain906_n5_β
.Lx917_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx917_1
 add dword ptr [rsp + 0], 1
 jmp .Lx917_0
.Lx917_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain906_n4_as
 xchain906_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain906_n5_β
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
lea rax, [rip + xchain918_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain918_n0_α:
 mov rax, qword ptr [1879055312]
 mov rdx, qword ptr [1879055320]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain918_n1_α
# IR_COERCE_STRING
 xchain918_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain918_n2_α
# IR_MATCH_SPAN
 xchain918_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx923_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx923_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx923_1
 add dword ptr [rsp + 0], 1
 jmp .Lx923_0
.Lx923_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx923_240
 add rsp, 16
 jmp proc_PAT$32_scanfail
.Lx923_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$32_scanhit
 xchain918_n2_β:
 xchain918_n2_β:
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
lea rax, [rip + xchain924_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain924_n0_α:
 mov rax, qword ptr [1879055344]
 mov rdx, qword ptr [1879055352]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain924_n1_α
 xchain924_n0_β:
 jmp proc_PAT$33_scanfail
# IR_COERCE_STRING
 xchain924_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain924_n2_α
 xchain924_n1_β:
 jmp proc_PAT$33_scanfail
# IR_VAR
 xchain924_n2_α:
 mov rax, qword ptr [1879055328]
 mov rdx, qword ptr [1879055336]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain924_n3_α
 xchain924_n2_β:
 jmp proc_PAT$33_scanfail
# IR_COERCE_STRING
 xchain924_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain924_n4_α
 xchain924_n3_β:
 jmp proc_PAT$33_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain924_n4_α:
 jmp xchain924_n5_α
xchain924_n4_as:
 jmp proc_PAT$33_γ
 xchain924_n4_β:
 jmp xchain924_n6_β
xchain924_n4_af:
 jmp proc_PAT$33_ω
# IR_MATCH_NOTANY
 xchain924_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain924_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain924_n4_af
 add r14d, 1
 jmp xchain924_n6_α
 xchain924_n5_β:
 sub r14d, 1
 jmp xchain924_n4_af
# IR_MATCH_BREAK
 xchain924_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx935_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx935_240
 add rsp, 16
 jmp xchain924_n5_β
.Lx935_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx935_1
 add dword ptr [rsp + 0], 1
 jmp .Lx935_0
.Lx935_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain924_n4_as
 xchain924_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain924_n5_β
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
proc_PAT$34_attempt:
proc_PAT$34_α_body:
lea rax, [rip + xchain936_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain936_n0_α:
 mov rax, qword ptr [1879055360]
 mov rdx, qword ptr [1879055368]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain936_n1_α
# IR_COERCE_STRING
 xchain936_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain936_n2_α
# IR_MATCH_SPAN
 xchain936_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx941_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx941_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx941_1
 add dword ptr [rsp + 0], 1
 jmp .Lx941_0
.Lx941_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx941_240
 add rsp, 16
 jmp proc_PAT$34_scanfail
.Lx941_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$34_scanhit
 xchain936_n2_β:
 xchain936_n2_β:
 mov r14d, dword ptr [rsp + 4]
 add rsp, 16
 jmp proc_PAT$34_scanfail
proc_PAT$34_scanhit:
cmp qword ptr [rbp + 144], 1
jne 7f
mov ecx, dword ptr [rbp + 136]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$34_γ
proc_PAT$34_scanfail:
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
jmp proc_PAT$34_attempt
8:
jmp proc_PAT$34_ω
proc_PAT$34_res:
add rsp, 8
pop rbp
proc_PAT$34_β:
jmp qword ptr [rbp + 112]
proc_PAT$34_γ:
push rbp
lea rax, [rip + proc_PAT$34_res]
push rax
mov rax, [rbp + 152]
mov rbp, [rbp + 168]
jmp rax
proc_PAT$34_ω:
mov rax, [rbp + 160]
lea rsp, [rbp + 176]
mov rbp, [rbp + 168]
jmp rax
  .globl proc_PAT$35_α
proc_PAT$35_α:
#=======================================================================================================================
    .global proc_PAT$35_α
    .global proc_PAT$35_β
    .global proc_PAT$35_γ
    .global proc_PAT$35_ω
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
proc_PAT$35_attempt:
proc_PAT$35_α_body:
lea rax, [rip + xchain942_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain942_n0_α:
 mov rax, qword ptr [1879055392]
 mov rdx, qword ptr [1879055400]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain942_n1_α
 xchain942_n0_β:
 jmp proc_PAT$35_scanfail
# IR_COERCE_STRING
 xchain942_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain942_n2_α
 xchain942_n1_β:
 jmp proc_PAT$35_scanfail
# IR_VAR
 xchain942_n2_α:
 mov rax, qword ptr [1879055376]
 mov rdx, qword ptr [1879055384]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain942_n3_α
 xchain942_n2_β:
 jmp proc_PAT$35_scanfail
# IR_COERCE_STRING
 xchain942_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain942_n4_α
 xchain942_n3_β:
 jmp proc_PAT$35_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain942_n4_α:
 jmp xchain942_n5_α
xchain942_n4_as:
 jmp proc_PAT$35_γ
 xchain942_n4_β:
 jmp xchain942_n6_β
xchain942_n4_af:
 jmp proc_PAT$35_ω
# IR_MATCH_NOTANY
 xchain942_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain942_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain942_n4_af
 add r14d, 1
 jmp xchain942_n6_α
 xchain942_n5_β:
 sub r14d, 1
 jmp xchain942_n4_af
# IR_MATCH_BREAK
 xchain942_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx953_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx953_240
 add rsp, 16
 jmp xchain942_n5_β
.Lx953_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx953_1
 add dword ptr [rsp + 0], 1
 jmp .Lx953_0
.Lx953_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain942_n4_as
 xchain942_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain942_n5_β
proc_PAT$35_scanhit:
cmp qword ptr [rbp + 256], 1
jne 7f
mov ecx, dword ptr [rbp + 248]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$35_γ
proc_PAT$35_scanfail:
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
jmp proc_PAT$35_attempt
8:
jmp proc_PAT$35_ω
proc_PAT$35_res:
add rsp, 8
pop rbp
proc_PAT$35_β:
jmp qword ptr [rbp + 224]
proc_PAT$35_γ:
push rbp
lea rax, [rip + proc_PAT$35_res]
push rax
mov rax, [rbp + 264]
mov rbp, [rbp + 280]
jmp rax
proc_PAT$35_ω:
mov rax, [rbp + 272]
lea rsp, [rbp + 288]
mov rbp, [rbp + 280]
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
lea rax, [rip + xchain954_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain954_n0_α:
 mov rax, qword ptr [1879055408]
 mov rdx, qword ptr [1879055416]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain954_n1_α
# IR_COERCE_STRING
 xchain954_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain954_n2_α
# IR_MATCH_SPAN
 xchain954_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx959_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx959_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx959_1
 add dword ptr [rsp + 0], 1
 jmp .Lx959_0
.Lx959_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx959_240
 add rsp, 16
 jmp proc_PAT$36_scanfail
.Lx959_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$36_scanhit
 xchain954_n2_β:
 xchain954_n2_β:
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
lea rax, [rip + xchain960_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain960_n0_α:
 mov rax, qword ptr [1879055440]
 mov rdx, qword ptr [1879055448]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain960_n1_α
 xchain960_n0_β:
 jmp proc_PAT$37_scanfail
# IR_COERCE_STRING
 xchain960_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain960_n2_α
 xchain960_n1_β:
 jmp proc_PAT$37_scanfail
# IR_VAR
 xchain960_n2_α:
 mov rax, qword ptr [1879055424]
 mov rdx, qword ptr [1879055432]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain960_n3_α
 xchain960_n2_β:
 jmp proc_PAT$37_scanfail
# IR_COERCE_STRING
 xchain960_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain960_n4_α
 xchain960_n3_β:
 jmp proc_PAT$37_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain960_n4_α:
 jmp xchain960_n5_α
xchain960_n4_as:
 jmp proc_PAT$37_γ
 xchain960_n4_β:
 jmp xchain960_n6_β
xchain960_n4_af:
 jmp proc_PAT$37_ω
# IR_MATCH_NOTANY
 xchain960_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain960_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain960_n4_af
 add r14d, 1
 jmp xchain960_n6_α
 xchain960_n5_β:
 sub r14d, 1
 jmp xchain960_n4_af
# IR_MATCH_BREAK
 xchain960_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx971_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx971_240
 add rsp, 16
 jmp xchain960_n5_β
.Lx971_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx971_1
 add dword ptr [rsp + 0], 1
 jmp .Lx971_0
.Lx971_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain960_n4_as
 xchain960_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain960_n5_β
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
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lclassspec0: .string "list(head,tail)"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lclassspec0]
  call record_register@PLT
  .section .rodata
  .Lstartup_pname0: .string "list_reverse"
  .Lstartup_pp0_0: .string "lst"
  .Lstartup_pp0_1: .string "acc"
  .Lstartup_pp0_2: .string "cur"
  .align 8
  .Lstartup_pnames0:
  .quad .Lstartup_pp0_0
  .quad .Lstartup_pp0_1
  .quad .Lstartup_pp0_2
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + .Lstartup_pnames0]
  mov edx, 3
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_list_reverse_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname1: .string "stk_push_frame"
  .Lstartup_pp1_0: .string "v"
  .align 8
  .Lstartup_pnames1:
  .quad .Lstartup_pp1_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + .Lstartup_pnames1]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_stk_push_frame_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname2: .string "stk_push_item"
  .Lstartup_pp2_0: .string "v"
  .align 8
  .Lstartup_pnames2:
  .quad .Lstartup_pp2_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + .Lstartup_pnames2]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_stk_push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname3: .string "stk_pop_into_parent"
  .Lstartup_pp3_0: .string "child"
  .align 8
  .Lstartup_pnames3:
  .quad .Lstartup_pp3_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + .Lstartup_pnames3]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_stk_pop_into_parent_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname4: .string "stk_pop_final"
  .Lstartup_pp4_0: .string "var"
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
  lea rsi, [rip + proc_stk_pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname5: .string "init_list"
  .Lstartup_pp5_0: .string "v"
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
  lea rsi, [rip + proc_init_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname6: .string "Init_list"
  .Lstartup_pp6_0: .string "vs"
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
  lea rsi, [rip + proc_Init_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname7: .string "push_list"
  .Lstartup_pp7_0: .string "v"
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
  lea rsi, [rip + proc_push_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname8: .string "Push_list"
  .Lstartup_pp8_0: .string "vs"
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
  lea rsi, [rip + proc_Push_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname9: .string "push_item"
  .Lstartup_pp9_0: .string "v"
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
  lea rsi, [rip + proc_push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname10: .string "Push_item"
  .Lstartup_pp10_0: .string "vs"
  .align 8
  .Lstartup_pnames10:
  .quad .Lstartup_pp10_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + .Lstartup_pnames10]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_Push_item_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname11: .string "pop_list"
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
  lea rsi, [rip + proc_pop_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname12: .string "Pop_list"
  .align 8
  .Lstartup_pnames12:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + .Lstartup_pnames12]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname12]
  lea rsi, [rip + proc_Pop_list_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname12]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname13: .string "pop_final"
  .Lstartup_pp13_0: .string "v"
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
  lea rsi, [rip + proc_pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname13]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname14: .string "Pop_final"
  .Lstartup_pp14_0: .string "vs"
  .align 8
  .Lstartup_pnames14:
  .quad .Lstartup_pp14_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + .Lstartup_pnames14]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname14]
  lea rsi, [rip + proc_Pop_final_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname14]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname15: .string "node_repr"
  .Lstartup_pp15_0: .string "node"
  .Lstartup_pp15_1: .string "r"
  .Lstartup_pp15_2: .string "c"
  .Lstartup_pp15_3: .string "sep"
  .align 8
  .Lstartup_pnames15:
  .quad .Lstartup_pp15_0
  .quad .Lstartup_pp15_1
  .quad .Lstartup_pp15_2
  .quad .Lstartup_pp15_3
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + .Lstartup_pnames15]
  mov edx, 4
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname15]
  lea rsi, [rip + proc_node_repr_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname15]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname16: .string "pp_node"
  .Lstartup_pp16_0: .string "node"
  .Lstartup_pp16_1: .string "indent"
  .Lstartup_pp16_2: .string "suffix"
  .Lstartup_pp16_3: .string "r"
  .Lstartup_pp16_4: .string "pad"
  .Lstartup_pp16_5: .string "c"
  .Lstartup_pp16_6: .string "nxt"
  .align 8
  .Lstartup_pnames16:
  .quad .Lstartup_pp16_0
  .quad .Lstartup_pp16_1
  .quad .Lstartup_pp16_2
  .quad .Lstartup_pp16_3
  .quad .Lstartup_pp16_4
  .quad .Lstartup_pp16_5
  .quad .Lstartup_pp16_6
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname16]
  lea rsi, [rip + .Lstartup_pnames16]
  mov edx, 7
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname16]
  lea rsi, [rip + proc_pp_node_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 7
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname16]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname17: .string "pp_bank"
  .Lstartup_pp17_0: .string "cur"
  .align 8
  .Lstartup_pnames17:
  .quad .Lstartup_pp17_0
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname17]
  lea rsi, [rip + .Lstartup_pnames17]
  mov edx, 1
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname17]
  lea rsi, [rip + proc_pp_bank_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 11504
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname18: .string "EXPR$0"
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
  lea rsi, [rip + proc_EXPR$0_α]
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
  .Lstartup_pname19: .string "EXPR$1"
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
  lea rsi, [rip + proc_EXPR$1_α]
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
  .Lstartup_pname20: .string "EXPR$2"
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
  lea rsi, [rip + proc_EXPR$2_α]
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
  .Lstartup_pname21: .string "EXPR$3"
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
  lea rsi, [rip + proc_EXPR$3_α]
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
  .Lstartup_pname22: .string "EXPR$4"
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
  lea rsi, [rip + proc_EXPR$4_α]
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
  .Lstartup_pname23: .string "EXPR$5"
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
  lea rsi, [rip + proc_EXPR$5_α]
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
  .Lstartup_pname24: .string "EXPR$6"
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
  lea rsi, [rip + proc_EXPR$6_α]
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
  .Lstartup_pname25: .string "EXPR$7"
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
  lea rsi, [rip + proc_EXPR$7_α]
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
  .Lstartup_pname26: .string "EXPR$8"
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
  lea rsi, [rip + proc_EXPR$8_α]
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
  .Lstartup_pname27: .string "EXPR$9"
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
  lea rsi, [rip + proc_EXPR$9_α]
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
  .Lstartup_pname28: .string "EXPR$10"
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
  lea rsi, [rip + proc_EXPR$10_α]
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
  .Lstartup_pname29: .string "EXPR$11"
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
  lea rsi, [rip + proc_EXPR$11_α]
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
  .Lstartup_pname30: .string "EXPR$12"
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
  lea rsi, [rip + proc_EXPR$12_α]
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
  .Lstartup_pname31: .string "EXPR$13"
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
  lea rsi, [rip + proc_EXPR$13_α]
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
  .Lstartup_pname32: .string "EXPR$14"
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
  lea rsi, [rip + proc_EXPR$14_α]
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
  .Lstartup_pname33: .string "EXPR$15"
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
  lea rsi, [rip + proc_EXPR$15_α]
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
  .Lstartup_pname34: .string "EXPR$16"
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
  lea rsi, [rip + proc_EXPR$16_α]
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
  .Lstartup_pname35: .string "EXPR$17"
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
  lea rsi, [rip + proc_EXPR$17_α]
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
  .Lstartup_pname36: .string "EXPR$18"
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
  lea rsi, [rip + proc_EXPR$18_α]
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
  .Lstartup_pname37: .string "EXPR$19"
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
  lea rsi, [rip + proc_EXPR$19_α]
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
  .Lstartup_pname38: .string "EXPR$20"
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
  lea rsi, [rip + proc_EXPR$20_α]
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
  .Lstartup_pname39: .string "EXPR$21"
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
  lea rsi, [rip + proc_EXPR$21_α]
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
  .Lstartup_pname40: .string "EXPR$22"
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
  lea rsi, [rip + proc_EXPR$22_α]
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
  .Lstartup_pname41: .string "EXPR$23"
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
  lea rsi, [rip + proc_EXPR$23_α]
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
  .Lstartup_pname42: .string "EXPR$24"
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
  lea rsi, [rip + proc_EXPR$24_α]
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
  .Lstartup_pname43: .string "EXPR$25"
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
  lea rsi, [rip + proc_EXPR$25_α]
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
  .Lstartup_pname44: .string "EXPR$26"
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
  lea rsi, [rip + proc_EXPR$26_α]
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
  .Lstartup_pname45: .string "EXPR$27"
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
  lea rsi, [rip + proc_EXPR$27_α]
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
  .Lstartup_pname46: .string "EXPR$28"
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
  lea rsi, [rip + proc_EXPR$28_α]
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
  .Lstartup_pname47: .string "EXPR$29"
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
  lea rsi, [rip + proc_EXPR$29_α]
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
  .Lstartup_pname48: .string "EXPR$30"
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
  lea rsi, [rip + proc_EXPR$30_α]
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
  .Lstartup_pname49: .string "EXPR$31"
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
  lea rsi, [rip + proc_EXPR$31_α]
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
  .Lstartup_pname50: .string "EXPR$32"
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
  lea rsi, [rip + proc_EXPR$32_α]
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
  .Lstartup_pname51: .string "EXPR$33"
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
  lea rsi, [rip + proc_EXPR$33_α]
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
  .Lstartup_pname52: .string "EXPR$34"
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
  lea rsi, [rip + proc_EXPR$34_α]
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
  .Lstartup_pname53: .string "EXPR$35"
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
  lea rsi, [rip + proc_EXPR$35_α]
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
  .Lstartup_pname54: .string "EXPR$36"
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
  lea rsi, [rip + proc_EXPR$36_α]
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
  .Lstartup_pname55: .string "EXPR$37"
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
  lea rsi, [rip + proc_EXPR$37_α]
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
  .Lstartup_pname56: .string "EXPR$38"
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
  lea rsi, [rip + proc_EXPR$38_α]
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
  .Lstartup_pname57: .string "EXPR$39"
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
  lea rsi, [rip + proc_EXPR$39_α]
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
  .Lstartup_pname58: .string "EXPR$40"
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
  lea rsi, [rip + proc_EXPR$40_α]
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
  .Lstartup_pname59: .string "EXPR$41"
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
  lea rsi, [rip + proc_EXPR$41_α]
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
  .Lstartup_pname60: .string "EXPR$42"
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
  lea rsi, [rip + proc_EXPR$42_α]
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
  .Lstartup_pname61: .string "EXPR$43"
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
  lea rsi, [rip + proc_EXPR$43_α]
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
  .Lstartup_pname62: .string "EXPR$44"
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
  lea rsi, [rip + proc_EXPR$44_α]
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
  .Lstartup_pname63: .string "EXPR$45"
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
  lea rsi, [rip + proc_EXPR$45_α]
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
  .Lstartup_pname64: .string "EXPR$46"
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
  lea rsi, [rip + proc_EXPR$46_α]
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
  .Lstartup_pname65: .string "EXPR$47"
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
  lea rsi, [rip + proc_EXPR$47_α]
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
  .Lstartup_pname66: .string "EXPR$48"
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
  lea rsi, [rip + proc_EXPR$48_α]
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
  .Lstartup_pname67: .string "EXPR$49"
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
  lea rsi, [rip + proc_EXPR$49_α]
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
  .Lstartup_pname68: .string "EXPR$50"
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
  lea rsi, [rip + proc_EXPR$50_α]
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
  .Lstartup_pname69: .string "EXPR$51"
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
  lea rsi, [rip + proc_EXPR$51_α]
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
  .Lstartup_pname70: .string "EXPR$52"
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
  lea rsi, [rip + proc_EXPR$52_α]
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
  .Lstartup_pname71: .string "EXPR$53"
  .align 8
  .Lstartup_pnames71:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname71]
  lea rsi, [rip + .Lstartup_pnames71]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname71]
  lea rsi, [rip + proc_EXPR$53_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname71]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname72: .string "EXPR$54"
  .align 8
  .Lstartup_pnames72:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname72]
  lea rsi, [rip + .Lstartup_pnames72]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname72]
  lea rsi, [rip + proc_EXPR$54_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname72]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname73: .string "EXPR$55"
  .align 8
  .Lstartup_pnames73:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname73]
  lea rsi, [rip + .Lstartup_pnames73]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname73]
  lea rsi, [rip + proc_EXPR$55_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname73]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname74: .string "EXPR$56"
  .align 8
  .Lstartup_pnames74:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname74]
  lea rsi, [rip + .Lstartup_pnames74]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname74]
  lea rsi, [rip + proc_EXPR$56_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname74]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname75: .string "EXPR$57"
  .align 8
  .Lstartup_pnames75:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname75]
  lea rsi, [rip + .Lstartup_pnames75]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname75]
  lea rsi, [rip + proc_EXPR$57_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname75]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname76: .string "EXPR$58"
  .align 8
  .Lstartup_pnames76:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname76]
  lea rsi, [rip + .Lstartup_pnames76]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname76]
  lea rsi, [rip + proc_EXPR$58_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname76]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname77: .string "EXPR$59"
  .align 8
  .Lstartup_pnames77:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname77]
  lea rsi, [rip + .Lstartup_pnames77]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname77]
  lea rsi, [rip + proc_EXPR$59_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname77]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname78: .string "EXPR$60"
  .align 8
  .Lstartup_pnames78:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname78]
  lea rsi, [rip + .Lstartup_pnames78]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname78]
  lea rsi, [rip + proc_EXPR$60_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname78]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname79: .string "EXPR$61"
  .align 8
  .Lstartup_pnames79:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname79]
  lea rsi, [rip + .Lstartup_pnames79]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname79]
  lea rsi, [rip + proc_EXPR$61_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname79]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname80: .string "EXPR$62"
  .align 8
  .Lstartup_pnames80:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname80]
  lea rsi, [rip + .Lstartup_pnames80]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname80]
  lea rsi, [rip + proc_EXPR$62_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname80]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname81: .string "EXPR$63"
  .align 8
  .Lstartup_pnames81:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname81]
  lea rsi, [rip + .Lstartup_pnames81]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname81]
  lea rsi, [rip + proc_EXPR$63_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname81]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname82: .string "EXPR$64"
  .align 8
  .Lstartup_pnames82:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname82]
  lea rsi, [rip + .Lstartup_pnames82]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname82]
  lea rsi, [rip + proc_EXPR$64_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname82]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname83: .string "EXPR$65"
  .align 8
  .Lstartup_pnames83:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname83]
  lea rsi, [rip + .Lstartup_pnames83]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname83]
  lea rsi, [rip + proc_EXPR$65_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname83]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname84: .string "EXPR$66"
  .align 8
  .Lstartup_pnames84:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname84]
  lea rsi, [rip + .Lstartup_pnames84]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname84]
  lea rsi, [rip + proc_EXPR$66_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname84]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname85: .string "EXPR$67"
  .align 8
  .Lstartup_pnames85:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname85]
  lea rsi, [rip + .Lstartup_pnames85]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname85]
  lea rsi, [rip + proc_EXPR$67_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname85]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname86: .string "EXPR$68"
  .align 8
  .Lstartup_pnames86:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname86]
  lea rsi, [rip + .Lstartup_pnames86]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname86]
  lea rsi, [rip + proc_EXPR$68_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname86]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname87: .string "EXPR$69"
  .align 8
  .Lstartup_pnames87:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname87]
  lea rsi, [rip + .Lstartup_pnames87]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname87]
  lea rsi, [rip + proc_EXPR$69_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname87]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname88: .string "EXPR$70"
  .align 8
  .Lstartup_pnames88:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname88]
  lea rsi, [rip + .Lstartup_pnames88]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname88]
  lea rsi, [rip + proc_EXPR$70_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname88]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname89: .string "EXPR$71"
  .align 8
  .Lstartup_pnames89:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname89]
  lea rsi, [rip + .Lstartup_pnames89]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname89]
  lea rsi, [rip + proc_EXPR$71_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname89]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname90: .string "EXPR$72"
  .align 8
  .Lstartup_pnames90:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname90]
  lea rsi, [rip + .Lstartup_pnames90]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname90]
  lea rsi, [rip + proc_EXPR$72_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname90]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname91: .string "EXPR$73"
  .align 8
  .Lstartup_pnames91:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname91]
  lea rsi, [rip + .Lstartup_pnames91]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname91]
  lea rsi, [rip + proc_EXPR$73_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname91]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname92: .string "EXPR$74"
  .align 8
  .Lstartup_pnames92:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname92]
  lea rsi, [rip + .Lstartup_pnames92]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname92]
  lea rsi, [rip + proc_EXPR$74_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname92]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname93: .string "EXPR$75"
  .align 8
  .Lstartup_pnames93:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname93]
  lea rsi, [rip + .Lstartup_pnames93]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname93]
  lea rsi, [rip + proc_EXPR$75_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname93]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname94: .string "EXPR$76"
  .align 8
  .Lstartup_pnames94:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname94]
  lea rsi, [rip + .Lstartup_pnames94]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname94]
  lea rsi, [rip + proc_EXPR$76_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname94]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname95: .string "EXPR$77"
  .align 8
  .Lstartup_pnames95:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname95]
  lea rsi, [rip + .Lstartup_pnames95]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname95]
  lea rsi, [rip + proc_EXPR$77_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname95]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname96: .string "EXPR$78"
  .align 8
  .Lstartup_pnames96:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname96]
  lea rsi, [rip + .Lstartup_pnames96]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname96]
  lea rsi, [rip + proc_EXPR$78_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname96]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname97: .string "EXPR$79"
  .align 8
  .Lstartup_pnames97:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname97]
  lea rsi, [rip + .Lstartup_pnames97]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname97]
  lea rsi, [rip + proc_EXPR$79_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname97]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname98: .string "EXPR$80"
  .align 8
  .Lstartup_pnames98:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname98]
  lea rsi, [rip + .Lstartup_pnames98]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname98]
  lea rsi, [rip + proc_EXPR$80_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname98]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname99: .string "EXPR$81"
  .align 8
  .Lstartup_pnames99:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname99]
  lea rsi, [rip + .Lstartup_pnames99]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname99]
  lea rsi, [rip + proc_EXPR$81_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname99]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname100: .string "EXPR$82"
  .align 8
  .Lstartup_pnames100:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname100]
  lea rsi, [rip + .Lstartup_pnames100]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname100]
  lea rsi, [rip + proc_EXPR$82_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname100]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname101: .string "EXPR$83"
  .align 8
  .Lstartup_pnames101:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname101]
  lea rsi, [rip + .Lstartup_pnames101]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname101]
  lea rsi, [rip + proc_EXPR$83_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname101]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname102: .string "EXPR$84"
  .align 8
  .Lstartup_pnames102:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname102]
  lea rsi, [rip + .Lstartup_pnames102]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname102]
  lea rsi, [rip + proc_EXPR$84_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname102]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname103: .string "EXPR$85"
  .align 8
  .Lstartup_pnames103:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname103]
  lea rsi, [rip + .Lstartup_pnames103]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname103]
  lea rsi, [rip + proc_EXPR$85_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname103]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname104: .string "EXPR$86"
  .align 8
  .Lstartup_pnames104:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname104]
  lea rsi, [rip + .Lstartup_pnames104]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname104]
  lea rsi, [rip + proc_EXPR$86_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname104]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname105: .string "EXPR$87"
  .align 8
  .Lstartup_pnames105:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname105]
  lea rsi, [rip + .Lstartup_pnames105]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname105]
  lea rsi, [rip + proc_EXPR$87_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname105]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname106: .string "EXPR$88"
  .align 8
  .Lstartup_pnames106:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname106]
  lea rsi, [rip + .Lstartup_pnames106]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname106]
  lea rsi, [rip + proc_EXPR$88_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname106]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname107: .string "EXPR$89"
  .align 8
  .Lstartup_pnames107:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname107]
  lea rsi, [rip + .Lstartup_pnames107]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname107]
  lea rsi, [rip + proc_EXPR$89_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname107]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname108: .string "EXPR$90"
  .align 8
  .Lstartup_pnames108:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname108]
  lea rsi, [rip + .Lstartup_pnames108]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname108]
  lea rsi, [rip + proc_EXPR$90_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname108]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname109: .string "EXPR$91"
  .align 8
  .Lstartup_pnames109:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname109]
  lea rsi, [rip + .Lstartup_pnames109]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname109]
  lea rsi, [rip + proc_EXPR$91_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname109]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname110: .string "EXPR$92"
  .align 8
  .Lstartup_pnames110:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname110]
  lea rsi, [rip + .Lstartup_pnames110]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname110]
  lea rsi, [rip + proc_EXPR$92_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname110]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname111: .string "EXPR$93"
  .align 8
  .Lstartup_pnames111:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname111]
  lea rsi, [rip + .Lstartup_pnames111]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname111]
  lea rsi, [rip + proc_EXPR$93_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname111]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname112: .string "EXPR$94"
  .align 8
  .Lstartup_pnames112:
  .quad 0
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname112]
  lea rsi, [rip + .Lstartup_pnames112]
  mov edx, 0
  call rt_proc_register@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 1
  call rt_proc_set_dyn_scope@PLT
  lea rdi, [rip + .Lstartup_pname112]
  lea rsi, [rip + proc_EXPR$94_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 80
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname112]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname113: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname113]
  lea rsi, [rip + proc_PAT$0_α]
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
  .Lstartup_pname114: .string "PAT$1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname114]
  lea rsi, [rip + proc_PAT$1_α]
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
  .Lstartup_pname115: .string "PAT$2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname115]
  lea rsi, [rip + proc_PAT$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname115]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname116: .string "PAT$3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname116]
  lea rsi, [rip + proc_PAT$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname116]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname116]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname116]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname117: .string "PAT$4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname117]
  lea rsi, [rip + proc_PAT$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname117]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname117]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname117]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname118: .string "PAT$5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname118]
  lea rsi, [rip + proc_PAT$5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname118]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname119: .string "PAT$6"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname119]
  lea rsi, [rip + proc_PAT$6_α]
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
  .Lstartup_pname120: .string "PAT$7"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname120]
  lea rsi, [rip + proc_PAT$7_α]
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
  .Lstartup_pname121: .string "PAT$8"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname121]
  lea rsi, [rip + proc_PAT$8_α]
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
  .Lstartup_pname122: .string "PAT$9"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname122]
  lea rsi, [rip + proc_PAT$9_α]
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
  .Lstartup_pname123: .string "PAT$10"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname123]
  lea rsi, [rip + proc_PAT$10_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname123]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname123]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname123]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname124: .string "PAT$11"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname124]
  lea rsi, [rip + proc_PAT$11_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname124]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname124]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname124]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname125: .string "PAT$12"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname125]
  lea rsi, [rip + proc_PAT$12_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname125]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname125]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname125]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname126: .string "PAT$13"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname126]
  lea rsi, [rip + proc_PAT$13_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname126]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname126]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname126]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname127: .string "PAT$14"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname127]
  lea rsi, [rip + proc_PAT$14_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname127]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname127]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname127]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname128: .string "PAT$15"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname128]
  lea rsi, [rip + proc_PAT$15_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname128]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname128]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname128]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname129: .string "PAT$16"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname129]
  lea rsi, [rip + proc_PAT$16_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname129]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname129]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname129]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname130: .string "PAT$17"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname130]
  lea rsi, [rip + proc_PAT$17_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname130]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname130]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname130]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname131: .string "PAT$18"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname131]
  lea rsi, [rip + proc_PAT$18_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname131]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname131]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname131]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname132: .string "PAT$19"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname132]
  lea rsi, [rip + proc_PAT$19_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname132]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname132]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname132]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname133: .string "PAT$20"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname133]
  lea rsi, [rip + proc_PAT$20_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname133]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname133]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname133]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname134: .string "PAT$21"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname134]
  lea rsi, [rip + proc_PAT$21_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname134]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname134]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname134]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname135: .string "PAT$22"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname135]
  lea rsi, [rip + proc_PAT$22_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname135]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname135]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname135]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname136: .string "PAT$23"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname136]
  lea rsi, [rip + proc_PAT$23_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname136]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname136]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname136]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname137: .string "PAT$24"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname137]
  lea rsi, [rip + proc_PAT$24_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname137]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname137]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname137]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname138: .string "PAT$25"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname138]
  lea rsi, [rip + proc_PAT$25_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname138]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname138]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname138]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname139: .string "PAT$26"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname139]
  lea rsi, [rip + proc_PAT$26_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname139]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname139]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname139]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname140: .string "PAT$27"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname140]
  lea rsi, [rip + proc_PAT$27_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname140]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname140]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname140]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname141: .string "PAT$28"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname141]
  lea rsi, [rip + proc_PAT$28_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname141]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname141]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname141]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname142: .string "PAT$29"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname142]
  lea rsi, [rip + proc_PAT$29_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname142]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname142]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname142]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname143: .string "PAT$30"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname143]
  lea rsi, [rip + proc_PAT$30_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname143]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname143]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname143]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname144: .string "PAT$31"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname144]
  lea rsi, [rip + proc_PAT$31_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname144]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname144]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname144]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname145: .string "PAT$32"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname145]
  lea rsi, [rip + proc_PAT$32_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname145]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname145]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname145]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname146: .string "PAT$33"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname146]
  lea rsi, [rip + proc_PAT$33_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname146]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname146]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname146]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname147: .string "PAT$34"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname147]
  lea rsi, [rip + proc_PAT$34_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname147]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname147]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname147]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname148: .string "PAT$35"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname148]
  lea rsi, [rip + proc_PAT$35_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname148]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname148]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname148]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname149: .string "PAT$36"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname149]
  lea rsi, [rip + proc_PAT$36_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname149]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname149]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname149]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname150: .string "PAT$37"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname150]
  lea rsi, [rip + proc_PAT$37_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname150]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname150]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname150]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  add rsp, 8
  ret
  .section .rodata
  .Lgvan0: .string "list_reverse"
  .Lgvan1: .string "lst"
  .Lgvan2: .string "acc"
  .Lgvan3: .string "cur"
  .Lgvan4: .string "stk_push_frame"
  .Lgvan5: .string "v"
  .Lgvan6: .string "stk_push_item"
  .Lgvan7: .string "stk_pop_into_parent"
  .Lgvan8: .string "child"
  .Lgvan9: .string "stk_pop_final"
  .Lgvan10: .string "var"
  .Lgvan11: .string "init_list"
  .Lgvan12: .string "Init_list"
  .Lgvan13: .string "vs"
  .Lgvan14: .string "push_list"
  .Lgvan15: .string "Push_list"
  .Lgvan16: .string "push_item"
  .Lgvan17: .string "Push_item"
  .Lgvan18: .string "pop_list"
  .Lgvan19: .string "Pop_list"
  .Lgvan20: .string "pop_final"
  .Lgvan21: .string "Pop_final"
  .Lgvan22: .string "node_repr"
  .Lgvan23: .string "node"
  .Lgvan24: .string "r"
  .Lgvan25: .string "c"
  .Lgvan26: .string "sep"
  .Lgvan27: .string "pp_node"
  .Lgvan28: .string "indent"
  .Lgvan29: .string "suffix"
  .Lgvan30: .string "pad"
  .Lgvan31: .string "nxt"
  .Lgvan32: .string "pp_bank"
  .Lgvan33: .string "nl"
  .Lgvan34: .string "stk"
  .Lgvan35: .string "dummy"
  .Lgvan36: .string "epsilon"
  .Lgvan37: .string "delim"
  .Lgvan38: .string "word"
  .Lgvan39: .string "group"
  .Lgvan40: .string "tag"
  .Lgvan41: .string "wrd"
  .Lgvan42: .string "treebank"
  .Lgvan43: .string "bank"
  .Lgvan44: .string "line"
  .Lgvan45: .string "src"
  .Lgvan46: .string "EXPR$0"
  .Lgvan47: .string "EXPR$1"
  .Lgvan48: .string "EXPR$2"
  .Lgvan49: .string "EXPR$3"
  .Lgvan50: .string "EXPR$4"
  .Lgvan51: .string "EXPR$5"
  .Lgvan52: .string "EXPR$6"
  .Lgvan53: .string "EXPR$7"
  .Lgvan54: .string "EXPR$8"
  .Lgvan55: .string "EXPR$9"
  .Lgvan56: .string "EXPR$10"
  .Lgvan57: .string "EXPR$11"
  .Lgvan58: .string "EXPR$12"
  .Lgvan59: .string "EXPR$13"
  .Lgvan60: .string "EXPR$14"
  .Lgvan61: .string "EXPR$15"
  .Lgvan62: .string "EXPR$16"
  .Lgvan63: .string "EXPR$17"
  .Lgvan64: .string "EXPR$18"
  .Lgvan65: .string "EXPR$19"
  .Lgvan66: .string "EXPR$20"
  .Lgvan67: .string "EXPR$21"
  .Lgvan68: .string "EXPR$22"
  .Lgvan69: .string "EXPR$23"
  .Lgvan70: .string "EXPR$24"
  .Lgvan71: .string "EXPR$25"
  .Lgvan72: .string "EXPR$26"
  .Lgvan73: .string "EXPR$27"
  .Lgvan74: .string "EXPR$28"
  .Lgvan75: .string "EXPR$29"
  .Lgvan76: .string "EXPR$30"
  .Lgvan77: .string "EXPR$31"
  .Lgvan78: .string "EXPR$32"
  .Lgvan79: .string "EXPR$33"
  .Lgvan80: .string "EXPR$34"
  .Lgvan81: .string "EXPR$35"
  .Lgvan82: .string "EXPR$36"
  .Lgvan83: .string "EXPR$37"
  .Lgvan84: .string "EXPR$38"
  .Lgvan85: .string "EXPR$39"
  .Lgvan86: .string "EXPR$40"
  .Lgvan87: .string "EXPR$41"
  .Lgvan88: .string "EXPR$42"
  .Lgvan89: .string "EXPR$43"
  .Lgvan90: .string "EXPR$44"
  .Lgvan91: .string "EXPR$45"
  .Lgvan92: .string "EXPR$46"
  .Lgvan93: .string "EXPR$47"
  .Lgvan94: .string "EXPR$48"
  .Lgvan95: .string "EXPR$49"
  .Lgvan96: .string "EXPR$50"
  .Lgvan97: .string "EXPR$51"
  .Lgvan98: .string "EXPR$52"
  .Lgvan99: .string "EXPR$53"
  .Lgvan100: .string "EXPR$54"
  .Lgvan101: .string "EXPR$55"
  .Lgvan102: .string "EXPR$56"
  .Lgvan103: .string "EXPR$57"
  .Lgvan104: .string "EXPR$58"
  .Lgvan105: .string "EXPR$59"
  .Lgvan106: .string "EXPR$60"
  .Lgvan107: .string "EXPR$61"
  .Lgvan108: .string "EXPR$62"
  .Lgvan109: .string "EXPR$63"
  .Lgvan110: .string "EXPR$64"
  .Lgvan111: .string "EXPR$65"
  .Lgvan112: .string "EXPR$66"
  .Lgvan113: .string "EXPR$67"
  .Lgvan114: .string "EXPR$68"
  .Lgvan115: .string "EXPR$69"
  .Lgvan116: .string "EXPR$70"
  .Lgvan117: .string "EXPR$71"
  .Lgvan118: .string "EXPR$72"
  .Lgvan119: .string "EXPR$73"
  .Lgvan120: .string "EXPR$74"
  .Lgvan121: .string "EXPR$75"
  .Lgvan122: .string "EXPR$76"
  .Lgvan123: .string "EXPR$77"
  .Lgvan124: .string "EXPR$78"
  .Lgvan125: .string "EXPR$79"
  .Lgvan126: .string "EXPR$80"
  .Lgvan127: .string "EXPR$81"
  .Lgvan128: .string "EXPR$82"
  .Lgvan129: .string "EXPR$83"
  .Lgvan130: .string "EXPR$84"
  .Lgvan131: .string "EXPR$85"
  .Lgvan132: .string "EXPR$86"
  .Lgvan133: .string "EXPR$87"
  .Lgvan134: .string "EXPR$88"
  .Lgvan135: .string "EXPR$89"
  .Lgvan136: .string "EXPR$90"
  .Lgvan137: .string "EXPR$91"
  .Lgvan138: .string "EXPR$92"
  .Lgvan139: .string "EXPR$93"
  .Lgvan140: .string "EXPR$94"
  .Lgvan141: .string "PAT$0$A0"
  .Lgvan142: .string "PAT$1$A0"
  .Lgvan143: .string "PAT$1$A1"
  .Lgvan144: .string "PAT$2$A0"
  .Lgvan145: .string "PAT$3$A0"
  .Lgvan146: .string "PAT$3$A1"
  .Lgvan147: .string "PAT$4$A0"
  .Lgvan148: .string "PAT$5$A0"
  .Lgvan149: .string "PAT$5$A1"
  .Lgvan150: .string "PAT$6$A0"
  .Lgvan151: .string "PAT$7$A0"
  .Lgvan152: .string "PAT$7$A1"
  .Lgvan153: .string "PAT$8$A0"
  .Lgvan154: .string "PAT$9$A0"
  .Lgvan155: .string "PAT$9$A1"
  .Lgvan156: .string "PAT$10$A0"
  .Lgvan157: .string "PAT$11$A0"
  .Lgvan158: .string "PAT$11$A1"
  .Lgvan159: .string "PAT$12$A0"
  .Lgvan160: .string "PAT$13$A0"
  .Lgvan161: .string "PAT$13$A1"
  .Lgvan162: .string "PAT$14$A0"
  .Lgvan163: .string "PAT$15$A0"
  .Lgvan164: .string "PAT$15$A1"
  .Lgvan165: .string "PAT$16$A0"
  .Lgvan166: .string "PAT$17$A0"
  .Lgvan167: .string "PAT$17$A1"
  .Lgvan168: .string "PAT$18$A0"
  .Lgvan169: .string "PAT$19$A0"
  .Lgvan170: .string "PAT$19$A1"
  .Lgvan171: .string "PAT$20$A0"
  .Lgvan172: .string "PAT$21$A0"
  .Lgvan173: .string "PAT$21$A1"
  .Lgvan174: .string "PAT$22$A0"
  .Lgvan175: .string "PAT$23$A0"
  .Lgvan176: .string "PAT$23$A1"
  .Lgvan177: .string "PAT$24$A0"
  .Lgvan178: .string "PAT$25$A0"
  .Lgvan179: .string "PAT$25$A1"
  .Lgvan180: .string "PAT$26$A0"
  .Lgvan181: .string "PAT$27$A0"
  .Lgvan182: .string "PAT$27$A1"
  .Lgvan183: .string "PAT$28$A0"
  .Lgvan184: .string "PAT$29$A0"
  .Lgvan185: .string "PAT$29$A1"
  .Lgvan186: .string "PAT$30$A0"
  .Lgvan187: .string "PAT$31$A0"
  .Lgvan188: .string "PAT$31$A1"
  .Lgvan189: .string "PAT$32$A0"
  .Lgvan190: .string "PAT$33$A0"
  .Lgvan191: .string "PAT$33$A1"
  .Lgvan192: .string "PAT$34$A0"
  .Lgvan193: .string "PAT$35$A0"
  .Lgvan194: .string "PAT$35$A1"
  .Lgvan195: .string "PAT$36$A0"
  .Lgvan196: .string "PAT$37$A0"
  .Lgvan197: .string "PAT$37$A1"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 198
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 198
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
  mov qword ptr [rsp + 11496], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_KEYWORD_SNOBOL4_read
 xchain972_n0_α:
 mov rdi, qword ptr [rip + .Lx973_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain972_n1_α
 xchain972_n0_β:
 jmp xchain972_n8_α
.Lx973_0:
 .quad .Lx973_0_s
.Lx973_0_s:
 .string "ALPHABET"
# IR_MATCH_HEAD
 xchain972_n1_α:
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
.Lx975_0:
 mov r14d, dword ptr [rsp + 0]
 jmp xchain972_n2_α
 xchain972_n1_β:
 add dword ptr [rsp + 0], 1
 mov eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jg .Lx975_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx975_1
 jmp .Lx975_0
.Lx975_1:
 mov rax, qword ptr [rsp + 8]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 16]
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain972_n8_α
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain972_n2_α:
 jmp xchain972_n4_α
xchain972_n2_as:
 jmp xchain972_n3_α
 xchain972_n2_β:
 jmp xchain972_n7_β
xchain972_n2_af:
 jmp xchain972_n1_β
# IR_MATCH_RELEASE
 xchain972_n3_α:
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
.Lx979_1:
 test rax, rax
 je .Lx979_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx979_3]
 lea rdx, [rip + .Lx979_4]
 jmp rax
.Lx979_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx979_1
.Lx979_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx979_1
.Lx979_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain972_n8_α
# IR_LIT_INTEGER
 xchain972_n4_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx980_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain972_n5_α
 xchain972_n4_β:
 jmp xchain972_n2_af
.Lx980_0:
 .quad 10
# IR_MATCH_POS
 xchain972_n5_α:
 mov rax, 10
 cmp r14d, eax
 jne xchain972_n2_af
 jmp xchain972_n6_α
 xchain972_n5_β:
 jmp xchain972_n2_af
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain972_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain972_n9_α
 xchain972_n6_β:
 add rsp, 16
 jmp xchain972_n2_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain972_n7_α:
 mov eax, dword ptr [rsp + 0]
 lea rcx, [rip + .S0]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain972_n2_as
 xchain972_n7_β:
 sub r12, 24
 jmp xchain972_n9_β
# IR_LIT_STRING
 xchain972_n8_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx986_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain972_n10_α
 xchain972_n8_β:
 jmp xchain972_n11_α
.Lx986_0:
 .quad .Lx986_0_s
.Lx986_0_s:
 .string "list(head,tail)"
# IR_MATCH_LEN
 xchain972_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jle .Lx987_240
 add rsp, 16
 jmp xchain972_n2_af
.Lx987_240:
 add r14d, 1
 jmp xchain972_n7_α
 xchain972_n9_β:
 sub r14d, 1
 add rsp, 16
 jmp xchain972_n2_af
 xchain972_n10_α:
# BOX IR_CALL DATA(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn989: .string "DATA"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn989]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain972_n11_α
 jmp xchain972_n11_α
 xchain972_n10_β:
 jmp xchain972_n11_α
# IR_LIT_STRING
 xchain972_n11_α:
 mov qword ptr [rbp + 4832], 1
 mov rax, qword ptr [rip + .Lx990_0]
 mov qword ptr [rbp + 4840], rax
 jmp xchain972_n12_α
 xchain972_n11_β:
 jmp xchain972_n14_α
.Lx990_0:
 .quad .Lx990_0_s
.Lx990_0_s:
 .string " "
# IR_VAR
 xchain972_n12_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 4864], rax
 mov qword ptr [rbp + 4872], rdx
 jmp xchain972_n13_α
 xchain972_n12_β:
 jmp xchain972_n14_α
 xchain972_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4832]
 mov rsi, qword ptr [rbp + 4840]
 mov rdx, qword ptr [rbp + 4864]
 mov rcx, qword ptr [rbp + 4872]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain972_n15_α
 xchain972_n13_β:
 jmp xchain972_n14_α
# IR_LIT_STRING
 xchain972_n14_α:
 mov qword ptr [rbp + 5152], 1
 mov rax, qword ptr [rip + .Lx993_0]
 mov qword ptr [rbp + 5160], rax
 jmp xchain972_n16_α
 xchain972_n14_β:
 jmp xchain972_n19_α
.Lx993_0:
 .quad .Lx993_0_s
.Lx993_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain972_n15_α:
 mov rax, qword ptr [rbp + 4800]
 mov rdx, qword ptr [rbp + 4808]
 mov qword ptr [1879054544], rax
 mov qword ptr [1879054552], rdx
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 jmp xchain972_n17_α
 xchain972_n15_β:
 jmp xchain972_n14_α
# IR_VAR
 xchain972_n16_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 jmp xchain972_n18_α
 xchain972_n16_β:
 jmp xchain972_n19_α
# IR_LIT_STRING
 xchain972_n17_α:
 mov qword ptr [rbp + 4752], 1
 mov rax, qword ptr [rip + .Lx996_0]
 mov qword ptr [rbp + 4760], rax
 jmp xchain972_n20_α
 xchain972_n17_β:
 jmp xchain972_n14_α
.Lx996_0:
 .quad .Lx996_0_s
.Lx996_0_s:
 .string "PAT$0"
 xchain972_n18_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5152]
 mov rsi, qword ptr [rbp + 5160]
 mov rdx, qword ptr [rbp + 5184]
 mov rcx, qword ptr [rbp + 5192]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain972_n21_α
 xchain972_n18_β:
 jmp xchain972_n19_α
# IR_LIT_STRING
 xchain972_n19_α:
 mov qword ptr [rbp + 5392], 1
 mov rax, qword ptr [rip + .Lx998_0]
 mov qword ptr [rbp + 5400], rax
 jmp xchain972_n22_α
 xchain972_n19_β:
 jmp xchain972_n30_α
.Lx998_0:
 .quad .Lx998_0_s
.Lx998_0_s:
 .string "("
 xchain972_n20_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4752] -> [zr+4720]
 mov rax, qword ptr [rbp + 4752]
 mov qword ptr [rbp + 4720], rax
 mov rax, qword ptr [rbp + 4760]
 mov qword ptr [rbp + 4728], rax
  .section .rodata
  .Lrkfn1000: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1000]
 lea rsi, [rbp + 4720]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 cmp eax, 99
 je xchain972_n14_α
 jmp xchain972_n23_α
 xchain972_n20_β:
 jmp xchain972_n14_α
# IR_ASSIGN gva
 xchain972_n21_α:
 mov rax, qword ptr [rbp + 5120]
 mov rdx, qword ptr [rbp + 5128]
 mov qword ptr [1879054576], rax
 mov qword ptr [1879054584], rdx
 mov qword ptr [rbp + 5104], rax
 mov qword ptr [rbp + 5112], rdx
 jmp xchain972_n24_α
 xchain972_n21_β:
 jmp xchain972_n19_α
# IR_LIT_INTEGER
 xchain972_n22_α:
 mov qword ptr [rbp + 5504], 6
 mov rax, qword ptr [rip + .Lx1002_0]
 mov qword ptr [rbp + 5512], rax
 jmp xchain972_n25_α
 xchain972_n22_β:
 jmp xchain972_n30_α
.Lx1002_0:
 .quad 42
# IR_ASSIGN gva
 xchain972_n23_α:
 mov rax, qword ptr [rbp + 4704]
 mov rdx, qword ptr [rbp + 4712]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 jmp xchain972_n14_α
 xchain972_n23_β:
 jmp xchain972_n14_α
# IR_LIT_STRING
 xchain972_n24_α:
 mov qword ptr [rbp + 5040], 1
 mov rax, qword ptr [rip + .Lx1004_0]
 mov qword ptr [rbp + 5048], rax
 jmp xchain972_n26_α
 xchain972_n24_β:
 jmp xchain972_n19_α
.Lx1004_0:
 .quad .Lx1004_0_s
.Lx1004_0_s:
 .string "( )"
# IR_LIT_STRING
 xchain972_n25_α:
 mov qword ptr [rbp + 5536], 1
 mov rax, qword ptr [rip + .Lx1005_0]
 mov qword ptr [rbp + 5544], rax
 jmp xchain972_n27_α
 xchain972_n25_β:
 jmp xchain972_n30_α
.Lx1005_0:
 .quad .Lx1005_0_s
.Lx1005_0_s:
 .string "tag"
# IR_VAR
 xchain972_n26_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 5072], rax
 mov qword ptr [rbp + 5080], rdx
 jmp xchain972_n28_α
 xchain972_n26_β:
 jmp xchain972_n19_α
# IR_VAR
 xchain972_n27_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 5568], rax
 mov qword ptr [rbp + 5576], rdx
 jmp xchain972_n29_α
 xchain972_n27_β:
 jmp xchain972_n30_α
 xchain972_n28_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5040]
 mov rsi, qword ptr [rbp + 5048]
 mov rdx, qword ptr [rbp + 5072]
 mov rcx, qword ptr [rbp + 5080]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 jmp xchain972_n31_α
 xchain972_n28_β:
 jmp xchain972_n19_α
 xchain972_n29_α:
# BOX CALL SNO$PBC(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+5504] -> [zr+5440]
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [rbp + 5448], rax
# marshal arg1 = producer-box slot [zr+5536] -> [zr+5456]
 mov rax, qword ptr [rbp + 5536]
 mov qword ptr [rbp + 5456], rax
 mov rax, qword ptr [rbp + 5544]
 mov qword ptr [rbp + 5464], rax
# marshal arg2 = producer-box slot [zr+5568] -> [zr+5472]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5480], rax
  .section .rodata
  .Lbynamefn654: .string "SNO$PBC"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn654]
 lea rsi, [rbp + 5440]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 cmp eax, 99
 je xchain972_n30_α
 jmp xchain972_n32_α
 xchain972_n29_β:
 jmp xchain972_n30_α
# IR_LIT_INTEGER
 xchain972_n30_α:
 mov qword ptr [rbp + 6576], 6
 mov rax, qword ptr [rip + .Lx1010_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain972_n33_α
 xchain972_n30_β:
 jmp xchain972_n40_α
.Lx1010_0:
 .quad 26
# IR_ASSIGN gva
 xchain972_n31_α:
 mov rax, qword ptr [rbp + 5008]
 mov rdx, qword ptr [rbp + 5016]
 mov qword ptr [1879054560], rax
 mov qword ptr [1879054568], rdx
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain972_n34_α
 xchain972_n31_β:
 jmp xchain972_n19_α
 xchain972_n32_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5392]
 mov rsi, qword ptr [rbp + 5400]
 mov rdx, qword ptr [rbp + 5424]
 mov rcx, qword ptr [rbp + 5432]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 jmp xchain972_n35_α
 xchain972_n32_β:
 jmp xchain972_n30_α
# IR_LIT_INTEGER
 xchain972_n33_α:
 mov qword ptr [rbp + 6608], 6
 mov rax, qword ptr [rip + .Lx1013_0]
 mov qword ptr [rbp + 6616], rax
 jmp xchain972_n36_α
 xchain972_n33_β:
 jmp xchain972_n40_α
.Lx1013_0:
 .quad 0
# IR_LIT_STRING
 xchain972_n34_α:
 mov qword ptr [rbp + 4960], 1
 mov rax, qword ptr [rip + .Lx1014_0]
 mov qword ptr [rbp + 4968], rax
 jmp xchain972_n37_α
 xchain972_n34_β:
 jmp xchain972_n19_α
.Lx1014_0:
 .quad .Lx1014_0_s
.Lx1014_0_s:
 .string "PAT$1"
# IR_LIT_STRING
 xchain972_n35_α:
 mov qword ptr [rbp + 5648], 1
 mov rax, qword ptr [rip + .Lx1015_0]
 mov qword ptr [rbp + 5656], rax
 jmp xchain972_n38_α
 xchain972_n35_β:
 jmp xchain972_n30_α
.Lx1015_0:
 .quad .Lx1015_0_s
.Lx1015_0_s:
 .string "tag"
 xchain972_n36_α:
# BOX CALL SNO$PBN(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+6576] -> [zr+6528]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6536], rax
# marshal arg1 = producer-box slot [zr+6608] -> [zr+6544]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6552], rax
  .section .rodata
  .Lbynamefn661: .string "SNO$PBN"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn661]
 lea rsi, [rbp + 6528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6512], rax
 mov qword ptr [rbp + 6520], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n39_α
 xchain972_n36_β:
 jmp xchain972_n40_α
 xchain972_n37_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4960] -> [zr+4928]
 mov rax, qword ptr [rbp + 4960]
 mov qword ptr [rbp + 4928], rax
 mov rax, qword ptr [rbp + 4968]
 mov qword ptr [rbp + 4936], rax
  .section .rodata
  .Lrkfn1018: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1018]
 lea rsi, [rbp + 4928]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 cmp eax, 99
 je xchain972_n19_α
 jmp xchain972_n41_α
 xchain972_n37_β:
 jmp xchain972_n19_α
 xchain972_n38_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052528]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052536]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1020_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1020_5
 mov rax, qword ptr [rbp + 5648]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 5656]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1020_6]
 lea rdx, [rip + .Lx1020_7]
 jmp rax
.Lx1020_6:
 mov rdi, qword ptr [1879052528]
 mov rsi, qword ptr [1879052536]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052528], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052536], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1020_2
.Lx1020_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052528], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052536], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1020_2
.Lx1020_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 5648]
 mov rdx, qword ptr [rbp + 5656]
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
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 cmp eax, 99
 je xchain972_n30_α
 jmp xchain972_n42_α
 xchain972_n38_β:
 jmp xchain972_n30_α
.Lx1020_0:
 .quad .Lx1020_0_s
.Lx1020_0_s:
 .string "Push_list"
# IR_LIT_STRING
 xchain972_n39_α:
 mov qword ptr [rbp + 6688], 1
 mov rax, qword ptr [rip + .Lx1021_0]
 mov qword ptr [rbp + 6696], rax
 jmp xchain972_n43_α
 xchain972_n39_β:
 jmp xchain972_n40_α
.Lx1021_0:
 .quad .Lx1021_0_s
.Lx1021_0_s:
 .string "'bank'"
# IR_VAR
 xchain972_n40_α:
 mov rdi, qword ptr [rip + .Lx1022_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain972_n45_α
 mov qword ptr [rbp + 11056], rax
 mov qword ptr [rbp + 11064], rdx
 jmp xchain972_n44_α
 xchain972_n40_β:
 jmp xchain972_n45_α
.Lx1022_0:
 .quad .Lx1022_0_s
.Lx1022_0_s:
 .string "INPUT"
# IR_ASSIGN gva
 xchain972_n41_α:
 mov rax, qword ptr [rbp + 4912]
 mov rdx, qword ptr [rbp + 4920]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 jmp xchain972_n19_α
 xchain972_n41_β:
 jmp xchain972_n19_α
 xchain972_n42_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5360]
 mov rsi, qword ptr [rbp + 5368]
 mov rdx, qword ptr [rbp + 5600]
 mov rcx, qword ptr [rbp + 5608]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 jmp xchain972_n46_α
 xchain972_n42_β:
 jmp xchain972_n30_α
 xchain972_n43_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1026_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1026_5
 mov rax, qword ptr [rbp + 6688]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 6696]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1026_6]
 lea rdx, [rip + .Lx1026_7]
 jmp rax
.Lx1026_6:
 mov rdi, qword ptr [1879052480]
 mov rsi, qword ptr [1879052488]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052488], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1026_2
.Lx1026_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052480], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052488], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1026_2
.Lx1026_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 6688]
 mov rdx, qword ptr [rbp + 6696]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1026_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1026_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1026_3]
 lea rdx, [rip + .Lx1026_4]
 jmp rax
.Lx1026_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1026_2
.Lx1026_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1026_2
.Lx1026_1:
 call rt_faildescr@PLT
.Lx1026_2:
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n47_α
 xchain972_n43_β:
 jmp xchain972_n40_α
.Lx1026_0:
 .quad .Lx1026_0_s
.Lx1026_0_s:
 .string "Init_list"
# IR_ASSIGN gva
 xchain972_n44_α:
 mov rax, qword ptr [rbp + 11056]
 mov rdx, qword ptr [rbp + 11064]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 11040], rax
 mov qword ptr [rbp + 11048], rdx
 jmp xchain972_n48_α
 xchain972_n44_β:
 jmp xchain972_n45_α
# IR_VAR
 xchain972_n45_α:
 mov rax, qword ptr [1879053008]
 mov rdx, qword ptr [1879053016]
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 jmp xchain972_n49_α
 xchain972_n45_β:
 jmp xchain972_n50_α
# IR_LIT_STRING
 xchain972_n46_α:
 mov qword ptr [rbp + 5808], 1
 mov rax, qword ptr [rip + .Lx1029_0]
 mov qword ptr [rbp + 5816], rax
 jmp xchain972_n51_α
 xchain972_n46_β:
 jmp xchain972_n30_α
.Lx1029_0:
 .quad .Lx1029_0_s
.Lx1029_0_s:
 .string "EXPR$1"
 xchain972_n47_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6512]
 mov rsi, qword ptr [rbp + 6520]
 mov rdx, qword ptr [rbp + 6640]
 mov rcx, qword ptr [rbp + 6648]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain972_n52_α
 xchain972_n47_β:
 jmp xchain972_n40_α
# IR_VAR
 xchain972_n48_α:
 mov rax, qword ptr [1879053008]
 mov rdx, qword ptr [1879053016]
 mov qword ptr [rbp + 11168], rax
 mov qword ptr [rbp + 11176], rdx
 jmp xchain972_n53_α
 xchain972_n48_β:
 jmp xchain972_n40_α
# IR_MATCH_HEAD
 xchain972_n49_α:
 mov qword ptr [rbp + 11320], rbp
 mov rdi, qword ptr [rbp + 11360]
 mov rsi, qword ptr [rbp + 11368]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 11312], r12
 mov qword ptr [rbp + 11296], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 11288], rax
 mov dword ptr [rbp + 11280], 0
.Lx1033_0:
 mov r14d, dword ptr [rbp + 11280]
 jmp xchain972_n54_α
 xchain972_n49_β:
 add dword ptr [rbp + 11280], 1
 mov eax, dword ptr [rbp + 11280]
 cmp eax, r15d
 jg .Lx1033_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx1033_1
 jmp .Lx1033_0
.Lx1033_1:
 mov rax, qword ptr [rbp + 11288]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 11296]
 mov r12, qword ptr [rbp + 11312]
 mov rbp, qword ptr [rbp + 11320]
 jmp xchain972_n50_α
# IR_LIT_STRING
 xchain972_n50_α:
 mov qword ptr [rbp + 11456], 1
 mov rax, qword ptr [rip + .Lx1034_0]
 mov qword ptr [rbp + 11464], rax
 jmp xchain972_n55_α
 xchain972_n50_β:
 jmp main_γ
.Lx1034_0:
 .quad .Lx1034_0_s
.Lx1034_0_s:
 .string "Pattern match failed"
 xchain972_n51_α:
# BOX IR_CALL SNO$MKEXPR(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5808] -> [zr+5776]
 mov rax, qword ptr [rbp + 5808]
 mov qword ptr [rbp + 5776], rax
 mov rax, qword ptr [rbp + 5816]
 mov qword ptr [rbp + 5784], rax
  .section .rodata
  .Lrkfn1036: .string "SNO$MKEXPR"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1036]
 lea rsi, [rbp + 5776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 cmp eax, 99
 je xchain972_n30_α
 jmp xchain972_n56_α
 xchain972_n51_β:
 jmp xchain972_n30_α
# IR_LIT_STRING
 xchain972_n52_α:
 mov qword ptr [rbp + 6768], 1
 mov rax, qword ptr [rip + .Lx1037_0]
 mov qword ptr [rbp + 6776], rax
 jmp xchain972_n57_α
 xchain972_n52_β:
 jmp xchain972_n40_α
.Lx1037_0:
 .quad .Lx1037_0_s
.Lx1037_0_s:
 .string "'BANK'"
# IR_VAR
 xchain972_n53_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 11200], rax
 mov qword ptr [rbp + 11208], rdx
 jmp xchain972_n58_α
 xchain972_n53_β:
 jmp xchain972_n40_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain972_n54_α:
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
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
 jmp xchain972_n59_α
.Lx1039_5:
 jmp xchain972_n49_β
.Lx1039_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S1]
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
 js xchain972_n49_β
 mov r14d, eax
 lea rax, [rip + .Lx1039_6]
 sub rsp, 8
 push rax
 jmp xchain972_n59_α
.Lx1039_6:
 add rsp, 16
 jmp xchain972_n49_β
 xchain972_n54_β:
 jmp qword ptr [rsp]
# IR_ASSIGN global
 xchain972_n55_α:
 mov rsi, qword ptr [rbp + 11456]
 mov rdx, qword ptr [rbp + 11464]
 mov rdi, qword ptr [rip + .Lx1040_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 11440], rax
 mov qword ptr [rbp + 11448], rdx
 jmp main_γ
 xchain972_n55_β:
 jmp main_γ
.Lx1040_0:
 .quad .Lx1040_0_s
.Lx1040_0_s:
 .string "OUTPUT"
# IR_LIT_STRING
 xchain972_n56_α:
 mov qword ptr [rbp + 5952], 1
 mov rax, qword ptr [rip + .Lx1041_0]
 mov qword ptr [rbp + 5960], rax
 jmp xchain972_n60_α
 xchain972_n56_β:
 jmp xchain972_n30_α
.Lx1041_0:
 .quad .Lx1041_0_s
.Lx1041_0_s:
 .string "EXPR$2"
 xchain972_n57_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052528]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052536]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1043_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1043_5
 mov rax, qword ptr [rbp + 6768]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 6776]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1043_6]
 lea rdx, [rip + .Lx1043_7]
 jmp rax
.Lx1043_6:
 mov rdi, qword ptr [1879052528]
 mov rsi, qword ptr [1879052536]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052528], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052536], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1043_2
.Lx1043_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052528], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052536], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1043_2
.Lx1043_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 6768]
 mov rdx, qword ptr [rbp + 6776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1043_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1043_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1043_3]
 lea rdx, [rip + .Lx1043_4]
 jmp rax
.Lx1043_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1043_2
.Lx1043_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1043_2
.Lx1043_1:
 call rt_faildescr@PLT
.Lx1043_2:
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n61_α
 xchain972_n57_β:
 jmp xchain972_n40_α
.Lx1043_0:
 .quad .Lx1043_0_s
.Lx1043_0_s:
 .string "Push_list"
 xchain972_n58_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11168]
 mov rsi, qword ptr [rbp + 11176]
 mov rdx, qword ptr [rbp + 11200]
 mov rcx, qword ptr [rbp + 11208]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11136], rax
 mov qword ptr [rbp + 11144], rdx
 jmp xchain972_n62_α
 xchain972_n58_β:
 jmp xchain972_n40_α
# IR_MATCH_RELEASE
 xchain972_n59_α:
 mov rax, qword ptr [rbp + 11288]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 11296]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 11344]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx1046_1:
 test rax, rax
 je .Lx1046_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1046_3]
 lea rdx, [rip + .Lx1046_4]
 jmp rax
.Lx1046_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1046_1
.Lx1046_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx1046_1
.Lx1046_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 11312]
 mov rbp, qword ptr [rbp + 11320]
 jmp xchain972_n63_α
 xchain972_n60_α:
# BOX IR_CALL SNO$MKEXPR(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5952] -> [zr+5920]
 mov rax, qword ptr [rbp + 5952]
 mov qword ptr [rbp + 5920], rax
 mov rax, qword ptr [rbp + 5960]
 mov qword ptr [rbp + 5928], rax
  .section .rodata
  .Lrkfn1048: .string "SNO$MKEXPR"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1048]
 lea rsi, [rbp + 5920]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5904], rax
 mov qword ptr [rbp + 5912], rdx
 cmp eax, 99
 je xchain972_n30_α
 jmp xchain972_n64_α
 xchain972_n60_β:
 jmp xchain972_n30_α
 xchain972_n61_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6480]
 mov rsi, qword ptr [rbp + 6488]
 mov rdx, qword ptr [rbp + 6720]
 mov rcx, qword ptr [rbp + 6728]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6448], rax
 mov qword ptr [rbp + 6456], rdx
 jmp xchain972_n65_α
 xchain972_n61_β:
 jmp xchain972_n40_α
# IR_VAR
 xchain972_n62_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 11232], rax
 mov qword ptr [rbp + 11240], rdx
 jmp xchain972_n66_α
 xchain972_n62_β:
 jmp xchain972_n40_α
 xchain972_n63_α:
 sub rsp, 32
 mov rax, qword ptr [1879052336]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052344]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052800]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052808]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1052_0]
 mov esi, 1
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1052_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1052_6]
 lea rdx, [rip + .Lx1052_7]
 jmp rax
.Lx1052_6:
 mov rdi, qword ptr [1879052800]
 mov rsi, qword ptr [1879052808]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052808], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052336], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052344], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1052_2
.Lx1052_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052800], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052808], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052336], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052344], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1052_2
.Lx1052_5:
 add rsp, 32
 mov rdi, qword ptr [rip + .Lx1052_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1052_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1052_3]
 lea rdx, [rip + .Lx1052_4]
 jmp rax
.Lx1052_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1052_2
.Lx1052_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1052_2
.Lx1052_1:
 call rt_faildescr@PLT
.Lx1052_2:
 mov qword ptr [rbp + 11408], rax
 mov qword ptr [rbp + 11416], rdx
 cmp eax, 99
 je main_γ
 jmp xchain972_n67_α
 xchain972_n63_β:
 jmp main_γ
.Lx1052_0:
 .quad .Lx1052_0_s
.Lx1052_0_s:
 .string "pp_bank"
# IR_LIT_INTEGER
 xchain972_n64_α:
 mov qword ptr [rbp + 6096], 6
 mov rax, qword ptr [rip + .Lx1053_0]
 mov qword ptr [rbp + 6104], rax
 jmp xchain972_n68_α
 xchain972_n64_β:
 jmp xchain972_n30_α
.Lx1053_0:
 .quad 42
# IR_LIT_STRING
 xchain972_n65_α:
 mov qword ptr [rbp + 6992], 1
 mov rax, qword ptr [rip + .Lx1054_0]
 mov qword ptr [rbp + 7000], rax
 jmp xchain972_n69_α
 xchain972_n65_β:
 jmp xchain972_n40_α
.Lx1054_0:
 .quad .Lx1054_0_s
.Lx1054_0_s:
 .string "'ROOT'"
 xchain972_n66_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 11136]
 mov rsi, qword ptr [rbp + 11144]
 mov rdx, qword ptr [rbp + 11232]
 mov rcx, qword ptr [rbp + 11240]
 call str_concat_d@PLT
 mov qword ptr [rbp + 11104], rax
 mov qword ptr [rbp + 11112], rdx
 jmp xchain972_n70_α
 xchain972_n66_β:
 jmp xchain972_n40_α
# IR_ASSIGN gva
 xchain972_n67_α:
 mov rax, qword ptr [rbp + 11408]
 mov rdx, qword ptr [rbp + 11416]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 11392], rax
 mov qword ptr [rbp + 11400], rdx
 jmp main_γ
 xchain972_n67_β:
 jmp main_γ
# IR_LIT_STRING
 xchain972_n68_α:
 mov qword ptr [rbp + 6128], 1
 mov rax, qword ptr [rip + .Lx1057_0]
 mov qword ptr [rbp + 6136], rax
 jmp xchain972_n71_α
 xchain972_n68_β:
 jmp xchain972_n30_α
.Lx1057_0:
 .quad .Lx1057_0_s
.Lx1057_0_s:
 .string "wrd"
 xchain972_n69_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052528]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052536]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1059_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1059_5
 mov rax, qword ptr [rbp + 6992]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 7000]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1059_6]
 lea rdx, [rip + .Lx1059_7]
 jmp rax
.Lx1059_6:
 mov rdi, qword ptr [1879052528]
 mov rsi, qword ptr [1879052536]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052528], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052536], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1059_2
.Lx1059_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052528], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052536], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1059_2
.Lx1059_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 6992]
 mov rdx, qword ptr [rbp + 7000]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1059_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1059_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1059_3]
 lea rdx, [rip + .Lx1059_4]
 jmp rax
.Lx1059_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1059_2
.Lx1059_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1059_2
.Lx1059_1:
 call rt_faildescr@PLT
.Lx1059_2:
 mov qword ptr [rbp + 6944], rax
 mov qword ptr [rbp + 6952], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n72_α
 xchain972_n69_β:
 jmp xchain972_n40_α
.Lx1059_0:
 .quad .Lx1059_0_s
.Lx1059_0_s:
 .string "Push_list"
# IR_ASSIGN gva
 xchain972_n70_α:
 mov rax, qword ptr [rbp + 11104]
 mov rdx, qword ptr [rbp + 11112]
 mov qword ptr [1879053008], rax
 mov qword ptr [1879053016], rdx
 mov qword ptr [rbp + 11088], rax
 mov qword ptr [rbp + 11096], rdx
 jmp xchain972_n40_α
 xchain972_n70_β:
 jmp xchain972_n40_α
# IR_VAR
 xchain972_n71_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 jmp xchain972_n73_α
 xchain972_n71_β:
 jmp xchain972_n30_α
# IR_LIT_STRING
 xchain972_n72_α:
 mov qword ptr [rbp + 7120], 1
 mov rax, qword ptr [rip + .Lx1062_0]
 mov qword ptr [rbp + 7128], rax
 jmp xchain972_n74_α
 xchain972_n72_β:
 jmp xchain972_n40_α
.Lx1062_0:
 .quad .Lx1062_0_s
.Lx1062_0_s:
 .string "EXPR$3"
 xchain972_n73_α:
# BOX CALL SNO$PBC(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+6096] -> [zr+6032]
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 6032], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 6040], rax
# marshal arg1 = producer-box slot [zr+6128] -> [zr+6048]
 mov rax, qword ptr [rbp + 6128]
 mov qword ptr [rbp + 6048], rax
 mov rax, qword ptr [rbp + 6136]
 mov qword ptr [rbp + 6056], rax
# marshal arg2 = producer-box slot [zr+6160] -> [zr+6064]
 mov rax, qword ptr [rbp + 6160]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6168]
 mov qword ptr [rbp + 6072], rax
  .section .rodata
  .Lbynamefn698: .string "SNO$PBC"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn698]
 lea rsi, [rbp + 6032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 cmp eax, 99
 je xchain972_n30_α
 jmp xchain972_n75_α
 xchain972_n73_β:
 jmp xchain972_n30_α
 xchain972_n74_α:
# BOX IR_CALL SNO$MKEXPR(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7120] -> [zr+7088]
 mov rax, qword ptr [rbp + 7120]
 mov qword ptr [rbp + 7088], rax
 mov rax, qword ptr [rbp + 7128]
 mov qword ptr [rbp + 7096], rax
  .section .rodata
  .Lrkfn1065: .string "SNO$MKEXPR"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1065]
 lea rsi, [rbp + 7088]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n76_α
 xchain972_n74_β:
 jmp xchain972_n40_α
# IR_LIT_STRING
 xchain972_n75_α:
 mov qword ptr [rbp + 6240], 1
 mov rax, qword ptr [rip + .Lx1066_0]
 mov qword ptr [rbp + 6248], rax
 jmp xchain972_n77_α
 xchain972_n75_β:
 jmp xchain972_n30_α
.Lx1066_0:
 .quad .Lx1066_0_s
.Lx1066_0_s:
 .string "wrd"
 xchain972_n76_α:
# BOX CALL SNO$PARB(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+7072] -> [zr+7040]
 mov rax, qword ptr [rbp + 7072]
 mov qword ptr [rbp + 7040], rax
 mov rax, qword ptr [rbp + 7080]
 mov qword ptr [rbp + 7048], rax
  .section .rodata
  .Lbynamefn701: .string "SNO$PARB"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn701]
 lea rsi, [rbp + 7040]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7024], rax
 mov qword ptr [rbp + 7032], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n78_α
 xchain972_n76_β:
 jmp xchain972_n40_α
 xchain972_n77_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1069_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1069_5
 mov rax, qword ptr [rbp + 6240]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 6248]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1069_6]
 lea rdx, [rip + .Lx1069_7]
 jmp rax
.Lx1069_6:
 mov rdi, qword ptr [1879052560]
 mov rsi, qword ptr [1879052568]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052568], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1069_2
.Lx1069_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052560], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052568], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1069_2
.Lx1069_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 6240]
 mov rdx, qword ptr [rbp + 6248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1069_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1069_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1069_3]
 lea rdx, [rip + .Lx1069_4]
 jmp rax
.Lx1069_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1069_2
.Lx1069_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1069_2
.Lx1069_1:
 call rt_faildescr@PLT
.Lx1069_2:
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain972_n30_α
 jmp xchain972_n79_α
 xchain972_n77_β:
 jmp xchain972_n30_α
.Lx1069_0:
 .quad .Lx1069_0_s
.Lx1069_0_s:
 .string "Push_item"
 xchain972_n78_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6944]
 mov rsi, qword ptr [rbp + 6952]
 mov rdx, qword ptr [rbp + 7024]
 mov rcx, qword ptr [rbp + 7032]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 jmp xchain972_n80_α
 xchain972_n78_β:
 jmp xchain972_n40_α
 xchain972_n79_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6016]
 mov rsi, qword ptr [rbp + 6024]
 mov rdx, qword ptr [rbp + 6192]
 mov rcx, qword ptr [rbp + 6200]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain972_n81_α
 xchain972_n79_β:
 jmp xchain972_n30_α
# IR_LIT_STRING
 xchain972_n80_α:
 mov qword ptr [rbp + 7200], 1
 mov rax, qword ptr [rip + .Lx1072_0]
 mov qword ptr [rbp + 7208], rax
 jmp xchain972_n82_α
 xchain972_n80_β:
 jmp xchain972_n40_α
.Lx1072_0:
 .quad .Lx1072_0_s
.Lx1072_0_s:
 .string "EXPR$4"
 xchain972_n81_α:
# BOX CALL SNO$PBALT(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+5904] -> [zr+5856]
 mov rax, qword ptr [rbp + 5904]
 mov qword ptr [rbp + 5856], rax
 mov rax, qword ptr [rbp + 5912]
 mov qword ptr [rbp + 5864], rax
# marshal arg1 = producer-box slot [zr+5984] -> [zr+5872]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 5872], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 5880], rax
  .section .rodata
  .Lbynamefn706: .string "SNO$PBALT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn706]
 lea rsi, [rbp + 5856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5840], rax
 mov qword ptr [rbp + 5848], rdx
 cmp eax, 99
 je xchain972_n30_α
 jmp xchain972_n83_α
 xchain972_n81_β:
 jmp xchain972_n30_α
 xchain972_n82_α:
# BOX IR_CALL SNO$MKEXPR(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7200] -> [zr+7168]
 mov rax, qword ptr [rbp + 7200]
 mov qword ptr [rbp + 7168], rax
 mov rax, qword ptr [rbp + 7208]
 mov qword ptr [rbp + 7176], rax
  .section .rodata
  .Lrkfn1075: .string "SNO$MKEXPR"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1075]
 lea rsi, [rbp + 7168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n84_α
 xchain972_n82_β:
 jmp xchain972_n40_α
 xchain972_n83_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5760]
 mov rsi, qword ptr [rbp + 5768]
 mov rdx, qword ptr [rbp + 5840]
 mov rcx, qword ptr [rbp + 5848]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain972_n85_α
 xchain972_n83_β:
 jmp xchain972_n30_α
 xchain972_n84_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6912]
 mov rsi, qword ptr [rbp + 6920]
 mov rdx, qword ptr [rbp + 7152]
 mov rcx, qword ptr [rbp + 7160]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6880], rax
 mov qword ptr [rbp + 6888], rdx
 jmp xchain972_n86_α
 xchain972_n84_β:
 jmp xchain972_n40_α
 xchain972_n85_α:
# BOX CALL SNO$PARB(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+5728] -> [zr+5696]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5696], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5704], rax
  .section .rodata
  .Lbynamefn710: .string "SNO$PARB"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn710]
 lea rsi, [rbp + 5696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 cmp eax, 99
 je xchain972_n30_α
 jmp xchain972_n87_α
 xchain972_n85_β:
 jmp xchain972_n30_α
 xchain972_n86_α:
 sub rsp, 16
 mov rax, qword ptr [1879052592]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052600]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1080_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1080_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1080_6]
 lea rdx, [rip + .Lx1080_7]
 jmp rax
.Lx1080_6:
 mov rdi, qword ptr [1879052592]
 mov rsi, qword ptr [1879052600]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1080_2
.Lx1080_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1080_2
.Lx1080_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1080_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1080_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1080_3]
 lea rdx, [rip + .Lx1080_4]
 jmp rax
.Lx1080_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1080_2
.Lx1080_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1080_2
.Lx1080_1:
 call rt_faildescr@PLT
.Lx1080_2:
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n88_α
 xchain972_n86_β:
 jmp xchain972_n40_α
.Lx1080_0:
 .quad .Lx1080_0_s
.Lx1080_0_s:
 .string "Pop_list"
 xchain972_n87_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5328]
 mov rsi, qword ptr [rbp + 5336]
 mov rdx, qword ptr [rbp + 5680]
 mov rcx, qword ptr [rbp + 5688]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5296], rax
 mov qword ptr [rbp + 5304], rdx
 jmp xchain972_n89_α
 xchain972_n87_β:
 jmp xchain972_n30_α
 xchain972_n88_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6880]
 mov rsi, qword ptr [rbp + 6888]
 mov rdx, qword ptr [rbp + 7232]
 mov rcx, qword ptr [rbp + 7240]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain972_n90_α
 xchain972_n88_β:
 jmp xchain972_n40_α
 xchain972_n89_α:
 sub rsp, 16
 mov rax, qword ptr [1879052592]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052600]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx1084_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1084_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1084_6]
 lea rdx, [rip + .Lx1084_7]
 jmp rax
.Lx1084_6:
 mov rdi, qword ptr [1879052592]
 mov rsi, qword ptr [1879052600]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1084_2
.Lx1084_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1084_2
.Lx1084_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx1084_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1084_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1084_3]
 lea rdx, [rip + .Lx1084_4]
 jmp rax
.Lx1084_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1084_2
.Lx1084_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1084_2
.Lx1084_1:
 call rt_faildescr@PLT
.Lx1084_2:
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je xchain972_n30_α
 jmp xchain972_n91_α
 xchain972_n89_β:
 jmp xchain972_n30_α
.Lx1084_0:
 .quad .Lx1084_0_s
.Lx1084_0_s:
 .string "Pop_list"
 xchain972_n90_α:
# BOX CALL SNO$PARB(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6816]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6824], rax
  .section .rodata
  .Lbynamefn715: .string "SNO$PARB"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn715]
 lea rsi, [rbp + 6816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6800], rax
 mov qword ptr [rbp + 6808], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n92_α
 xchain972_n90_β:
 jmp xchain972_n40_α
 xchain972_n91_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5296]
 mov rsi, qword ptr [rbp + 5304]
 mov rdx, qword ptr [rbp + 6272]
 mov rcx, qword ptr [rbp + 6280]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5264], rax
 mov qword ptr [rbp + 5272], rdx
 jmp xchain972_n93_α
 xchain972_n91_β:
 jmp xchain972_n30_α
 xchain972_n92_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6448]
 mov rsi, qword ptr [rbp + 6456]
 mov rdx, qword ptr [rbp + 6800]
 mov rcx, qword ptr [rbp + 6808]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 jmp xchain972_n94_α
 xchain972_n92_β:
 jmp xchain972_n40_α
# IR_LIT_STRING
 xchain972_n93_α:
 mov qword ptr [rbp + 6304], 1
 mov rax, qword ptr [rip + .Lx1088_0]
 mov qword ptr [rbp + 6312], rax
 jmp xchain972_n95_α
 xchain972_n93_β:
 jmp xchain972_n30_α
.Lx1088_0:
 .quad .Lx1088_0_s
.Lx1088_0_s:
 .string ")"
# IR_LIT_STRING
 xchain972_n94_α:
 mov qword ptr [rbp + 7312], 1
 mov rax, qword ptr [rip + .Lx1089_0]
 mov qword ptr [rbp + 7320], rax
 jmp xchain972_n96_α
 xchain972_n94_β:
 jmp xchain972_n40_α
.Lx1089_0:
 .quad .Lx1089_0_s
.Lx1089_0_s:
 .string "'bank'"
 xchain972_n95_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5264]
 mov rsi, qword ptr [rbp + 5272]
 mov rdx, qword ptr [rbp + 6304]
 mov rcx, qword ptr [rbp + 6312]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 jmp xchain972_n97_α
 xchain972_n95_β:
 jmp xchain972_n30_α
 xchain972_n96_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052624]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052632]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx1092_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx1092_5
 mov rax, qword ptr [rbp + 7312]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 7320]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1092_6]
 lea rdx, [rip + .Lx1092_7]
 jmp rax
.Lx1092_6:
 mov rdi, qword ptr [1879052624]
 mov rsi, qword ptr [1879052632]
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052624], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052632], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx1092_2
.Lx1092_7:
 mov rax, qword ptr [rsp + 16]
 mov qword ptr [1879052624], rax
 mov rax, qword ptr [rsp + 24]
 mov qword ptr [1879052632], rax
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052504], rax
 add rsp, 32
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx1092_2
.Lx1092_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 7312]
 mov rdx, qword ptr [rbp + 7320]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx1092_0]
 mov esi, 1
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
 mov qword ptr [rbp + 7264], rax
 mov qword ptr [rbp + 7272], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n98_α
 xchain972_n96_β:
 jmp xchain972_n40_α
.Lx1092_0:
 .quad .Lx1092_0_s
.Lx1092_0_s:
 .string "Pop_final"
# IR_ASSIGN gva
 xchain972_n97_α:
 mov rax, qword ptr [rbp + 5232]
 mov rdx, qword ptr [rbp + 5240]
 mov qword ptr [1879052912], rax
 mov qword ptr [1879052920], rdx
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain972_n30_α
 xchain972_n97_β:
 jmp xchain972_n30_α
 xchain972_n98_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6416]
 mov rsi, qword ptr [rbp + 6424]
 mov rdx, qword ptr [rbp + 7264]
 mov rcx, qword ptr [rbp + 7272]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6384], rax
 mov qword ptr [rbp + 6392], rdx
 jmp xchain972_n99_α
 xchain972_n98_β:
 jmp xchain972_n40_α
# IR_LIT_INTEGER
 xchain972_n99_α:
 mov qword ptr [rbp + 7408], 6
 mov rax, qword ptr [rip + .Lx1095_0]
 mov qword ptr [rbp + 7416], rax
 jmp xchain972_n100_α
 xchain972_n99_β:
 jmp xchain972_n40_α
.Lx1095_0:
 .quad 27
# IR_LIT_INTEGER
 xchain972_n100_α:
 mov qword ptr [rbp + 7440], 6
 mov rax, qword ptr [rip + .Lx1096_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain972_n101_α
 xchain972_n100_β:
 jmp xchain972_n40_α
.Lx1096_0:
 .quad 0
 xchain972_n101_α:
# BOX CALL SNO$PBN(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+7408] -> [zr+7360]
 mov rax, qword ptr [rbp + 7408]
 mov qword ptr [rbp + 7360], rax
 mov rax, qword ptr [rbp + 7416]
 mov qword ptr [rbp + 7368], rax
# marshal arg1 = producer-box slot [zr+7440] -> [zr+7376]
 mov rax, qword ptr [rbp + 7440]
 mov qword ptr [rbp + 7376], rax
 mov rax, qword ptr [rbp + 7448]
 mov qword ptr [rbp + 7384], rax
  .section .rodata
  .Lbynamefn726: .string "SNO$PBN"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn726]
 lea rsi, [rbp + 7360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 cmp eax, 99
 je xchain972_n40_α
 jmp xchain972_n102_α
 xchain972_n101_β:
 jmp xchain972_n40_α
 xchain972_n102_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6384]
 mov rsi, qword ptr [rbp + 6392]
 mov rdx, qword ptr [rbp + 7344]
 mov rcx, qword ptr [rbp + 7352]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 jmp xchain972_n103_α
 xchain972_n102_β:
 jmp xchain972_n40_α
# IR_ASSIGN gva
 xchain972_n103_α:
 mov rax, qword ptr [rbp + 6352]
 mov rdx, qword ptr [rbp + 6360]
 mov qword ptr [1879052960], rax
 mov qword ptr [1879052968], rdx
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 jmp xchain972_n40_α
 xchain972_n103_β:
 jmp xchain972_n40_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 11496]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 11496]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
.section .rodata
.S0: .string "nl"
.S1: .string "treebank"
.text
