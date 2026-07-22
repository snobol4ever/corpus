  .intel_syntax noprefix
  .text
  .globl proc_list_reverse_α
proc_list_reverse_α:
#=======================================================================================================================
    .global proc_list_reverse_α
    .global proc_list_reverse_β
    .global proc_list_reverse_γ
    .global proc_list_reverse_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_list_reverse_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_stk_push_frame_α
proc_stk_push_frame_α:
#=======================================================================================================================
    .global proc_stk_push_frame_α
    .global proc_stk_push_frame_β
    .global proc_stk_push_frame_γ
    .global proc_stk_push_frame_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_stk_push_frame_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_stk_push_item_α
proc_stk_push_item_α:
#=======================================================================================================================
    .global proc_stk_push_item_α
    .global proc_stk_push_item_β
    .global proc_stk_push_item_γ
    .global proc_stk_push_item_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_stk_push_item_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_stk_pop_into_parent_α
proc_stk_pop_into_parent_α:
#=======================================================================================================================
    .global proc_stk_pop_into_parent_α
    .global proc_stk_pop_into_parent_β
    .global proc_stk_pop_into_parent_γ
    .global proc_stk_pop_into_parent_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_stk_pop_into_parent_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_stk_pop_final_α
proc_stk_pop_final_α:
#=======================================================================================================================
    .global proc_stk_pop_final_α
    .global proc_stk_pop_final_β
    .global proc_stk_pop_final_γ
    .global proc_stk_pop_final_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_stk_pop_final_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_init_list_α
proc_init_list_α:
#=======================================================================================================================
    .global proc_init_list_α
    .global proc_init_list_β
    .global proc_init_list_γ
    .global proc_init_list_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_init_list_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_Init_list_α
proc_Init_list_α:
#=======================================================================================================================
    .global proc_Init_list_α
    .global proc_Init_list_β
    .global proc_Init_list_γ
    .global proc_Init_list_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_Init_list_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_push_list_α
proc_push_list_α:
#=======================================================================================================================
    .global proc_push_list_α
    .global proc_push_list_β
    .global proc_push_list_γ
    .global proc_push_list_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_push_list_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_Push_list_α
proc_Push_list_α:
#=======================================================================================================================
    .global proc_Push_list_α
    .global proc_Push_list_β
    .global proc_Push_list_γ
    .global proc_Push_list_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_Push_list_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_push_item_α
proc_push_item_α:
#=======================================================================================================================
    .global proc_push_item_α
    .global proc_push_item_β
    .global proc_push_item_γ
    .global proc_push_item_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_push_item_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_Push_item_α
proc_Push_item_α:
#=======================================================================================================================
    .global proc_Push_item_α
    .global proc_Push_item_β
    .global proc_Push_item_γ
    .global proc_Push_item_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_Push_item_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_pop_list_α
proc_pop_list_α:
#=======================================================================================================================
    .global proc_pop_list_α
    .global proc_pop_list_β
    .global proc_pop_list_γ
    .global proc_pop_list_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_pop_list_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_Pop_list_α
proc_Pop_list_α:
#=======================================================================================================================
    .global proc_Pop_list_α
    .global proc_Pop_list_β
    .global proc_Pop_list_γ
    .global proc_Pop_list_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
proc_Pop_list_α_body:
# IR_LIT_STRING
 xchain167_n0_α:
 mov qword ptr [rbp + 4144], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [rbp + 4152], rax
 jmp xchain167_n1_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "PAT$0"
 xchain167_n1_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4144] -> [zr+4112]
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 4120], rax
  .section .rodata
  .Lrkfn170: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn170]
 lea rsi, [rbp + 4112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je proc_Pop_list_γ
 jmp xchain167_n2_α
 xchain167_n1_β:
 jmp proc_Pop_list_γ
# IR_ASSIGN gva
 xchain167_n2_α:
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
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_Pop_list_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_pop_final_α
proc_pop_final_α:
#=======================================================================================================================
    .global proc_pop_final_α
    .global proc_pop_final_β
    .global proc_pop_final_γ
    .global proc_pop_final_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
proc_pop_final_α_body:
# IR_VAR
 xchain172_n0_α:
 mov rax, qword ptr [1879052368]
 mov rdx, qword ptr [1879052376]
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 jmp xchain172_n1_α
 xchain172_n1_α:
 sub rsp, 32
 mov rax, qword ptr [1879052448]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052456]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052432]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052440]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx175_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx175_5
 mov rax, qword ptr [rbp + 4240]
 mov qword ptr [1879052448], rax
 mov rax, qword ptr [rbp + 4248]
 mov qword ptr [1879052456], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx175_6]
 lea rdx, [rip + .Lx175_7]
 jmp rax
.Lx175_6:
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
 jmp .Lx175_2
.Lx175_7:
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
 jmp .Lx175_2
.Lx175_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 4240]
 mov rdx, qword ptr [rbp + 4248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx175_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx175_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx175_3]
 lea rdx, [rip + .Lx175_4]
 jmp rax
.Lx175_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx175_2
.Lx175_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx175_2
.Lx175_1:
 call rt_faildescr@PLT
.Lx175_2:
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain172_n2_α
 jmp xchain172_n3_α
 xchain172_n1_β:
 jmp xchain172_n2_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "stk_pop_final"
# IR_LIT_STRING
 xchain172_n2_α:
 mov qword ptr [rbp + 4336], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 4344], rax
 jmp xchain172_n4_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "dummy"
# IR_ASSIGN gva
 xchain172_n3_α:
 mov rax, qword ptr [rbp + 4192]
 mov rdx, qword ptr [rbp + 4200]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain172_n2_α
 xchain172_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4336] -> [zr+4304]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4304], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4312], rax
  .section .rodata
  .Lrkfn179: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn179]
 lea rsi, [rbp + 4304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 cmp eax, 99
 je xchain172_n6_α
 jmp xchain172_n5_α
 xchain172_n4_β:
 jmp xchain172_n6_α
# IR_ASSIGN gva
 xchain172_n5_α:
 mov rax, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
 mov qword ptr [1879052608], rax
 mov qword ptr [1879052616], rdx
 mov qword ptr [rbp + 4272], rax
 mov qword ptr [rbp + 4280], rdx
 jmp xchain172_n6_α
# IR_LIT_STRING
 xchain172_n6_α:
 mov qword ptr [rbp + 16], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 24], rax
 jmp xchain172_n7_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string ""
 xchain172_n7_α:
# BOX IR_CALL SNO$NRET(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16] -> [zr+64]
 mov rax, qword ptr [rbp + 16]
 mov qword ptr [rbp + 64], rax
 mov rax, qword ptr [rbp + 24]
 mov qword ptr [rbp + 72], rax
  .section .rodata
  .Lrkfn183: .string "SNO$NRET"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn183]
 lea rsi, [rbp + 64]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_pop_final_ω
 jmp proc_pop_final_γ
 xchain172_n7_β:
 jmp proc_pop_final_ω
proc_pop_final_res:
add rsp, 8
pop rbp
proc_pop_final_β:
jmp proc_pop_final_ω
proc_pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_pop_final_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_Pop_final_α
proc_Pop_final_α:
#=======================================================================================================================
    .global proc_Pop_final_α
    .global proc_Pop_final_β
    .global proc_Pop_final_γ
    .global proc_Pop_final_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
proc_Pop_final_α_body:
# IR_LIT_STRING
 xchain184_n0_α:
 mov qword ptr [rbp + 4496], 1
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 4504], rax
 jmp xchain184_n1_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "epsilon . *pop_final("
# IR_VAR
 xchain184_n1_α:
 mov rax, qword ptr [1879052496]
 mov rdx, qword ptr [1879052504]
 mov qword ptr [rbp + 4528], rax
 mov qword ptr [rbp + 4536], rdx
 jmp xchain184_n2_α
 xchain184_n2_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4496]
 mov rsi, qword ptr [rbp + 4504]
 mov rdx, qword ptr [rbp + 4528]
 mov rcx, qword ptr [rbp + 4536]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4464], rax
 mov qword ptr [rbp + 4472], rdx
 jmp xchain184_n3_α
# IR_LIT_STRING
 xchain184_n3_α:
 mov qword ptr [rbp + 4560], 1
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 4568], rax
 jmp xchain184_n4_α
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string ")"
 xchain184_n4_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4464]
 mov rsi, qword ptr [rbp + 4472]
 mov rdx, qword ptr [rbp + 4560]
 mov rcx, qword ptr [rbp + 4568]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4432], rax
 mov qword ptr [rbp + 4440], rdx
 jmp xchain184_n5_α
 xchain184_n5_α:
# BOX IR_CALL EVAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4432] -> [zr+4400]
 mov rax, qword ptr [rbp + 4432]
 mov qword ptr [rbp + 4400], rax
 mov rax, qword ptr [rbp + 4440]
 mov qword ptr [rbp + 4408], rax
  .section .rodata
  .Lrkfn191: .string "EVAL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn191]
 lea rsi, [rbp + 4400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 cmp eax, 99
 je proc_Pop_final_γ
 jmp xchain184_n6_α
 xchain184_n5_β:
 jmp proc_Pop_final_γ
# IR_ASSIGN gva
 xchain184_n6_α:
 mov rax, qword ptr [rbp + 4384]
 mov rdx, qword ptr [rbp + 4392]
 mov qword ptr [1879052624], rax
 mov qword ptr [1879052632], rdx
 mov qword ptr [rbp + 4368], rax
 mov qword ptr [rbp + 4376], rdx
 jmp proc_Pop_final_γ
proc_Pop_final_res:
add rsp, 8
pop rbp
proc_Pop_final_β:
jmp proc_Pop_final_ω
proc_Pop_final_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_Pop_final_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_node_repr_α
proc_node_repr_α:
#=======================================================================================================================
    .global proc_node_repr_α
    .global proc_node_repr_β
    .global proc_node_repr_γ
    .global proc_node_repr_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
proc_node_repr_α_body:
# IR_VAR
 xchain193_n0_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 jmp xchain193_n1_α
 xchain193_n1_α:
# BOX IR_CALL DATATYPE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5504] -> [zr+5472]
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [rbp + 5472], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [rbp + 5480], rax
  .section .rodata
  .Lrkfn196: .string "DATATYPE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn196]
 lea rsi, [rbp + 5472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5456], rax
 mov qword ptr [rbp + 5464], rdx
 cmp eax, 99
 je xchain193_n2_α
 jmp xchain193_n3_α
 xchain193_n1_β:
 jmp xchain193_n2_α
# IR_LIT_STRING
 xchain193_n2_α:
 mov qword ptr [rbp + 5792], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 5800], rax
 jmp xchain193_n4_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "("
# IR_KEYWORD_SNOBOL4_read
 xchain193_n3_α:
 mov rdi, qword ptr [rip + .Lx198_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 jmp xchain193_n5_α
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "LCASE"
# IR_ASSIGN gva
 xchain193_n4_α:
 mov rax, qword ptr [rbp + 5792]
 mov rdx, qword ptr [rbp + 5800]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 jmp xchain193_n6_α
# IR_KEYWORD_SNOBOL4_read
 xchain193_n5_α:
 mov rdi, qword ptr [rip + .Lx200_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 jmp xchain193_n7_α
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "UCASE"
# IR_LIT_STRING
 xchain193_n6_α:
 mov qword ptr [rbp + 5840], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 5848], rax
 jmp xchain193_n8_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string ""
 xchain193_n7_α:
# BOX IR_CALL REPLACE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5456] -> [zr+5392]
 mov rax, qword ptr [rbp + 5456]
 mov qword ptr [rbp + 5392], rax
 mov rax, qword ptr [rbp + 5464]
 mov qword ptr [rbp + 5400], rax
# marshal arg1 = producer-box slot [zr+5536] -> [zr+5408]
 mov rax, qword ptr [rbp + 5536]
 mov qword ptr [rbp + 5408], rax
 mov rax, qword ptr [rbp + 5544]
 mov qword ptr [rbp + 5416], rax
# marshal arg2 = producer-box slot [zr+5552] -> [zr+5424]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5424], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5432], rax
  .section .rodata
  .Lrkfn203: .string "REPLACE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn203]
 lea rsi, [rbp + 5392]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 cmp eax, 99
 je xchain193_n2_α
 jmp xchain193_n9_α
 xchain193_n7_β:
 jmp xchain193_n2_α
# IR_ASSIGN gva
 xchain193_n8_α:
 mov rax, qword ptr [rbp + 5840]
 mov rdx, qword ptr [rbp + 5848]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 jmp xchain193_n10_α
# IR_LIT_STRING
 xchain193_n9_α:
 mov qword ptr [rbp + 5568], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 5576], rax
 jmp xchain193_n11_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "STRING"
# IR_VAR
 xchain193_n10_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 jmp xchain193_n12_α
 xchain193_n11_α:
# BOX IR_CALL IDENT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5376] -> [zr+5328]
 mov rax, qword ptr [rbp + 5376]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 5384]
 mov qword ptr [rbp + 5336], rax
# marshal arg1 = producer-box slot [zr+5568] -> [zr+5344]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5344], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5352], rax
  .section .rodata
  .Lrkfn208: .string "IDENT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn208]
 lea rsi, [rbp + 5328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain193_n2_α
 jmp xchain193_n14_α
 xchain193_n11_β:
 jmp xchain193_n2_α
# IR_ASSIGN gva
 xchain193_n12_α:
 mov rax, qword ptr [rbp + 5888]
 mov rdx, qword ptr [rbp + 5896]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 5872], rax
 mov qword ptr [rbp + 5880], rdx
 jmp xchain193_n13_α
# IR_VAR
 xchain193_n13_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 5968], rax
 mov qword ptr [rbp + 5976], rdx
 jmp xchain193_n15_α
# IR_LIT_STRING
 xchain193_n14_α:
 mov qword ptr [rbp + 5680], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 5688], rax
 jmp xchain193_n17_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "'"
 xchain193_n15_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5968] -> [zr+5936]
 mov rax, qword ptr [rbp + 5968]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 5976]
 mov qword ptr [rbp + 5944], rax
  .section .rodata
  .Lrkfn213: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn213]
 lea rsi, [rbp + 5936]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je xchain193_n16_α
 jmp xchain193_n18_α
 xchain193_n15_β:
 jmp xchain193_n16_α
# IR_VAR
 xchain193_n16_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 6464], rax
 mov qword ptr [rbp + 6472], rdx
 jmp xchain193_n19_α
# IR_VAR
 xchain193_n17_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 jmp xchain193_n20_α
# IR_VAR
 xchain193_n18_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 6080], rax
 mov qword ptr [rbp + 6088], rdx
 jmp xchain193_n21_α
# IR_LIT_STRING
 xchain193_n19_α:
 mov qword ptr [rbp + 6496], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 6504], rax
 jmp xchain193_n23_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string ")"
 xchain193_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5680]
 mov rsi, qword ptr [rbp + 5688]
 mov rdx, qword ptr [rbp + 5712]
 mov rcx, qword ptr [rbp + 5720]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5648], rax
 mov qword ptr [rbp + 5656], rdx
 jmp xchain193_n24_α
# IR_VAR
 xchain193_n21_α:
 mov rax, qword ptr [1879052704]
 mov rdx, qword ptr [1879052712]
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain193_n25_α
# IR_LIT_STRING
 xchain193_n22_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain193_n26_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string ", "
 xchain193_n23_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6464]
 mov rsi, qword ptr [rbp + 6472]
 mov rdx, qword ptr [rbp + 6496]
 mov rcx, qword ptr [rbp + 6504]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 jmp xchain193_n27_α
# IR_LIT_STRING
 xchain193_n24_α:
 mov qword ptr [rbp + 5744], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 5752], rax
 jmp xchain193_n28_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "'"
 xchain193_n25_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6080]
 mov rsi, qword ptr [rbp + 6088]
 mov rdx, qword ptr [rbp + 6112]
 mov rcx, qword ptr [rbp + 6120]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 jmp xchain193_n29_α
# IR_ASSIGN gva
 xchain193_n26_α:
 mov rax, qword ptr [rbp + 6288]
 mov rdx, qword ptr [rbp + 6296]
 mov qword ptr [1879052704], rax
 mov qword ptr [1879052712], rdx
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 jmp xchain193_n30_α
# IR_ASSIGN gva
 xchain193_n27_α:
 mov rax, qword ptr [rbp + 6432]
 mov rdx, qword ptr [rbp + 6440]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 jmp proc_node_repr_γ
 xchain193_n28_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5648]
 mov rsi, qword ptr [rbp + 5656]
 mov rdx, qword ptr [rbp + 5744]
 mov rcx, qword ptr [rbp + 5752]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 jmp xchain193_n31_α
# IR_VAR
 xchain193_n29_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain193_n32_α
# IR_VAR
 xchain193_n30_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 6384], rax
 mov qword ptr [rbp + 6392], rdx
 jmp xchain193_n33_α
# IR_ASSIGN gva
 xchain193_n31_α:
 mov rax, qword ptr [rbp + 5616]
 mov rdx, qword ptr [rbp + 5624]
 mov qword ptr [1879052640], rax
 mov qword ptr [1879052648], rdx
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp proc_node_repr_γ
 xchain193_n32_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6240] -> [zr+6208]
 mov rax, qword ptr [rbp + 6240]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 6248]
 mov qword ptr [rbp + 6216], rax
  .section .rodata
  .Lrkfn231: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn231]
 lea rsi, [rbp + 6208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6192], rax
 mov qword ptr [rbp + 6200], rdx
 cmp eax, 99
 je xchain193_n22_α
 jmp xchain193_n34_α
 xchain193_n32_β:
 jmp xchain193_n22_α
 xchain193_n33_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6384] -> [zr+6352]
 mov rax, qword ptr [rbp + 6384]
 mov qword ptr [rbp + 6352], rax
 mov rax, qword ptr [rbp + 6392]
 mov qword ptr [rbp + 6360], rax
  .section .rodata
  .Lrkfn233: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn233]
 lea rsi, [rbp + 6352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6336], rax
 mov qword ptr [rbp + 6344], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n35_α
 xchain193_n33_β:
 jmp xchain193_n13_α
 xchain193_n34_α:
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
 mov rdi, qword ptr [rip + .Lx235_0]
 mov esi, 4
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx235_5
 mov rax, qword ptr [rbp + 6192]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 6200]
 mov qword ptr [1879052664], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx235_6]
 lea rdx, [rip + .Lx235_7]
 jmp rax
.Lx235_6:
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
 jmp .Lx235_2
.Lx235_7:
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
 jmp .Lx235_2
.Lx235_5:
 add rsp, 80
 mov edi, 0
 mov rsi, qword ptr [rbp + 6192]
 mov rdx, qword ptr [rbp + 6200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx235_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx235_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx235_3]
 lea rdx, [rip + .Lx235_4]
 jmp rax
.Lx235_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx235_2
.Lx235_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx235_2
.Lx235_1:
 call rt_faildescr@PLT
.Lx235_2:
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 cmp eax, 99
 je xchain193_n22_α
 jmp xchain193_n36_α
 xchain193_n34_β:
 jmp xchain193_n22_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "node_repr"
# IR_ASSIGN gva
 xchain193_n35_α:
 mov rax, qword ptr [rbp + 6336]
 mov rdx, qword ptr [rbp + 6344]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 jmp xchain193_n13_α
 xchain193_n36_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 6048]
 mov rsi, qword ptr [rbp + 6056]
 mov rdx, qword ptr [rbp + 6144]
 mov rcx, qword ptr [rbp + 6152]
 call str_concat_d@PLT
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 jmp xchain193_n37_α
# IR_ASSIGN gva
 xchain193_n37_α:
 mov rax, qword ptr [rbp + 6016]
 mov rdx, qword ptr [rbp + 6024]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 6000], rax
 mov qword ptr [rbp + 6008], rdx
 jmp xchain193_n22_α
proc_node_repr_res:
add rsp, 8
pop rbp
proc_node_repr_β:
jmp proc_node_repr_ω
proc_node_repr_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_node_repr_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_pp_node_α
proc_pp_node_α:
#=======================================================================================================================
    .global proc_pp_node_α
    .global proc_pp_node_β
    .global proc_pp_node_γ
    .global proc_pp_node_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
proc_pp_node_α_body:
# IR_VAR
 xchain239_n0_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain239_n1_α
 xchain239_n1_α:
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
 mov rdi, qword ptr [rip + .Lx242_0]
 mov esi, 4
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx242_5
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [1879052664], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx242_6]
 lea rdx, [rip + .Lx242_7]
 jmp rax
.Lx242_6:
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
 jmp .Lx242_2
.Lx242_7:
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
 jmp .Lx242_2
.Lx242_5:
 add rsp, 80
 mov edi, 0
 mov rsi, qword ptr [rbp + 6592]
 mov rdx, qword ptr [rbp + 6600]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx242_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx242_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx242_3]
 lea rdx, [rip + .Lx242_4]
 jmp rax
.Lx242_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx242_2
.Lx242_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx242_2
.Lx242_1:
 call rt_faildescr@PLT
.Lx242_2:
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 cmp eax, 99
 je xchain239_n2_α
 jmp xchain239_n3_α
 xchain239_n1_β:
 jmp xchain239_n2_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "node_repr"
# IR_LIT_STRING
 xchain239_n2_α:
 mov qword ptr [rbp + 6704], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 6712], rax
 jmp xchain239_n4_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string " "
# IR_ASSIGN gva
 xchain239_n3_α:
 mov rax, qword ptr [rbp + 6544]
 mov rdx, qword ptr [rbp + 6552]
 mov qword ptr [1879052672], rax
 mov qword ptr [1879052680], rdx
 mov qword ptr [rbp + 6528], rax
 mov qword ptr [rbp + 6536], rdx
 jmp xchain239_n2_α
# IR_VAR
 xchain239_n4_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 6736], rax
 mov qword ptr [rbp + 6744], rdx
 jmp xchain239_n5_α
 xchain239_n5_α:
# BOX IR_CALL DUPL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6704] -> [zr+6656]
 mov rax, qword ptr [rbp + 6704]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6712]
 mov qword ptr [rbp + 6664], rax
# marshal arg1 = producer-box slot [zr+6736] -> [zr+6672]
 mov rax, qword ptr [rbp + 6736]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 6744]
 mov qword ptr [rbp + 6680], rax
  .section .rodata
  .Lrkfn247: .string "DUPL"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn247]
 lea rsi, [rbp + 6656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 cmp eax, 99
 je xchain239_n6_α
 jmp xchain239_n7_α
 xchain239_n5_β:
 jmp xchain239_n6_α
# IR_LIT_INTEGER
 xchain239_n6_α:
 mov qword ptr [rbp + 7008], 6
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain239_n8_α
.Lx248_0:
 .quad 80
# IR_ASSIGN gva
 xchain239_n7_α:
 mov rax, qword ptr [rbp + 6640]
 mov rdx, qword ptr [rbp + 6648]
 mov qword ptr [1879052768], rax
 mov qword ptr [1879052776], rdx
 mov qword ptr [rbp + 6624], rax
 mov qword ptr [rbp + 6632], rdx
 jmp xchain239_n6_α
# IR_VAR
 xchain239_n8_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 6896], rax
 mov qword ptr [rbp + 6904], rdx
 jmp xchain239_n9_α
# IR_VAR
 xchain239_n9_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 jmp xchain239_n11_α
# IR_VAR
 xchain239_n10_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain239_n12_α
 xchain239_n11_α:
# BOX IR_CALL SIZE(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6976] -> [zr+6944]
 mov rax, qword ptr [rbp + 6976]
 mov qword ptr [rbp + 6944], rax
 mov rax, qword ptr [rbp + 6984]
 mov qword ptr [rbp + 6952], rax
  .section .rodata
  .Lrkfn254: .string "SIZE"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn254]
 lea rsi, [rbp + 6944]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6928], rax
 mov qword ptr [rbp + 6936], rdx
 cmp eax, 99
 je xchain239_n10_α
 jmp xchain239_n14_α
 xchain239_n11_β:
 jmp xchain239_n10_α
# IR_LIT_STRING
 xchain239_n12_α:
 mov qword ptr [rbp + 7392], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 7400], rax
 jmp xchain239_n15_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "( "
# IR_VAR
 xchain239_n13_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 jmp xchain239_n16_α
 xchain239_n14_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 6896]
 cmp eax, 100
 je .Lx257_0
 mov eax, dword ptr [rbp + 6928]
 cmp eax, 100
 je .Lx257_0
 mov eax, dword ptr [rbp + 6896]
 cmp eax, 6
 jne .Lx257_2
 mov eax, dword ptr [rbp + 6928]
 cmp eax, 6
 jne .Lx257_2
.Lx257_1:
 mov rax, qword ptr [rbp + 6904]
 mov rcx, qword ptr [rbp + 6936]
 add rax, rcx
 mov qword ptr [rbp + 6864], 6
 mov qword ptr [rbp + 6872], rax
 jmp xchain239_n18_α
.Lx257_0:
 mov rdi, qword ptr [rbp + 6896]
 mov rsi, qword ptr [rbp + 6904]
 mov rdx, qword ptr [rbp + 6928]
 mov rcx, qword ptr [rbp + 6936]
 mov r8d, 0
 lea r9, [rbp + 6864]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain239_n18_α
.Lx257_2:
 mov rdi, qword ptr [rbp + 6896]
 mov rsi, qword ptr [rbp + 6904]
 mov rdx, qword ptr [rbp + 6928]
 mov rcx, qword ptr [rbp + 6936]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain239_n10_α
 mov qword ptr [rbp + 6864], rax
 mov qword ptr [rbp + 6872], rdx
 jmp xchain239_n18_α
 xchain239_n14_β:
 jmp xchain239_n10_α
 xchain239_n15_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7360]
 mov rsi, qword ptr [rbp + 7368]
 mov rdx, qword ptr [rbp + 7392]
 mov rcx, qword ptr [rbp + 7400]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7328], rax
 mov qword ptr [rbp + 7336], rdx
 jmp xchain239_n19_α
 xchain239_n16_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7632] -> [zr+7600]
 mov rax, qword ptr [rbp + 7632]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7640]
 mov qword ptr [rbp + 7608], rax
  .section .rodata
  .Lrkfn260: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn260]
 lea rsi, [rbp + 7600]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 cmp eax, 99
 je xchain239_n17_α
 jmp xchain239_n20_α
 xchain239_n16_β:
 jmp xchain239_n17_α
# IR_VAR
 xchain239_n17_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain239_n21_α
# IR_COERCE_NUMERIC
 xchain239_n18_α:
 mov eax, dword ptr [rbp + 7008]
 cmp eax, 7
 je .Lx263_1
 cmp eax, 6
 jne .Lx263_0
 mov eax, dword ptr [rbp + 6864]
 cmp eax, 6
 jne .Lx263_0
.Lx263_1:
 mov rax, qword ptr [rbp + 7008]
 mov qword ptr [rbp + 6832], rax
 mov rax, qword ptr [rbp + 7016]
 mov qword ptr [rbp + 6840], rax
 jmp xchain239_n22_α
.Lx263_0:
 lea rdi, [rbp + 7008]
 lea rsi, [rbp + 6864]
 lea rdx, [rbp + 6832]
 mov rcx, 111
 call rt_coerce_num2_d@PLT
 jmp xchain239_n22_α
# IR_LIT_STRING
 xchain239_n19_α:
 mov qword ptr [rbp + 7424], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 7432], rax
 jmp xchain239_n23_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "'"
# IR_ASSIGN gva
 xchain239_n20_α:
 mov rax, qword ptr [rbp + 7584]
 mov rdx, qword ptr [rbp + 7592]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 7568], rax
 mov qword ptr [rbp + 7576], rdx
 jmp xchain239_n17_α
 xchain239_n21_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7712] -> [zr+7680]
 mov rax, qword ptr [rbp + 7712]
 mov qword ptr [rbp + 7680], rax
 mov rax, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 7688], rax
  .section .rodata
  .Lrkfn267: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn267]
 lea rsi, [rbp + 7680]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7664], rax
 mov qword ptr [rbp + 7672], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp xchain239_n24_α
 xchain239_n21_β:
 jmp proc_pp_node_γ
# IR_COERCE_NUMERIC
 xchain239_n22_α:
 mov eax, dword ptr [rbp + 6864]
 cmp eax, 7
 je .Lx269_1
 cmp eax, 6
 jne .Lx269_0
 mov eax, dword ptr [rbp + 7008]
 cmp eax, 6
 jne .Lx269_0
.Lx269_1:
 mov rax, qword ptr [rbp + 6864]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6872]
 mov qword ptr [rbp + 6808], rax
 jmp xchain239_n25_α
.Lx269_0:
 lea rdi, [rbp + 6864]
 lea rsi, [rbp + 7008]
 lea rdx, [rbp + 6800]
 mov rcx, 112
 call rt_coerce_num2_d@PLT
 jmp xchain239_n25_α
 xchain239_n23_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7328]
 mov rsi, qword ptr [rbp + 7336]
 mov rdx, qword ptr [rbp + 7424]
 mov rcx, qword ptr [rbp + 7432]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7296], rax
 mov qword ptr [rbp + 7304], rdx
 jmp xchain239_n26_α
# IR_VAR
 xchain239_n24_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 jmp xchain239_n27_α
# IR_CMP_TEST
 xchain239_n25_α:
 lea rdi, [rbp + 6832]
 lea rsi, [rbp + 6800]
 call rt_cmp_d@PLT
 test eax, eax
 jle xchain239_n10_α
 mov qword ptr [rbp + 6768], 0
 mov qword ptr [rbp + 6776], 0
 jmp xchain239_n29_α
# IR_VAR
 xchain239_n26_α:
 mov rax, qword ptr [1879052656]
 mov rdx, qword ptr [1879052664]
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 jmp xchain239_n30_α
 xchain239_n27_α:
# BOX IR_CALL tail(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7808] -> [zr+7776]
 mov rax, qword ptr [rbp + 7808]
 mov qword ptr [rbp + 7776], rax
 mov rax, qword ptr [rbp + 7816]
 mov qword ptr [rbp + 7784], rax
  .section .rodata
  .Lrkfn276: .string "tail"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn276]
 lea rsi, [rbp + 7776]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7760], rax
 mov qword ptr [rbp + 7768], rdx
 cmp eax, 99
 je xchain239_n28_α
 jmp xchain239_n31_α
 xchain239_n27_β:
 jmp xchain239_n28_α
# IR_VAR
 xchain239_n28_α:
 mov rax, qword ptr [1879052784]
 mov rdx, qword ptr [1879052792]
 mov qword ptr [rbp + 7888], rax
 mov qword ptr [rbp + 7896], rdx
 jmp xchain239_n32_α
# IR_VAR
 xchain239_n29_α:
 mov rax, qword ptr [1879052768]
 mov rdx, qword ptr [1879052776]
 mov qword ptr [rbp + 7120], rax
 mov qword ptr [rbp + 7128], rdx
 jmp xchain239_n34_α
 xchain239_n30_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7504] -> [zr+7472]
 mov rax, qword ptr [rbp + 7504]
 mov qword ptr [rbp + 7472], rax
 mov rax, qword ptr [rbp + 7512]
 mov qword ptr [rbp + 7480], rax
  .section .rodata
  .Lrkfn280: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn280]
 lea rsi, [rbp + 7472]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7456], rax
 mov qword ptr [rbp + 7464], rdx
 cmp eax, 99
 je xchain239_n13_α
 jmp xchain239_n35_α
 xchain239_n30_β:
 jmp xchain239_n13_α
# IR_ASSIGN gva
 xchain239_n31_α:
 mov rax, qword ptr [rbp + 7760]
 mov rdx, qword ptr [rbp + 7768]
 mov qword ptr [1879052784], rax
 mov qword ptr [1879052792], rdx
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain239_n28_α
 xchain239_n32_α:
# BOX IR_CALL DIFFER(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7888] -> [zr+7856]
 mov rax, qword ptr [rbp + 7888]
 mov qword ptr [rbp + 7856], rax
 mov rax, qword ptr [rbp + 7896]
 mov qword ptr [rbp + 7864], rax
  .section .rodata
  .Lrkfn283: .string "DIFFER"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn283]
 lea rsi, [rbp + 7856]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 cmp eax, 99
 je xchain239_n33_α
 jmp xchain239_n36_α
 xchain239_n32_β:
 jmp xchain239_n33_α
# IR_VAR
 xchain239_n33_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 jmp xchain239_n37_α
# IR_VAR
 xchain239_n34_α:
 mov rax, qword ptr [1879052672]
 mov rdx, qword ptr [1879052680]
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 jmp xchain239_n38_α
 xchain239_n35_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7296]
 mov rsi, qword ptr [rbp + 7304]
 mov rdx, qword ptr [rbp + 7456]
 mov rcx, qword ptr [rbp + 7464]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7264], rax
 mov qword ptr [rbp + 7272], rdx
 jmp xchain239_n39_α
# IR_VAR
 xchain239_n36_α:
 mov rax, qword ptr [1879052688]
 mov rdx, qword ptr [1879052696]
 mov qword ptr [rbp + 8048], rax
 mov qword ptr [rbp + 8056], rdx
 jmp xchain239_n40_α
 xchain239_n37_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8384] -> [zr+8352]
 mov rax, qword ptr [rbp + 8384]
 mov qword ptr [rbp + 8352], rax
 mov rax, qword ptr [rbp + 8392]
 mov qword ptr [rbp + 8360], rax
  .section .rodata
  .Lrkfn289: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn289]
 lea rsi, [rbp + 8352]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8336], rax
 mov qword ptr [rbp + 8344], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp xchain239_n42_α
 xchain239_n37_β:
 jmp proc_pp_node_γ
 xchain239_n38_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7120]
 mov rsi, qword ptr [rbp + 7128]
 mov rdx, qword ptr [rbp + 7152]
 mov rcx, qword ptr [rbp + 7160]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 jmp xchain239_n43_α
# IR_LIT_STRING
 xchain239_n39_α:
 mov qword ptr [rbp + 7536], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 7544], rax
 jmp xchain239_n44_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "',"
 xchain239_n40_α:
# BOX IR_CALL head(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8048] -> [zr+8016]
 mov rax, qword ptr [rbp + 8048]
 mov qword ptr [rbp + 8016], rax
 mov rax, qword ptr [rbp + 8056]
 mov qword ptr [rbp + 8024], rax
  .section .rodata
  .Lrkfn293: .string "head"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn293]
 lea rsi, [rbp + 8016]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8000], rax
 mov qword ptr [rbp + 8008], rdx
 cmp eax, 99
 je xchain239_n41_α
 jmp xchain239_n45_α
 xchain239_n40_β:
 jmp xchain239_n41_α
# IR_VAR
 xchain239_n41_α:
 mov rax, qword ptr [1879052784]
 mov rdx, qword ptr [1879052792]
 mov qword ptr [rbp + 8224], rax
 mov qword ptr [rbp + 8232], rdx
 jmp xchain239_n46_α
# IR_VAR
 xchain239_n42_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 jmp xchain239_n47_α
# IR_VAR
 xchain239_n43_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 7184], rax
 mov qword ptr [rbp + 7192], rdx
 jmp xchain239_n48_α
 xchain239_n44_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7264]
 mov rsi, qword ptr [rbp + 7272]
 mov rdx, qword ptr [rbp + 7536]
 mov rcx, qword ptr [rbp + 7544]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7232], rax
 mov qword ptr [rbp + 7240], rdx
 jmp xchain239_n49_α
# IR_VAR
 xchain239_n45_α:
 mov rax, qword ptr [1879052736]
 mov rdx, qword ptr [1879052744]
 mov qword ptr [rbp + 8112], rax
 mov qword ptr [rbp + 8120], rdx
 jmp xchain239_n50_α
# IR_ASSIGN gva
 xchain239_n46_α:
 mov rax, qword ptr [rbp + 8224]
 mov rdx, qword ptr [rbp + 8232]
 mov qword ptr [1879052688], rax
 mov qword ptr [1879052696], rdx
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 jmp xchain239_n17_α
# IR_LIT_INTEGER
 xchain239_n47_α:
 mov qword ptr [rbp + 8480], 6
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [rbp + 8488], rax
 jmp xchain239_n51_α
.Lx300_0:
 .quad 2
 xchain239_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 7088]
 mov rsi, qword ptr [rbp + 7096]
 mov rdx, qword ptr [rbp + 7184]
 mov rcx, qword ptr [rbp + 7192]
 call str_concat_d@PLT
 mov qword ptr [rbp + 7056], rax
 mov qword ptr [rbp + 7064], rdx
 jmp xchain239_n52_α
# IR_ASSIGN global
 xchain239_n49_α:
 mov rsi, qword ptr [rbp + 7232]
 mov rdx, qword ptr [rbp + 7240]
 mov rdi, qword ptr [rip + .Lx302_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 jmp xchain239_n13_α
.Lx302_0:
 .quad .Lx302_0_s
.Lx302_0_s:
 .string "OUTPUT"
# IR_LIT_INTEGER
 xchain239_n50_α:
 mov qword ptr [rbp + 8144], 6
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [rbp + 8152], rax
 jmp xchain239_n53_α
.Lx303_0:
 .quad 2
 xchain239_n51_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 8448]
 cmp eax, 100
 je .Lx304_0
 mov eax, dword ptr [rbp + 8448]
 cmp eax, 6
 jne .Lx304_2
.Lx304_1:
 mov rax, qword ptr [rbp + 8456]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 8416], 6
 mov qword ptr [rbp + 8424], rax
 jmp xchain239_n54_α
.Lx304_0:
 mov rdi, qword ptr [rbp + 8448]
 mov rsi, qword ptr [rbp + 8456]
 mov rdx, qword ptr [rbp + 8480]
 mov rcx, qword ptr [rbp + 8488]
 mov r8d, 0
 lea r9, [rbp + 8416]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain239_n54_α
.Lx304_2:
 mov rdi, qword ptr [rbp + 8448]
 mov rsi, qword ptr [rbp + 8456]
 mov rdx, qword ptr [rbp + 8480]
 mov rcx, qword ptr [rbp + 8488]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_pp_node_γ
 mov qword ptr [rbp + 8416], rax
 mov qword ptr [rbp + 8424], rdx
 jmp xchain239_n54_α
 xchain239_n51_β:
 jmp proc_pp_node_γ
# IR_ASSIGN global
 xchain239_n52_α:
 mov rsi, qword ptr [rbp + 7056]
 mov rdx, qword ptr [rbp + 7064]
 mov rdi, qword ptr [rip + .Lx305_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 jmp proc_pp_node_γ
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "OUTPUT"
 xchain239_n53_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [rbp + 8112]
 cmp eax, 100
 je .Lx306_0
 mov eax, dword ptr [rbp + 8112]
 cmp eax, 6
 jne .Lx306_2
.Lx306_1:
 mov rax, qword ptr [rbp + 8120]
 mov rcx, 2
 add rax, rcx
 mov qword ptr [rbp + 8080], 6
 mov qword ptr [rbp + 8088], rax
 jmp xchain239_n55_α
.Lx306_0:
 mov rdi, qword ptr [rbp + 8112]
 mov rsi, qword ptr [rbp + 8120]
 mov rdx, qword ptr [rbp + 8144]
 mov rcx, qword ptr [rbp + 8152]
 mov r8d, 0
 lea r9, [rbp + 8080]
 call rt_binop_overload@PLT
 test eax, eax
 jne xchain239_n55_α
.Lx306_2:
 mov rdi, qword ptr [rbp + 8112]
 mov rsi, qword ptr [rbp + 8120]
 mov rdx, qword ptr [rbp + 8144]
 mov rcx, qword ptr [rbp + 8152]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain239_n41_α
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 jmp xchain239_n55_α
 xchain239_n53_β:
 jmp xchain239_n41_α
# IR_LIT_STRING
 xchain239_n54_α:
 mov qword ptr [rbp + 8544], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [rbp + 8552], rax
 jmp xchain239_n56_α
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string ")"
# IR_LIT_STRING
 xchain239_n55_α:
 mov qword ptr [rbp + 8176], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 8184], rax
 jmp xchain239_n57_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string ","
# IR_VAR
 xchain239_n56_α:
 mov rax, qword ptr [1879052752]
 mov rdx, qword ptr [1879052760]
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
 jmp xchain239_n58_α
 xchain239_n57_α:
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
 mov rdi, qword ptr [rip + .Lx311_0]
 mov esi, 7
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx311_5
 mov rax, qword ptr [rbp + 8000]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 8008]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rbp + 8080]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 8088]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 8176]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 8184]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx311_6]
 lea rdx, [rip + .Lx311_7]
 jmp rax
.Lx311_6:
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
 jmp .Lx311_2
.Lx311_7:
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
 jmp .Lx311_2
.Lx311_5:
 add rsp, 128
 mov edi, 0
 mov rsi, qword ptr [rbp + 8000]
 mov rdx, qword ptr [rbp + 8008]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8080]
 mov rdx, qword ptr [rbp + 8088]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 8176]
 mov rdx, qword ptr [rbp + 8184]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx311_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx311_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx311_3]
 lea rdx, [rip + .Lx311_4]
 jmp rax
.Lx311_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx311_2
.Lx311_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx311_2
.Lx311_1:
 call rt_faildescr@PLT
.Lx311_2:
 mov qword ptr [rbp + 7920], rax
 mov qword ptr [rbp + 7928], rdx
 cmp eax, 99
 je xchain239_n41_α
 jmp xchain239_n41_α
 xchain239_n57_β:
 jmp xchain239_n41_α
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "pp_node"
 xchain239_n58_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8544]
 mov rsi, qword ptr [rbp + 8552]
 mov rdx, qword ptr [rbp + 8576]
 mov rcx, qword ptr [rbp + 8584]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 jmp xchain239_n59_α
 xchain239_n59_α:
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
 mov rdi, qword ptr [rip + .Lx314_0]
 mov esi, 7
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx314_5
 mov rax, qword ptr [rbp + 8336]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 8344]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rbp + 8416]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 8424]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 8512]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 8520]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx314_6]
 lea rdx, [rip + .Lx314_7]
 jmp rax
.Lx314_6:
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
 jmp .Lx314_2
.Lx314_7:
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
 jmp .Lx314_2
.Lx314_5:
 add rsp, 128
 mov edi, 0
 mov rsi, qword ptr [rbp + 8336]
 mov rdx, qword ptr [rbp + 8344]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8416]
 mov rdx, qword ptr [rbp + 8424]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 8512]
 mov rdx, qword ptr [rbp + 8520]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx314_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx314_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx314_3]
 lea rdx, [rip + .Lx314_4]
 jmp rax
.Lx314_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx314_2
.Lx314_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx314_2
.Lx314_1:
 call rt_faildescr@PLT
.Lx314_2:
 mov qword ptr [rbp + 8256], rax
 mov qword ptr [rbp + 8264], rdx
 cmp eax, 99
 je proc_pp_node_γ
 jmp proc_pp_node_γ
 xchain239_n59_β:
 jmp proc_pp_node_γ
.Lx314_0:
 .quad .Lx314_0_s
.Lx314_0_s:
 .string "pp_node"
proc_pp_node_res:
add rsp, 8
pop rbp
proc_pp_node_β:
jmp proc_pp_node_ω
proc_pp_node_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_pp_node_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
  .globl proc_pp_bank_α
proc_pp_bank_α:
#=======================================================================================================================
    .global proc_pp_bank_α
    .global proc_pp_bank_β
    .global proc_pp_bank_γ
    .global proc_pp_bank_ω
  sub rsp, 9376
  mov [rsp + 9352], rcx
  mov [rsp + 9360], rdx
  mov [rsp + 9368], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 9344
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 9336], rsp
proc_pp_bank_α_body:
# IR_VAR
 xchain315_n0_α:
 mov rax, qword ptr [1879053088]
 mov rdx, qword ptr [1879053096]
 mov qword ptr [rbp + 8688], rax
 mov qword ptr [rbp + 8696], rdx
 jmp xchain315_n1_α
# IR_LIT_INTEGER
 xchain315_n1_α:
 mov qword ptr [rbp + 8720], 6
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [rbp + 8728], rax
 jmp xchain315_n3_α
.Lx317_0:
 .quad 0
# IR_LIT_STRING
 xchain315_n2_α:
 mov qword ptr [rbp + 8848], 1
 mov rax, qword ptr [rip + .Lx318_0]
 mov qword ptr [rbp + 8856], rax
 jmp xchain315_n4_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
 .string "dummy"
# IR_LIT_STRING
 xchain315_n3_α:
 mov qword ptr [rbp + 8752], 1
 mov rax, qword ptr [rip + .Lx319_0]
 mov qword ptr [rbp + 8760], rax
 jmp xchain315_n5_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
 .string ""
 xchain315_n4_α:
# BOX IR_CALL SNO$NAME(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8848] -> [zr+8816]
 mov rax, qword ptr [rbp + 8848]
 mov qword ptr [rbp + 8816], rax
 mov rax, qword ptr [rbp + 8856]
 mov qword ptr [rbp + 8824], rax
  .section .rodata
  .Lrkfn321: .string "SNO$NAME"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn321]
 lea rsi, [rbp + 8816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 8800], rax
 mov qword ptr [rbp + 8808], rdx
 cmp eax, 99
 je proc_pp_bank_γ
 jmp xchain315_n6_α
 xchain315_n4_β:
 jmp proc_pp_bank_γ
 xchain315_n5_α:
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
 mov rdi, qword ptr [rip + .Lx323_0]
 mov esi, 7
 mov edx, 3
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx323_5
 mov rax, qword ptr [rbp + 8688]
 mov qword ptr [1879052656], rax
 mov rax, qword ptr [rbp + 8696]
 mov qword ptr [1879052664], rax
 mov rax, qword ptr [rbp + 8720]
 mov qword ptr [1879052736], rax
 mov rax, qword ptr [rbp + 8728]
 mov qword ptr [1879052744], rax
 mov rax, qword ptr [rbp + 8752]
 mov qword ptr [1879052752], rax
 mov rax, qword ptr [rbp + 8760]
 mov qword ptr [1879052760], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx323_6]
 lea rdx, [rip + .Lx323_7]
 jmp rax
.Lx323_6:
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
 jmp .Lx323_2
.Lx323_7:
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
 jmp .Lx323_2
.Lx323_5:
 add rsp, 128
 mov edi, 0
 mov rsi, qword ptr [rbp + 8688]
 mov rdx, qword ptr [rbp + 8696]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 8720]
 mov rdx, qword ptr [rbp + 8728]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 8752]
 mov rdx, qword ptr [rbp + 8760]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx323_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx323_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx323_3]
 lea rdx, [rip + .Lx323_4]
 jmp rax
.Lx323_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx323_2
.Lx323_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx323_2
.Lx323_1:
 call rt_faildescr@PLT
.Lx323_2:
 mov qword ptr [rbp + 8608], rax
 mov qword ptr [rbp + 8616], rdx
 cmp eax, 99
 je xchain315_n2_α
 jmp xchain315_n2_α
 xchain315_n5_β:
 jmp xchain315_n2_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "pp_node"
# IR_ASSIGN gva
 xchain315_n6_α:
 mov rax, qword ptr [rbp + 8800]
 mov rdx, qword ptr [rbp + 8808]
 mov qword ptr [1879052800], rax
 mov qword ptr [1879052808], rdx
 mov qword ptr [rbp + 8784], rax
 mov qword ptr [rbp + 8792], rdx
 jmp proc_pp_bank_γ
proc_pp_bank_res:
add rsp, 8
pop rbp
proc_pp_bank_β:
jmp proc_pp_bank_ω
proc_pp_bank_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
mov rax, [rbp + 9352]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
jmp rax
proc_pp_bank_ω:
mov rax, [rbp + 9360]
lea rsp, [rbp + 9376]
mov rbp, [rbp + 9368]
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
lea rax, [rip + xchain325_n2_β]
mov qword ptr [rbp + 96], rax
# IR_MATCH_CAPTURE_SAVE push
 xchain325_n0_α:
 lea rdi, [rbp + 48]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain325_n1_α
 xchain325_n0_β:
 lea rdi, [rbp + 48]
 call rt_cap_pop@PLT
 jmp proc_PAT$0_scanfail
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain325_n1_α:
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_get_pat_fn@PLT
 test rax, rax
 jz .Lx328_0
 mov r8d, 0
 lea rcx, [rip + .Lx328_4]
 lea rdx, [rip + .Lx328_5]
 jmp rax
.Lx328_4:
 jmp xchain325_n2_α
.Lx328_5:
 jmp xchain325_n0_β
.Lx328_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S0]
 xor esi, esi
 call rt_defer_open@PLT
.Lx328_2:
 test rax, rax
 je .Lx328_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx328_7]
 lea rdx, [rip + .Lx328_8]
 jmp rax
.Lx328_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx328_2
.Lx328_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx328_2
.Lx328_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain325_n0_β
 mov r14d, eax
 lea rax, [rip + .Lx328_6]
 sub rsp, 8
 push rax
 jmp xchain325_n2_α
.Lx328_6:
 add rsp, 16
 jmp xchain325_n0_β
 xchain325_n1_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain325_n2_α:
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
 xchain325_n2_β:
 sub r12, 24
 jmp xchain325_n1_β
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
lea rax, [rip + xchain331_n2_β]
mov qword ptr [rbp + 112], rax
# IR_VAR
 xchain331_n0_α:
 mov rax, qword ptr [1879055440]
 mov rdx, qword ptr [1879055448]
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 jmp xchain331_n1_α
# IR_COERCE_STRING
 xchain331_n1_α:
 lea rdi, [rbp + 80]
 lea rsi, [rbp + 48]
 mov rdx, 12320956
 call rt_coerce_str_d@PLT
 jmp xchain331_n2_α
# IR_MATCH_SPAN
 xchain331_n2_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx336_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jge .Lx336_1
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 56]
 call strchr@PLT
 test rax, rax
 je .Lx336_1
 add dword ptr [rsp + 0], 1
 jmp .Lx336_0
.Lx336_1:
 mov eax, dword ptr [rsp + 0]
 test eax, eax
 jg .Lx336_240
 add rsp, 16
 jmp proc_PAT$1_scanfail
.Lx336_240:
 mov edx, r14d
 mov dword ptr [rsp + 4], edx
 add edx, eax
 mov r14d, edx
 jmp proc_PAT$1_scanhit
 xchain331_n2_β:
 xchain331_n2_β:
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
lea rax, [rip + xchain337_n4_β]
mov qword ptr [rbp + 224], rax
# IR_VAR
 xchain337_n0_α:
 mov rax, qword ptr [1879055472]
 mov rdx, qword ptr [1879055480]
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 jmp xchain337_n1_α
 xchain337_n0_β:
 jmp proc_PAT$2_scanfail
# IR_COERCE_STRING
 xchain337_n1_α:
 lea rdi, [rbp + 192]
 lea rsi, [rbp + 160]
 mov rdx, 4522053
 call rt_coerce_str_d@PLT
 jmp xchain337_n2_α
 xchain337_n1_β:
 jmp proc_PAT$2_scanfail
# IR_VAR
 xchain337_n2_α:
 mov rax, qword ptr [1879055456]
 mov rdx, qword ptr [1879055464]
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain337_n3_α
 xchain337_n2_β:
 jmp proc_PAT$2_scanfail
# IR_COERCE_STRING
 xchain337_n3_α:
 lea rdi, [rbp + 128]
 lea rsi, [rbp + 96]
 mov rdx, 9896087
 call rt_coerce_str_d@PLT
 jmp xchain337_n4_α
 xchain337_n3_β:
 jmp proc_PAT$2_scanfail
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain337_n4_α:
 jmp xchain337_n5_α
xchain337_n4_as:
 jmp proc_PAT$2_γ
 xchain337_n4_β:
 jmp xchain337_n6_β
xchain337_n4_af:
 jmp proc_PAT$2_ω
# IR_MATCH_NOTANY
 xchain337_n5_α:
 mov eax, r14d
 cmp eax, r15d
 jge xchain337_n4_af
 movsxd rcx, r14d
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 104]
 call strchr@PLT
 test rax, rax
 jne xchain337_n4_af
 add r14d, 1
 jmp xchain337_n6_α
 xchain337_n5_β:
 sub r14d, 1
 jmp xchain337_n4_af
# IR_MATCH_BREAK
 xchain337_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], 0
.Lx348_0:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jl .Lx348_240
 add rsp, 16
 jmp xchain337_n5_β
.Lx348_240:
 movsxd rcx, eax
 movzx esi, byte ptr [r13+rcx]
 mov rdi, qword ptr [rbp + 168]
 call strchr@PLT
 test rax, rax
 jnz .Lx348_1
 add dword ptr [rsp + 0], 1
 jmp .Lx348_0
.Lx348_1:
 mov eax, r14d
 add eax, dword ptr [rsp + 0]
 mov r14d, eax
 jmp xchain337_n4_as
 xchain337_n6_β:
 mov eax, r14d
 sub eax, dword ptr [rsp + 0]
 mov r14d, eax
 add rsp, 16
 jmp xchain337_n5_β
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
lea rax, [rip + xchain349_n0_β]
mov qword ptr [rbp + 784], rax
# IR_MATCH_SEQ_NARY
 xchain349_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain349_n1_α
xchain349_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain349_n2_α
 cmp eax, 2
 je xchain349_n4_α
 cmp eax, 3
 je xchain349_n6_α
 cmp eax, 4
 je xchain349_n7_α
 cmp eax, 5
 je xchain349_n9_α
 jmp proc_PAT$3_γ
 xchain349_n0_β:
 mov dword ptr [rbp + 36], 6
xchain349_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain349_n1_β
 cmp eax, 1
 je xchain349_n3_β
 cmp eax, 2
 je xchain349_n5_β
 cmp eax, 3
 je xchain349_n6_β
 cmp eax, 4
 je xchain349_n8_β
 cmp eax, 5
 je xchain349_n9_β
 jmp proc_PAT$3_ω
# IR_MATCH_LIT
 xchain349_n1_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain349_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 40
 jne xchain349_n0_af
 add r14d, 1
 jmp xchain349_n0_as
 xchain349_n1_β:
 sub r14d, 1
 jmp xchain349_n0_af
# IR_MATCH_CAPTURE_SAVE push
 xchain349_n2_α:
 lea rdi, [rbp + 96]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain349_n10_α
 xchain349_n2_β:
 lea rdi, [rbp + 96]
 call rt_cap_pop@PLT
 jmp xchain349_n0_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain349_n3_α:
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
 jmp xchain349_n0_as
 xchain349_n3_β:
 sub r12, 24
 jmp xchain349_n10_β
# IR_LIT_STRING
 xchain349_n4_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain349_n11_α
 xchain349_n4_β:
 jmp xchain349_n0_af
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "tag"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n5_α:
 mov rax, qword ptr [1879055488]
 mov rdx, qword ptr [1879055496]
 cmp eax, 3
 jne .Lx359_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx359_10
.Lx359_9:
 xor eax, eax
.Lx359_10:
 test rax, rax
 jz .Lx359_0
 mov r8d, 0
 lea rcx, [rip + .Lx359_4]
 lea rdx, [rip + .Lx359_5]
 jmp rax
.Lx359_4:
 jmp xchain349_n0_as
.Lx359_5:
 jmp xchain349_n0_af
.Lx359_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx359_2:
 test rax, rax
 je .Lx359_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx359_7]
 lea rdx, [rip + .Lx359_8]
 jmp rax
.Lx359_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx359_2
.Lx359_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx359_2
.Lx359_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx359_6]
 sub rsp, 8
 push rax
 jmp xchain349_n0_as
.Lx359_6:
 add rsp, 16
 jmp xchain349_n0_af
 xchain349_n5_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain349_n6_α:
 mov dword ptr [rbp + 288], r14d
 mov dword ptr [rbp + 292], r14d
 mov dword ptr [rbp + 296], 0
 mov qword ptr [rbp + 312], rsp
 mov qword ptr [rbp + 304], 0
 jmp xchain349_n0_as
 xchain349_n6_β:
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
 jmp xchain349_n12_α
xchain349_n6_as:
 mov eax, dword ptr [rbp + 304]
 cmp r14d, eax
 je xchain349_n12_β
 mov rbp, qword ptr [rbp + 296]
 mov eax, dword ptr [rbp + 296]
 add eax, 1
 mov dword ptr [rbp + 296], eax
 mov dword ptr [rbp + 292], r14d
 jmp xchain349_n0_as
xchain349_n6_af:
 mov rax, qword ptr [rbp + 312]
 mov rdx, qword ptr [rbp + 296]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 296]
 test ecx, ecx
 jz .Lx361_2
 sub ecx, 1
 mov dword ptr [rbp + 296], ecx
 mov qword ptr [rbp + 304], rax
 lea rbp, [rax + -296]
 jmp xchain349_n12_β
.Lx361_2:
 mov r14d, dword ptr [rbp + 288]
 mov rsp, qword ptr [rbp + 312]
 jmp xchain349_n0_af
 xchain349_n7_α:
 sub rsp, 16
 mov rax, qword ptr [1879052592]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052600]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx363_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx363_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx363_6]
 lea rdx, [rip + .Lx363_7]
 jmp rax
.Lx363_6:
 mov rdi, qword ptr [1879052592]
 mov rsi, qword ptr [1879052600]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx363_2
.Lx363_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx363_2
.Lx363_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx363_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx363_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx363_3]
 lea rdx, [rip + .Lx363_4]
 jmp rax
.Lx363_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx363_2
.Lx363_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx363_2
.Lx363_1:
 call rt_faildescr@PLT
.Lx363_2:
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain349_n0_af
 jmp xchain349_n14_α
 xchain349_n7_β:
 jmp xchain349_n0_af
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "Pop_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n8_α:
 mov rax, qword ptr [1879055520]
 mov rdx, qword ptr [1879055528]
 cmp eax, 3
 jne .Lx364_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx364_10
.Lx364_9:
 xor eax, eax
.Lx364_10:
 test rax, rax
 jz .Lx364_0
 mov r8d, 0
 lea rcx, [rip + .Lx364_4]
 lea rdx, [rip + .Lx364_5]
 jmp rax
.Lx364_4:
 jmp xchain349_n0_as
.Lx364_5:
 jmp xchain349_n0_af
.Lx364_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx364_2:
 test rax, rax
 je .Lx364_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx364_7]
 lea rdx, [rip + .Lx364_8]
 jmp rax
.Lx364_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx364_2
.Lx364_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx364_2
.Lx364_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx364_6]
 sub rsp, 8
 push rax
 jmp xchain349_n0_as
.Lx364_6:
 add rsp, 16
 jmp xchain349_n0_af
 xchain349_n8_β:
 jmp qword ptr [rsp]
# IR_MATCH_LIT
 xchain349_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jg xchain349_n0_af
 movsxd rcx, r14d
 movzx eax, byte ptr [r13+rcx]
 cmp eax, 41
 jne xchain349_n0_af
 add r14d, 1
 jmp xchain349_n0_as
 xchain349_n9_β:
 sub r14d, 1
 jmp xchain349_n0_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n10_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 cmp eax, 3
 jne .Lx367_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx367_10
.Lx367_9:
 xor eax, eax
.Lx367_10:
 test rax, rax
 jz .Lx367_0
 mov r8d, 0
 lea rcx, [rip + .Lx367_4]
 lea rdx, [rip + .Lx367_5]
 jmp rax
.Lx367_4:
 jmp xchain349_n3_α
.Lx367_5:
 jmp xchain349_n2_β
.Lx367_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx367_2:
 test rax, rax
 je .Lx367_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx367_7]
 lea rdx, [rip + .Lx367_8]
 jmp rax
.Lx367_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx367_2
.Lx367_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx367_2
.Lx367_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n2_β
 mov r14d, eax
 lea rax, [rip + .Lx367_6]
 sub rsp, 8
 push rax
 jmp xchain349_n3_α
.Lx367_6:
 add rsp, 16
 jmp xchain349_n2_β
 xchain349_n10_β:
 jmp qword ptr [rsp]
 xchain349_n11_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052528]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052536]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx369_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx369_5
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx369_6]
 lea rdx, [rip + .Lx369_7]
 jmp rax
.Lx369_6:
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
 jmp .Lx369_2
.Lx369_7:
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
 jmp .Lx369_2
.Lx369_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx369_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx369_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx369_3]
 lea rdx, [rip + .Lx369_4]
 jmp rax
.Lx369_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx369_2
.Lx369_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx369_2
.Lx369_1:
 call rt_faildescr@PLT
.Lx369_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain349_n0_af
 jmp xchain349_n15_α
 xchain349_n11_β:
 jmp xchain349_n0_af
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain349_n12_α:
 mov dword ptr [rbp + 336], r14d
 jmp xchain349_n16_α
xchain349_n12_as:
 jmp xchain349_n6_as
 xchain349_n12_β:
 jmp xchain349_n17_β
xchain349_n12_af:
 jmp xchain349_n6_af
# IR_LIT_STRING
 xchain349_n13_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain349_n18_α
 xchain349_n13_β:
 jmp xchain349_n20_af
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "wrd"
# IR_ASSIGN gva
 xchain349_n14_α:
 mov rax, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 mov qword ptr [1879055520], rax
 mov qword ptr [1879055528], rdx
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain349_n8_α
# IR_ASSIGN gva
 xchain349_n15_α:
 mov rax, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 mov qword ptr [1879055488], rax
 mov qword ptr [1879055496], rdx
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 jmp xchain349_n5_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n16_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 cmp eax, 3
 jne .Lx375_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx375_10
.Lx375_9:
 xor eax, eax
.Lx375_10:
 test rax, rax
 jz .Lx375_0
 mov r8d, 0
 lea rcx, [rip + .Lx375_4]
 lea rdx, [rip + .Lx375_5]
 jmp rax
.Lx375_4:
 jmp xchain349_n17_α
.Lx375_5:
 jmp xchain349_n12_af
.Lx375_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx375_2:
 test rax, rax
 je .Lx375_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx375_7]
 lea rdx, [rip + .Lx375_8]
 jmp rax
.Lx375_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx375_2
.Lx375_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx375_2
.Lx375_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx375_6]
 sub rsp, 8
 push rax
 jmp xchain349_n17_α
.Lx375_6:
 add rsp, 16
 jmp xchain349_n12_af
 xchain349_n16_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain349_n17_α:
 mov dword ptr [rbp + 400], r14d
 mov dword ptr [rbp + 404], 0
 jmp xchain349_n19_α
xchain349_n17_as:
 jmp xchain349_n12_as
 xchain349_n17_β:
 mov eax, dword ptr [rbp + 404]
 cmp eax, 0
 je xchain349_n19_β
 jmp xchain349_n20_β
xchain349_n17_af:
 add dword ptr [rbp + 404], 1
 mov r14d, dword ptr [rbp + 400]
 mov eax, dword ptr [rbp + 404]
 cmp eax, 1
 je xchain349_n20_α
 jmp xchain349_n16_β
 xchain349_n18_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx379_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx379_5
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx379_6]
 lea rdx, [rip + .Lx379_7]
 jmp rax
.Lx379_6:
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
 jmp .Lx379_2
.Lx379_7:
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
 jmp .Lx379_2
.Lx379_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 656]
 mov rdx, qword ptr [rbp + 664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx379_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx379_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx379_3]
 lea rdx, [rip + .Lx379_4]
 jmp rax
.Lx379_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx379_2
.Lx379_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx379_2
.Lx379_1:
 call rt_faildescr@PLT
.Lx379_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain349_n20_af
 jmp xchain349_n21_α
 xchain349_n18_β:
 jmp xchain349_n20_af
.Lx379_0:
 .quad .Lx379_0_s
.Lx379_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n19_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 cmp eax, 3
 jne .Lx380_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx380_10
.Lx380_9:
 xor eax, eax
.Lx380_10:
 test rax, rax
 jz .Lx380_0
 mov r8d, 0
 lea rcx, [rip + .Lx380_4]
 lea rdx, [rip + .Lx380_5]
 jmp rax
.Lx380_4:
 jmp xchain349_n17_as
.Lx380_5:
 jmp xchain349_n17_af
.Lx380_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx380_2:
 test rax, rax
 je .Lx380_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx380_7]
 lea rdx, [rip + .Lx380_8]
 jmp rax
.Lx380_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx380_2
.Lx380_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx380_2
.Lx380_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n17_af
 mov r14d, eax
 lea rax, [rip + .Lx380_6]
 sub rsp, 8
 push rax
 jmp xchain349_n17_as
.Lx380_6:
 add rsp, 16
 jmp xchain349_n17_af
 xchain349_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain349_n20_α:
 mov dword ptr [rbp + 464], r14d
 mov dword ptr [rbp + 468], 0
 jmp xchain349_n22_α
xchain349_n20_as:
 mov eax, dword ptr [rbp + 468]
 add eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 1
 je xchain349_n13_α
 jmp xchain349_n17_as
 xchain349_n20_β:
 mov dword ptr [rbp + 468], 2
xchain349_n20_af:
 mov eax, dword ptr [rbp + 468]
 sub eax, 1
 mov dword ptr [rbp + 468], eax
 cmp eax, 0
 je xchain349_n23_β
 cmp eax, 1
 je xchain349_n24_β
 jmp xchain349_n17_af
# IR_ASSIGN gva
 xchain349_n21_α:
 mov rax, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 mov qword ptr [1879055504], rax
 mov qword ptr [1879055512], rdx
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain349_n24_α
# IR_MATCH_CAPTURE_SAVE push
 xchain349_n22_α:
 lea rdi, [rbp + 512]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain349_n25_α
 xchain349_n22_β:
 lea rdi, [rbp + 512]
 call rt_cap_pop@PLT
 jmp xchain349_n20_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain349_n23_α:
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
 jmp xchain349_n20_as
 xchain349_n23_β:
 sub r12, 24
 jmp xchain349_n25_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n24_α:
 mov rax, qword ptr [1879055504]
 mov rdx, qword ptr [1879055512]
 cmp eax, 3
 jne .Lx388_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx388_10
.Lx388_9:
 xor eax, eax
.Lx388_10:
 test rax, rax
 jz .Lx388_0
 mov r8d, 0
 lea rcx, [rip + .Lx388_4]
 lea rdx, [rip + .Lx388_5]
 jmp rax
.Lx388_4:
 jmp xchain349_n20_as
.Lx388_5:
 jmp xchain349_n20_af
.Lx388_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S9]
 xor esi, esi
 call rt_defer_open@PLT
.Lx388_2:
 test rax, rax
 je .Lx388_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx388_7]
 lea rdx, [rip + .Lx388_8]
 jmp rax
.Lx388_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx388_2
.Lx388_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx388_2
.Lx388_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n20_af
 mov r14d, eax
 lea rax, [rip + .Lx388_6]
 sub rsp, 8
 push rax
 jmp xchain349_n20_as
.Lx388_6:
 add rsp, 16
 jmp xchain349_n20_af
 xchain349_n24_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n25_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 cmp eax, 3
 jne .Lx389_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx389_10
.Lx389_9:
 xor eax, eax
.Lx389_10:
 test rax, rax
 jz .Lx389_0
 mov r8d, 0
 lea rcx, [rip + .Lx389_4]
 lea rdx, [rip + .Lx389_5]
 jmp rax
.Lx389_4:
 jmp xchain349_n23_α
.Lx389_5:
 jmp xchain349_n22_β
.Lx389_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx389_2:
 test rax, rax
 je .Lx389_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx389_7]
 lea rdx, [rip + .Lx389_8]
 jmp rax
.Lx389_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx389_2
.Lx389_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx389_2
.Lx389_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n22_β
 mov r14d, eax
 lea rax, [rip + .Lx389_6]
 sub rsp, 8
 push rax
 jmp xchain349_n23_α
.Lx389_6:
 add rsp, 16
 jmp xchain349_n22_β
 xchain349_n25_β:
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
  sub rsp, 992
  mov [rsp + 968], rcx
  mov [rsp + 976], rdx
  mov [rsp + 984], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 960
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 952], rsp
mov qword ptr [rbp + 960], r8
mov dword ptr [rbp + 952], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
lea rax, [rip + xchain390_n0_β]
mov qword ptr [rbp + 928], rax
# IR_MATCH_SEQ_NARY
 xchain390_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain390_n1_α
xchain390_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain390_n3_α
 cmp eax, 2
 je xchain390_n5_α
 cmp eax, 3
 je xchain390_n7_α
 cmp eax, 4
 je xchain390_n8_α
 cmp eax, 5
 je xchain390_n10_α
 jmp proc_PAT$4_γ
 xchain390_n0_β:
 mov dword ptr [rbp + 36], 6
xchain390_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain390_n2_β
 cmp eax, 1
 je xchain390_n4_β
 cmp eax, 2
 je xchain390_n6_β
 cmp eax, 3
 je xchain390_n7_β
 cmp eax, 4
 je xchain390_n9_β
 cmp eax, 5
 je xchain390_n11_β
 jmp proc_PAT$4_ω
# IR_LIT_INTEGER
 xchain390_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx393_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain390_n2_α
 xchain390_n1_β:
 jmp xchain390_n0_af
.Lx393_0:
 .quad 0
# IR_MATCH_POS
 xchain390_n2_α:
 mov rax, 0
 cmp r14d, eax
 jne xchain390_n0_af
 jmp xchain390_n0_as
 xchain390_n2_β:
 jmp xchain390_n0_af
# IR_LIT_STRING
 xchain390_n3_α:
 mov qword ptr [rbp + 192], 1
 mov rax, qword ptr [rip + .Lx395_0]
 mov qword ptr [rbp + 200], rax
 jmp xchain390_n12_α
 xchain390_n3_β:
 jmp xchain390_n0_af
.Lx395_0:
 .quad .Lx395_0_s
.Lx395_0_s:
 .string "'bank'"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain390_n4_α:
 mov rax, qword ptr [1879055536]
 mov rdx, qword ptr [1879055544]
 cmp eax, 3
 jne .Lx396_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx396_10
.Lx396_9:
 xor eax, eax
.Lx396_10:
 test rax, rax
 jz .Lx396_0
 mov r8d, 0
 lea rcx, [rip + .Lx396_4]
 lea rdx, [rip + .Lx396_5]
 jmp rax
.Lx396_4:
 jmp xchain390_n0_as
.Lx396_5:
 jmp xchain390_n0_af
.Lx396_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S10]
 xor esi, esi
 call rt_defer_open@PLT
.Lx396_2:
 test rax, rax
 je .Lx396_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx396_7]
 lea rdx, [rip + .Lx396_8]
 jmp rax
.Lx396_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx396_2
.Lx396_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx396_2
.Lx396_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain390_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx396_6]
 sub rsp, 8
 push rax
 jmp xchain390_n0_as
.Lx396_6:
 add rsp, 16
 jmp xchain390_n0_af
 xchain390_n4_β:
 jmp qword ptr [rsp]
# IR_LIT_STRING
 xchain390_n5_α:
 mov qword ptr [rbp + 320], 1
 mov rax, qword ptr [rip + .Lx397_0]
 mov qword ptr [rbp + 328], rax
 jmp xchain390_n13_α
 xchain390_n5_β:
 jmp xchain390_n0_af
.Lx397_0:
 .quad .Lx397_0_s
.Lx397_0_s:
 .string "'BANK'"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain390_n6_α:
 mov rax, qword ptr [1879055552]
 mov rdx, qword ptr [1879055560]
 cmp eax, 3
 jne .Lx398_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx398_10
.Lx398_9:
 xor eax, eax
.Lx398_10:
 test rax, rax
 jz .Lx398_0
 mov r8d, 0
 lea rcx, [rip + .Lx398_4]
 lea rdx, [rip + .Lx398_5]
 jmp rax
.Lx398_4:
 jmp xchain390_n0_as
.Lx398_5:
 jmp xchain390_n0_af
.Lx398_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S11]
 xor esi, esi
 call rt_defer_open@PLT
.Lx398_2:
 test rax, rax
 je .Lx398_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx398_7]
 lea rdx, [rip + .Lx398_8]
 jmp rax
.Lx398_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx398_2
.Lx398_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx398_2
.Lx398_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain390_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx398_6]
 sub rsp, 8
 push rax
 jmp xchain390_n0_as
.Lx398_6:
 add rsp, 16
 jmp xchain390_n0_af
 xchain390_n6_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain390_n7_α:
 mov dword ptr [rbp + 368], r14d
 mov dword ptr [rbp + 372], r14d
 mov dword ptr [rbp + 376], 0
 mov qword ptr [rbp + 392], rsp
 mov qword ptr [rbp + 384], 0
 jmp xchain390_n0_as
 xchain390_n7_β:
 mov r14d, dword ptr [rbp + 372]
 mov rax, qword ptr [rbp + 384]
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
 mov qword ptr [rbp + 384], rsp
 mov rbp, rsp
 add rbp, -376
 jmp xchain390_n14_α
xchain390_n7_as:
 mov eax, dword ptr [rbp + 384]
 cmp r14d, eax
 je xchain390_n14_β
 mov rbp, qword ptr [rbp + 376]
 mov eax, dword ptr [rbp + 376]
 add eax, 1
 mov dword ptr [rbp + 376], eax
 mov dword ptr [rbp + 372], r14d
 jmp xchain390_n0_as
xchain390_n7_af:
 mov rax, qword ptr [rbp + 392]
 mov rdx, qword ptr [rbp + 376]
 lea rsp, [rbp + 744]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 376]
 test ecx, ecx
 jz .Lx400_2
 sub ecx, 1
 mov dword ptr [rbp + 376], ecx
 mov qword ptr [rbp + 384], rax
 lea rbp, [rax + -376]
 jmp xchain390_n14_β
.Lx400_2:
 mov r14d, dword ptr [rbp + 368]
 mov rsp, qword ptr [rbp + 392]
 jmp xchain390_n0_af
# IR_LIT_STRING
 xchain390_n8_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain390_n16_α
 xchain390_n8_β:
 jmp xchain390_n0_af
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "'bank'"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain390_n9_α:
 mov rax, qword ptr [1879055600]
 mov rdx, qword ptr [1879055608]
 cmp eax, 3
 jne .Lx402_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx402_10
.Lx402_9:
 xor eax, eax
.Lx402_10:
 test rax, rax
 jz .Lx402_0
 mov r8d, 0
 lea rcx, [rip + .Lx402_4]
 lea rdx, [rip + .Lx402_5]
 jmp rax
.Lx402_4:
 jmp xchain390_n0_as
.Lx402_5:
 jmp xchain390_n0_af
.Lx402_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S12]
 xor esi, esi
 call rt_defer_open@PLT
.Lx402_2:
 test rax, rax
 je .Lx402_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx402_7]
 lea rdx, [rip + .Lx402_8]
 jmp rax
.Lx402_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx402_2
.Lx402_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx402_2
.Lx402_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain390_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx402_6]
 sub rsp, 8
 push rax
 jmp xchain390_n0_as
.Lx402_6:
 add rsp, 16
 jmp xchain390_n0_af
 xchain390_n9_β:
 jmp qword ptr [rsp]
# IR_LIT_INTEGER
 xchain390_n10_α:
 mov qword ptr [rbp + 896], 6
 mov rax, qword ptr [rip + .Lx403_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain390_n11_α
 xchain390_n10_β:
 jmp xchain390_n0_af
.Lx403_0:
 .quad 0
# IR_MATCH_RPOS
 xchain390_n11_α:
 mov rax, 0
 mov ecx, r15d
 sub ecx, eax
 cmp r14d, ecx
 jne xchain390_n0_af
 jmp xchain390_n0_as
 xchain390_n11_β:
 jmp xchain390_n0_af
 xchain390_n12_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx406_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx406_5
 mov rax, qword ptr [rbp + 192]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 200]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx406_6]
 lea rdx, [rip + .Lx406_7]
 jmp rax
.Lx406_6:
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
 jmp .Lx406_2
.Lx406_7:
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
 jmp .Lx406_2
.Lx406_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 192]
 mov rdx, qword ptr [rbp + 200]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx406_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx406_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx406_3]
 lea rdx, [rip + .Lx406_4]
 jmp rax
.Lx406_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx406_2
.Lx406_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx406_2
.Lx406_1:
 call rt_faildescr@PLT
.Lx406_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain390_n0_af
 jmp xchain390_n17_α
 xchain390_n12_β:
 jmp xchain390_n0_af
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "Init_list"
 xchain390_n13_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052528]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052536]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx408_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx408_5
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx408_6]
 lea rdx, [rip + .Lx408_7]
 jmp rax
.Lx408_6:
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
 jmp .Lx408_2
.Lx408_7:
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
 jmp .Lx408_2
.Lx408_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx408_0]
 mov esi, 1
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
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain390_n0_af
 jmp xchain390_n18_α
 xchain390_n13_β:
 jmp xchain390_n0_af
.Lx408_0:
 .quad .Lx408_0_s
.Lx408_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY
 xchain390_n14_α:
 mov dword ptr [rbp + 416], r14d
 mov dword ptr [rbp + 420], 0
 jmp xchain390_n19_α
xchain390_n14_as:
 mov eax, dword ptr [rbp + 420]
 add eax, 1
 mov dword ptr [rbp + 420], eax
 cmp eax, 1
 je xchain390_n21_α
 cmp eax, 2
 je xchain390_n22_α
 cmp eax, 3
 je xchain390_n15_α
 jmp xchain390_n7_as
 xchain390_n14_β:
 mov dword ptr [rbp + 420], 4
xchain390_n14_af:
 mov eax, dword ptr [rbp + 420]
 sub eax, 1
 mov dword ptr [rbp + 420], eax
 cmp eax, 0
 je xchain390_n20_β
 cmp eax, 1
 je xchain390_n21_β
 cmp eax, 2
 je xchain390_n22_β
 cmp eax, 3
 je xchain390_n23_β
 jmp xchain390_n7_af
 xchain390_n15_α:
 sub rsp, 16
 mov rax, qword ptr [1879052592]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052600]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx412_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx412_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx412_6]
 lea rdx, [rip + .Lx412_7]
 jmp rax
.Lx412_6:
 mov rdi, qword ptr [1879052592]
 mov rsi, qword ptr [1879052600]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx412_2
.Lx412_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx412_2
.Lx412_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx412_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx412_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx412_3]
 lea rdx, [rip + .Lx412_4]
 jmp rax
.Lx412_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx412_2
.Lx412_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx412_2
.Lx412_1:
 call rt_faildescr@PLT
.Lx412_2:
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain390_n14_af
 jmp xchain390_n24_α
 xchain390_n15_β:
 jmp xchain390_n14_af
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string "Pop_list"
 xchain390_n16_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052624]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052632]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx414_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx414_5
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx414_6]
 lea rdx, [rip + .Lx414_7]
 jmp rax
.Lx414_6:
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
 jmp .Lx414_2
.Lx414_7:
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
 jmp .Lx414_2
.Lx414_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx414_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx414_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx414_3]
 lea rdx, [rip + .Lx414_4]
 jmp rax
.Lx414_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx414_2
.Lx414_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx414_2
.Lx414_1:
 call rt_faildescr@PLT
.Lx414_2:
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain390_n0_af
 jmp xchain390_n25_α
 xchain390_n16_β:
 jmp xchain390_n0_af
.Lx414_0:
 .quad .Lx414_0_s
.Lx414_0_s:
 .string "Pop_final"
# IR_ASSIGN gva
 xchain390_n17_α:
 mov rax, qword ptr [rbp + 144]
 mov rdx, qword ptr [rbp + 152]
 mov qword ptr [1879055536], rax
 mov qword ptr [1879055544], rdx
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 jmp xchain390_n4_α
# IR_ASSIGN gva
 xchain390_n18_α:
 mov rax, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 mov qword ptr [1879055552], rax
 mov qword ptr [1879055560], rdx
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain390_n6_α
# IR_LIT_STRING
 xchain390_n19_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx417_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain390_n26_α
 xchain390_n19_β:
 jmp xchain390_n14_af
.Lx417_0:
 .quad .Lx417_0_s
.Lx417_0_s:
 .string "'ROOT'"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain390_n20_α:
 mov rax, qword ptr [1879055568]
 mov rdx, qword ptr [1879055576]
 cmp eax, 3
 jne .Lx418_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx418_10
.Lx418_9:
 xor eax, eax
.Lx418_10:
 test rax, rax
 jz .Lx418_0
 mov r8d, 0
 lea rcx, [rip + .Lx418_4]
 lea rdx, [rip + .Lx418_5]
 jmp rax
.Lx418_4:
 jmp xchain390_n14_as
.Lx418_5:
 jmp xchain390_n14_af
.Lx418_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S13]
 xor esi, esi
 call rt_defer_open@PLT
.Lx418_2:
 test rax, rax
 je .Lx418_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx418_7]
 lea rdx, [rip + .Lx418_8]
 jmp rax
.Lx418_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx418_2
.Lx418_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx418_2
.Lx418_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain390_n14_af
 mov r14d, eax
 lea rax, [rip + .Lx418_6]
 sub rsp, 8
 push rax
 jmp xchain390_n14_as
.Lx418_6:
 add rsp, 16
 jmp xchain390_n14_af
 xchain390_n20_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain390_n21_α:
 mov dword ptr [rbp + 576], r14d
 mov dword ptr [rbp + 580], r14d
 mov dword ptr [rbp + 584], 0
 mov qword ptr [rbp + 600], rsp
 mov qword ptr [rbp + 592], 0
 jmp xchain390_n14_as
 xchain390_n21_β:
 mov r14d, dword ptr [rbp + 580]
 mov rax, qword ptr [rbp + 592]
 sub rsp, 64
 mov qword ptr [rsp + 0], rbp
 mov qword ptr [rsp + 8], r14
 mov qword ptr [rsp + 16], rax
 mov eax, 0
 mov qword ptr [rsp + 24], rax
 mov qword ptr [rsp + 32], rax
 mov qword ptr [rsp + 40], rax
 mov qword ptr [rsp + 48], rax
 mov qword ptr [rsp + 56], rax
 mov qword ptr [rbp + 592], rsp
 mov rbp, rsp
 add rbp, -584
 jmp xchain390_n27_α
xchain390_n21_as:
 mov eax, dword ptr [rbp + 592]
 cmp r14d, eax
 je xchain390_n27_β
 mov rbp, qword ptr [rbp + 584]
 mov eax, dword ptr [rbp + 584]
 add eax, 1
 mov dword ptr [rbp + 584], eax
 mov dword ptr [rbp + 580], r14d
 jmp xchain390_n14_as
xchain390_n21_af:
 mov rax, qword ptr [rbp + 600]
 mov rdx, qword ptr [rbp + 584]
 lea rsp, [rbp + 648]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 584]
 test ecx, ecx
 jz .Lx420_2
 sub ecx, 1
 mov dword ptr [rbp + 584], ecx
 mov qword ptr [rbp + 592], rax
 lea rbp, [rax + -584]
 jmp xchain390_n27_β
.Lx420_2:
 mov r14d, dword ptr [rbp + 576]
 mov rsp, qword ptr [rbp + 600]
 jmp xchain390_n14_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain390_n22_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 cmp eax, 3
 jne .Lx421_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx421_10
.Lx421_9:
 xor eax, eax
.Lx421_10:
 test rax, rax
 jz .Lx421_0
 mov r8d, 0
 lea rcx, [rip + .Lx421_4]
 lea rdx, [rip + .Lx421_5]
 jmp rax
.Lx421_4:
 jmp xchain390_n14_as
.Lx421_5:
 jmp xchain390_n14_af
.Lx421_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S6]
 xor esi, esi
 call rt_defer_open@PLT
.Lx421_2:
 test rax, rax
 je .Lx421_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx421_7]
 lea rdx, [rip + .Lx421_8]
 jmp rax
.Lx421_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx421_2
.Lx421_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx421_2
.Lx421_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain390_n14_af
 mov r14d, eax
 lea rax, [rip + .Lx421_6]
 sub rsp, 8
 push rax
 jmp xchain390_n14_as
.Lx421_6:
 add rsp, 16
 jmp xchain390_n14_af
 xchain390_n22_β:
 jmp qword ptr [rsp]
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain390_n23_α:
 mov rax, qword ptr [1879055584]
 mov rdx, qword ptr [1879055592]
 cmp eax, 3
 jne .Lx422_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx422_10
.Lx422_9:
 xor eax, eax
.Lx422_10:
 test rax, rax
 jz .Lx422_0
 mov r8d, 0
 lea rcx, [rip + .Lx422_4]
 lea rdx, [rip + .Lx422_5]
 jmp rax
.Lx422_4:
 jmp xchain390_n14_as
.Lx422_5:
 jmp xchain390_n14_af
.Lx422_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S14]
 xor esi, esi
 call rt_defer_open@PLT
.Lx422_2:
 test rax, rax
 je .Lx422_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx422_7]
 lea rdx, [rip + .Lx422_8]
 jmp rax
.Lx422_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx422_2
.Lx422_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx422_2
.Lx422_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain390_n14_af
 mov r14d, eax
 lea rax, [rip + .Lx422_6]
 sub rsp, 8
 push rax
 jmp xchain390_n14_as
.Lx422_6:
 add rsp, 16
 jmp xchain390_n14_af
 xchain390_n23_β:
 jmp qword ptr [rsp]
# IR_ASSIGN gva
 xchain390_n24_α:
 mov rax, qword ptr [rbp + 720]
 mov rdx, qword ptr [rbp + 728]
 mov qword ptr [1879055584], rax
 mov qword ptr [1879055592], rdx
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain390_n23_α
# IR_ASSIGN gva
 xchain390_n25_α:
 mov rax, qword ptr [rbp + 800]
 mov rdx, qword ptr [rbp + 808]
 mov qword ptr [1879055600], rax
 mov qword ptr [1879055608], rdx
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain390_n9_α
 xchain390_n26_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052528]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052536]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx426_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx426_5
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx426_6]
 lea rdx, [rip + .Lx426_7]
 jmp rax
.Lx426_6:
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
 jmp .Lx426_2
.Lx426_7:
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
 jmp .Lx426_2
.Lx426_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx426_0]
 mov esi, 1
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
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain390_n14_af
 jmp xchain390_n28_α
 xchain390_n26_β:
 jmp xchain390_n14_af
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "Push_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain390_n27_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 cmp eax, 3
 jne .Lx427_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx427_10
.Lx427_9:
 xor eax, eax
.Lx427_10:
 test rax, rax
 jz .Lx427_0
 mov r8d, 0
 lea rcx, [rip + .Lx427_4]
 lea rdx, [rip + .Lx427_5]
 jmp rax
.Lx427_4:
 jmp xchain390_n21_as
.Lx427_5:
 jmp xchain390_n21_af
.Lx427_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S7]
 xor esi, esi
 call rt_defer_open@PLT
.Lx427_2:
 test rax, rax
 je .Lx427_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx427_7]
 lea rdx, [rip + .Lx427_8]
 jmp rax
.Lx427_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx427_2
.Lx427_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx427_2
.Lx427_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain390_n21_af
 mov r14d, eax
 lea rax, [rip + .Lx427_6]
 sub rsp, 8
 push rax
 jmp xchain390_n21_as
.Lx427_6:
 add rsp, 16
 jmp xchain390_n21_af
 xchain390_n27_β:
 jmp qword ptr [rsp]
# IR_ASSIGN gva
 xchain390_n28_α:
 mov rax, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 mov qword ptr [1879055568], rax
 mov qword ptr [1879055576], rdx
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain390_n20_α
proc_PAT$4_scanhit:
cmp qword ptr [rbp + 960], 1
jne 7f
mov ecx, dword ptr [rbp + 952]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$4_γ
proc_PAT$4_scanfail:
cmp qword ptr [rbp + 960], 1
jne 8f
mov eax, dword ptr [rbp + 952]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 952], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$4_attempt
8:
jmp proc_PAT$4_ω
proc_PAT$4_res:
add rsp, 8
pop rbp
proc_PAT$4_β:
jmp qword ptr [rbp + 928]
proc_PAT$4_γ:
push rbp
lea rax, [rip + proc_PAT$4_res]
push rax
mov rax, [rbp + 968]
mov rbp, [rbp + 984]
jmp rax
proc_PAT$4_ω:
mov rax, [rbp + 976]
lea rsp, [rbp + 992]
mov rbp, [rbp + 984]
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
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
  mov esi, 9344
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname17]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname18: .string "PAT$0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname18]
  lea rsi, [rip + proc_PAT$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 128
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname18]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname19: .string "PAT$1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname19]
  lea rsi, [rip + proc_PAT$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 144
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname19]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname20: .string "PAT$2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname20]
  lea rsi, [rip + proc_PAT$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 256
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname20]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname21: .string "PAT$3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname21]
  lea rsi, [rip + proc_PAT$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 816
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname21]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  .section .rodata
  .Lstartup_pname22: .string "PAT$4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname22]
  lea rsi, [rip + proc_PAT$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname22]
  mov esi, 960
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname22]
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
  .Lgvan36: .string "delim"
  .Lgvan37: .string "word"
  .Lgvan38: .string "group"
  .Lgvan39: .string "tag"
  .Lgvan40: .string "PATTMP$P0"
  .Lgvan41: .string "wrd"
  .Lgvan42: .string "PATTMP$P1"
  .Lgvan43: .string "PATTMP$P2"
  .Lgvan44: .string "treebank"
  .Lgvan45: .string "PATTMP$P3"
  .Lgvan46: .string "PATTMP$P4"
  .Lgvan47: .string "PATTMP$P5"
  .Lgvan48: .string "PATTMP$P6"
  .Lgvan49: .string "PATTMP$P7"
  .Lgvan50: .string "bank"
  .Lgvan51: .string "line"
  .Lgvan52: .string "src"
  .Lgvan53: .string "PATTMP$P8"
  .Lgvan54: .string "PATTMP$P9"
  .Lgvan55: .string "PATTMP$P10"
  .Lgvan56: .string "PATTMP$P11"
  .Lgvan57: .string "PATTMP$P12"
  .Lgvan58: .string "PATTMP$P13"
  .Lgvan59: .string "PATTMP$P14"
  .Lgvan60: .string "PATTMP$P15"
  .Lgvan61: .string "PATTMP$P16"
  .Lgvan62: .string "PATTMP$P17"
  .Lgvan63: .string "PATTMP$P18"
  .Lgvan64: .string "PATTMP$P19"
  .Lgvan65: .string "PATTMP$P20"
  .Lgvan66: .string "PATTMP$P21"
  .Lgvan67: .string "PATTMP$P22"
  .Lgvan68: .string "PATTMP$P23"
  .Lgvan69: .string "PATTMP$P24"
  .Lgvan70: .string "PATTMP$P25"
  .Lgvan71: .string "PATTMP$P26"
  .Lgvan72: .string "PATTMP$P27"
  .Lgvan73: .string "PATTMP$P28"
  .Lgvan74: .string "PATTMP$P29"
  .Lgvan75: .string "PATTMP$P30"
  .Lgvan76: .string "PATTMP$P31"
  .Lgvan77: .string "PATTMP$P32"
  .Lgvan78: .string "PATTMP$P33"
  .Lgvan79: .string "PATTMP$P34"
  .Lgvan80: .string "PATTMP$P35"
  .Lgvan81: .string "PATTMP$P36"
  .Lgvan82: .string "PATTMP$P37"
  .Lgvan83: .string "PATTMP$P38"
  .Lgvan84: .string "PATTMP$P39"
  .Lgvan85: .string "PATTMP$P40"
  .Lgvan86: .string "PATTMP$P41"
  .Lgvan87: .string "PATTMP$P42"
  .Lgvan88: .string "PATTMP$P43"
  .Lgvan89: .string "PATTMP$P44"
  .Lgvan90: .string "PATTMP$P45"
  .Lgvan91: .string "PATTMP$P46"
  .Lgvan92: .string "PATTMP$P47"
  .Lgvan93: .string "PATTMP$P48"
  .Lgvan94: .string "PATTMP$P49"
  .Lgvan95: .string "PATTMP$P50"
  .Lgvan96: .string "PATTMP$P51"
  .Lgvan97: .string "PATTMP$P52"
  .Lgvan98: .string "PATTMP$P53"
  .Lgvan99: .string "PATTMP$P54"
  .Lgvan100: .string "PATTMP$P55"
  .Lgvan101: .string "PATTMP$P56"
  .Lgvan102: .string "PATTMP$P57"
  .Lgvan103: .string "PATTMP$P58"
  .Lgvan104: .string "PATTMP$P59"
  .Lgvan105: .string "PATTMP$P60"
  .Lgvan106: .string "PATTMP$P61"
  .Lgvan107: .string "PATTMP$P62"
  .Lgvan108: .string "PATTMP$P63"
  .Lgvan109: .string "PATTMP$P64"
  .Lgvan110: .string "PATTMP$P65"
  .Lgvan111: .string "PATTMP$P66"
  .Lgvan112: .string "PATTMP$P67"
  .Lgvan113: .string "PATTMP$P68"
  .Lgvan114: .string "PATTMP$P69"
  .Lgvan115: .string "PATTMP$P70"
  .Lgvan116: .string "PATTMP$P71"
  .Lgvan117: .string "PATTMP$P72"
  .Lgvan118: .string "PATTMP$P73"
  .Lgvan119: .string "PATTMP$P74"
  .Lgvan120: .string "PATTMP$P75"
  .Lgvan121: .string "PATTMP$P76"
  .Lgvan122: .string "PATTMP$P77"
  .Lgvan123: .string "PATTMP$P78"
  .Lgvan124: .string "PATTMP$P79"
  .Lgvan125: .string "PATTMP$P80"
  .Lgvan126: .string "PATTMP$P81"
  .Lgvan127: .string "PATTMP$P82"
  .Lgvan128: .string "PATTMP$P83"
  .Lgvan129: .string "PATTMP$P84"
  .Lgvan130: .string "PATTMP$P85"
  .Lgvan131: .string "PATTMP$P86"
  .Lgvan132: .string "PATTMP$P87"
  .Lgvan133: .string "PATTMP$P88"
  .Lgvan134: .string "PATTMP$P89"
  .Lgvan135: .string "PATTMP$P90"
  .Lgvan136: .string "PATTMP$P91"
  .Lgvan137: .string "PATTMP$P92"
  .Lgvan138: .string "PATTMP$P93"
  .Lgvan139: .string "PATTMP$P94"
  .Lgvan140: .string "PATTMP$P95"
  .Lgvan141: .string "PATTMP$P96"
  .Lgvan142: .string "PATTMP$P97"
  .Lgvan143: .string "PATTMP$P98"
  .Lgvan144: .string "PATTMP$P99"
  .Lgvan145: .string "PATTMP$P100"
  .Lgvan146: .string "PATTMP$P101"
  .Lgvan147: .string "PATTMP$P102"
  .Lgvan148: .string "PATTMP$P103"
  .Lgvan149: .string "PATTMP$P104"
  .Lgvan150: .string "PATTMP$P105"
  .Lgvan151: .string "PATTMP$P106"
  .Lgvan152: .string "PATTMP$P107"
  .Lgvan153: .string "PATTMP$P108"
  .Lgvan154: .string "PATTMP$P109"
  .Lgvan155: .string "PATTMP$P110"
  .Lgvan156: .string "PATTMP$P111"
  .Lgvan157: .string "PATTMP$P112"
  .Lgvan158: .string "PATTMP$P113"
  .Lgvan159: .string "PATTMP$P114"
  .Lgvan160: .string "PATTMP$P115"
  .Lgvan161: .string "PATTMP$P116"
  .Lgvan162: .string "PATTMP$P117"
  .Lgvan163: .string "PATTMP$P118"
  .Lgvan164: .string "PATTMP$P119"
  .Lgvan165: .string "PATTMP$P120"
  .Lgvan166: .string "PATTMP$P121"
  .Lgvan167: .string "PATTMP$P122"
  .Lgvan168: .string "PATTMP$P123"
  .Lgvan169: .string "PATTMP$P124"
  .Lgvan170: .string "PATTMP$P125"
  .Lgvan171: .string "PATTMP$P126"
  .Lgvan172: .string "PATTMP$P127"
  .Lgvan173: .string "PATTMP$P128"
  .Lgvan174: .string "PATTMP$P129"
  .Lgvan175: .string "PATTMP$P130"
  .Lgvan176: .string "PATTMP$P131"
  .Lgvan177: .string "PATTMP$P132"
  .Lgvan178: .string "PATTMP$P133"
  .Lgvan179: .string "PATTMP$P134"
  .Lgvan180: .string "PATTMP$P135"
  .Lgvan181: .string "PATTMP$P136"
  .Lgvan182: .string "PATTMP$P137"
  .Lgvan183: .string "PATTMP$P138"
  .Lgvan184: .string "PATTMP$P139"
  .Lgvan185: .string "PATTMP$P140"
  .Lgvan186: .string "PATTMP$P141"
  .Lgvan187: .string "PATTMP$P142"
  .Lgvan188: .string "PATTMP$P143"
  .Lgvan189: .string "PATTMP$P144"
  .Lgvan190: .string "PATTMP$P145"
  .Lgvan191: .string "PATTMP$P146"
  .Lgvan192: .string "PATTMP$P147"
  .Lgvan193: .string "PATTMP$P148"
  .Lgvan194: .string "PATTMP$P149"
  .Lgvan195: .string "PATTMP$P150"
  .Lgvan196: .string "PATTMP$P151"
  .Lgvan197: .string "PAT$1$A0"
  .Lgvan198: .string "PAT$2$A0"
  .Lgvan199: .string "PAT$2$A1"
  .Lgvan200: .string "PATTMP$P152"
  .Lgvan201: .string "PATTMP$P153"
  .Lgvan202: .string "PATTMP$P154"
  .Lgvan203: .string "PATTMP$P155"
  .Lgvan204: .string "PATTMP$P156"
  .Lgvan205: .string "PATTMP$P157"
  .Lgvan206: .string "PATTMP$P158"
  .Lgvan207: .string "PATTMP$P159"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 208
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 208
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
  mov qword ptr [rsp + 9336], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
# IR_KEYWORD_SNOBOL4_read
 xchain429_n0_α:
 mov rdi, qword ptr [rip + .Lx430_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain429_n1_α
 xchain429_n0_β:
 jmp xchain429_n8_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "ALPHABET"
# IR_MATCH_HEAD
 xchain429_n1_α:
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
.Lx432_0:
 mov r14d, dword ptr [rsp + 0]
 jmp xchain429_n2_α
 xchain429_n1_β:
 add dword ptr [rsp + 0], 1
 mov eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jg .Lx432_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx432_1
 jmp .Lx432_0
.Lx432_1:
 mov rax, qword ptr [rsp + 8]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 16]
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain429_n8_α
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain429_n2_α:
 jmp xchain429_n4_α
xchain429_n2_as:
 jmp xchain429_n3_α
 xchain429_n2_β:
 jmp xchain429_n7_β
xchain429_n2_af:
 jmp xchain429_n1_β
# IR_MATCH_RELEASE
 xchain429_n3_α:
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
.Lx436_1:
 test rax, rax
 je .Lx436_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx436_3]
 lea rdx, [rip + .Lx436_4]
 jmp rax
.Lx436_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx436_1
.Lx436_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx436_1
.Lx436_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain429_n8_α
# IR_LIT_INTEGER
 xchain429_n4_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain429_n5_α
 xchain429_n4_β:
 jmp xchain429_n2_af
.Lx437_0:
 .quad 10
# IR_MATCH_POS
 xchain429_n5_α:
 mov rax, 10
 cmp r14d, eax
 jne xchain429_n2_af
 jmp xchain429_n6_α
 xchain429_n5_β:
 jmp xchain429_n2_af
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain429_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain429_n9_α
 xchain429_n6_β:
 add rsp, 16
 jmp xchain429_n2_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain429_n7_α:
 mov eax, dword ptr [rsp + 0]
 lea rcx, [rip + .S15]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain429_n2_as
 xchain429_n7_β:
 sub r12, 24
 jmp xchain429_n9_β
# IR_LIT_STRING
 xchain429_n8_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx443_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain429_n10_α
 xchain429_n8_β:
 jmp xchain429_n11_α
.Lx443_0:
 .quad .Lx443_0_s
.Lx443_0_s:
 .string "list(head,tail)"
# IR_MATCH_LEN
 xchain429_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jle .Lx444_240
 add rsp, 16
 jmp xchain429_n2_af
.Lx444_240:
 add r14d, 1
 jmp xchain429_n7_α
 xchain429_n9_β:
 sub r14d, 1
 add rsp, 16
 jmp xchain429_n2_af
 xchain429_n10_α:
# BOX IR_CALL DATA(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn446: .string "DATA"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn446]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain429_n11_α
 jmp xchain429_n11_α
 xchain429_n10_β:
 jmp xchain429_n11_α
# IR_LIT_STRING
 xchain429_n11_α:
 mov qword ptr [rbp + 4736], 1
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [rbp + 4744], rax
 jmp xchain429_n12_α
 xchain429_n11_β:
 jmp xchain429_n14_α
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string " "
# IR_VAR
 xchain429_n12_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain429_n13_α
 xchain429_n12_β:
 jmp xchain429_n14_α
 xchain429_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4736]
 mov rsi, qword ptr [rbp + 4744]
 mov rdx, qword ptr [rbp + 4768]
 mov rcx, qword ptr [rbp + 4776]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 jmp xchain429_n15_α
 xchain429_n13_β:
 jmp xchain429_n14_α
# IR_LIT_STRING
 xchain429_n14_α:
 mov qword ptr [rbp + 5056], 1
 mov rax, qword ptr [rip + .Lx450_0]
 mov qword ptr [rbp + 5064], rax
 jmp xchain429_n16_α
 xchain429_n14_β:
 jmp xchain429_n19_α
.Lx450_0:
 .quad .Lx450_0_s
.Lx450_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain429_n15_α:
 mov rax, qword ptr [rbp + 4704]
 mov rdx, qword ptr [rbp + 4712]
 mov qword ptr [1879055440], rax
 mov qword ptr [1879055448], rdx
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 jmp xchain429_n17_α
 xchain429_n15_β:
 jmp xchain429_n14_α
# IR_VAR
 xchain429_n16_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 jmp xchain429_n18_α
 xchain429_n16_β:
 jmp xchain429_n19_α
# IR_LIT_STRING
 xchain429_n17_α:
 mov qword ptr [rbp + 4656], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [rbp + 4664], rax
 jmp xchain429_n20_α
 xchain429_n17_β:
 jmp xchain429_n14_α
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
 .string "PAT$1"
 xchain429_n18_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5056]
 mov rsi, qword ptr [rbp + 5064]
 mov rdx, qword ptr [rbp + 5088]
 mov rcx, qword ptr [rbp + 5096]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain429_n21_α
 xchain429_n18_β:
 jmp xchain429_n19_α
# IR_LIT_STRING
 xchain429_n19_α:
 mov qword ptr [rbp + 5184], 1
 mov rax, qword ptr [rip + .Lx455_0]
 mov qword ptr [rbp + 5192], rax
 jmp xchain429_n22_α
 xchain429_n19_β:
 jmp xchain429_n26_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
 .string "PAT$3"
 xchain429_n20_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4656] -> [zr+4624]
 mov rax, qword ptr [rbp + 4656]
 mov qword ptr [rbp + 4624], rax
 mov rax, qword ptr [rbp + 4664]
 mov qword ptr [rbp + 4632], rax
  .section .rodata
  .Lrkfn457: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn457]
 lea rsi, [rbp + 4624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 cmp eax, 99
 je xchain429_n14_α
 jmp xchain429_n23_α
 xchain429_n20_β:
 jmp xchain429_n14_α
# IR_ASSIGN gva
 xchain429_n21_α:
 mov rax, qword ptr [rbp + 5024]
 mov rdx, qword ptr [rbp + 5032]
 mov qword ptr [1879055472], rax
 mov qword ptr [1879055480], rdx
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 jmp xchain429_n24_α
 xchain429_n21_β:
 jmp xchain429_n19_α
 xchain429_n22_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5184] -> [zr+5152]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5160], rax
  .section .rodata
  .Lrkfn460: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn460]
 lea rsi, [rbp + 5152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je xchain429_n26_α
 jmp xchain429_n25_α
 xchain429_n22_β:
 jmp xchain429_n26_α
# IR_ASSIGN gva
 xchain429_n23_α:
 mov rax, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 jmp xchain429_n14_α
 xchain429_n23_β:
 jmp xchain429_n14_α
# IR_LIT_STRING
 xchain429_n24_α:
 mov qword ptr [rbp + 4944], 1
 mov rax, qword ptr [rip + .Lx462_0]
 mov qword ptr [rbp + 4952], rax
 jmp xchain429_n27_α
 xchain429_n24_β:
 jmp xchain429_n19_α
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain429_n25_α:
 mov rax, qword ptr [rbp + 5136]
 mov rdx, qword ptr [rbp + 5144]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain429_n26_α
 xchain429_n25_β:
 jmp xchain429_n26_α
# IR_LIT_STRING
 xchain429_n26_α:
 mov qword ptr [rbp + 5280], 1
 mov rax, qword ptr [rip + .Lx464_0]
 mov qword ptr [rbp + 5288], rax
 jmp xchain429_n28_α
 xchain429_n26_β:
 jmp xchain429_n31_α
.Lx464_0:
 .quad .Lx464_0_s
.Lx464_0_s:
 .string "PAT$4"
# IR_VAR
 xchain429_n27_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 jmp xchain429_n29_α
 xchain429_n27_β:
 jmp xchain429_n19_α
 xchain429_n28_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5280] -> [zr+5248]
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 5256], rax
  .section .rodata
  .Lrkfn467: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn467]
 lea rsi, [rbp + 5248]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je xchain429_n31_α
 jmp xchain429_n30_α
 xchain429_n28_β:
 jmp xchain429_n31_α
 xchain429_n29_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4944]
 mov rsi, qword ptr [rbp + 4952]
 mov rdx, qword ptr [rbp + 4976]
 mov rcx, qword ptr [rbp + 4984]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain429_n32_α
 xchain429_n29_β:
 jmp xchain429_n19_α
# IR_ASSIGN gva
 xchain429_n30_α:
 mov rax, qword ptr [rbp + 5232]
 mov rdx, qword ptr [rbp + 5240]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain429_n31_α
 xchain429_n30_β:
 jmp xchain429_n31_α
# IR_VAR
 xchain429_n31_α:
 mov rdi, qword ptr [rip + .Lx470_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain429_n34_α
 mov qword ptr [rbp + 8896], rax
 mov qword ptr [rbp + 8904], rdx
 jmp xchain429_n33_α
 xchain429_n31_β:
 jmp xchain429_n34_α
.Lx470_0:
 .quad .Lx470_0_s
.Lx470_0_s:
 .string "INPUT"
# IR_ASSIGN gva
 xchain429_n32_α:
 mov rax, qword ptr [rbp + 4912]
 mov rdx, qword ptr [rbp + 4920]
 mov qword ptr [1879055456], rax
 mov qword ptr [1879055464], rdx
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 jmp xchain429_n35_α
 xchain429_n32_β:
 jmp xchain429_n19_α
# IR_ASSIGN gva
 xchain429_n33_α:
 mov rax, qword ptr [rbp + 8896]
 mov rdx, qword ptr [rbp + 8904]
 mov qword ptr [1879053104], rax
 mov qword ptr [1879053112], rdx
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain429_n36_α
 xchain429_n33_β:
 jmp xchain429_n34_α
# IR_VAR
 xchain429_n34_α:
 mov rax, qword ptr [1879053120]
 mov rdx, qword ptr [1879053128]
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain429_n37_α
 xchain429_n34_β:
 jmp xchain429_n38_α
# IR_LIT_STRING
 xchain429_n35_α:
 mov qword ptr [rbp + 4864], 1
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 4872], rax
 jmp xchain429_n39_α
 xchain429_n35_β:
 jmp xchain429_n19_α
.Lx474_0:
 .quad .Lx474_0_s
.Lx474_0_s:
 .string "PAT$2"
# IR_VAR
 xchain429_n36_α:
 mov rax, qword ptr [1879053120]
 mov rdx, qword ptr [1879053128]
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
 jmp xchain429_n40_α
 xchain429_n36_β:
 jmp xchain429_n31_α
# IR_MATCH_HEAD
 xchain429_n37_α:
 mov qword ptr [rbp + 9160], rbp
 mov rdi, qword ptr [rbp + 9200]
 mov rsi, qword ptr [rbp + 9208]
 call rt_match_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov qword ptr [rbp + 9152], r12
 mov qword ptr [rbp + 9136], rsp
 lea rcx, [rip + g_patstk_sp]
 mov rax, qword ptr [rcx + 0]
 mov qword ptr [rbp + 9128], rax
 mov dword ptr [rbp + 9120], 0
.Lx477_0:
 mov r14d, dword ptr [rbp + 9120]
 jmp xchain429_n41_α
 xchain429_n37_β:
 add dword ptr [rbp + 9120], 1
 mov eax, dword ptr [rbp + 9120]
 cmp eax, r15d
 jg .Lx477_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx477_1
 jmp .Lx477_0
.Lx477_1:
 mov rax, qword ptr [rbp + 9128]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 9136]
 mov r12, qword ptr [rbp + 9152]
 mov rbp, qword ptr [rbp + 9160]
 jmp xchain429_n38_α
# IR_LIT_STRING
 xchain429_n38_α:
 mov qword ptr [rbp + 9296], 1
 mov rax, qword ptr [rip + .Lx478_0]
 mov qword ptr [rbp + 9304], rax
 jmp xchain429_n42_α
 xchain429_n38_β:
 jmp main_γ
.Lx478_0:
 .quad .Lx478_0_s
.Lx478_0_s:
 .string "Pattern match failed"
 xchain429_n39_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4864] -> [zr+4832]
 mov rax, qword ptr [rbp + 4864]
 mov qword ptr [rbp + 4832], rax
 mov rax, qword ptr [rbp + 4872]
 mov qword ptr [rbp + 4840], rax
  .section .rodata
  .Lrkfn480: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn480]
 lea rsi, [rbp + 4832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 cmp eax, 99
 je xchain429_n19_α
 jmp xchain429_n43_α
 xchain429_n39_β:
 jmp xchain429_n19_α
# IR_VAR
 xchain429_n40_α:
 mov rax, qword ptr [1879053104]
 mov rdx, qword ptr [1879053112]
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain429_n44_α
 xchain429_n40_β:
 jmp xchain429_n31_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain429_n41_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 cmp eax, 3
 jne .Lx482_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx482_10
.Lx482_9:
 xor eax, eax
.Lx482_10:
 test rax, rax
 jz .Lx482_0
 mov r8d, 0
 lea rcx, [rip + .Lx482_4]
 lea rdx, [rip + .Lx482_5]
 jmp rax
.Lx482_4:
 jmp xchain429_n45_α
.Lx482_5:
 jmp xchain429_n37_β
.Lx482_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S16]
 xor esi, esi
 call rt_defer_open@PLT
.Lx482_2:
 test rax, rax
 je .Lx482_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx482_7]
 lea rdx, [rip + .Lx482_8]
 jmp rax
.Lx482_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx482_2
.Lx482_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx482_2
.Lx482_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain429_n37_β
 mov r14d, eax
 lea rax, [rip + .Lx482_6]
 sub rsp, 8
 push rax
 jmp xchain429_n45_α
.Lx482_6:
 add rsp, 16
 jmp xchain429_n37_β
 xchain429_n41_β:
 jmp qword ptr [rsp]
# IR_ASSIGN global
 xchain429_n42_α:
 mov rsi, qword ptr [rbp + 9296]
 mov rdx, qword ptr [rbp + 9304]
 mov rdi, qword ptr [rip + .Lx483_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp main_γ
 xchain429_n42_β:
 jmp main_γ
.Lx483_0:
 .quad .Lx483_0_s
.Lx483_0_s:
 .string "OUTPUT"
# IR_ASSIGN gva
 xchain429_n43_α:
 mov rax, qword ptr [rbp + 4816]
 mov rdx, qword ptr [rbp + 4824]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain429_n19_α
 xchain429_n43_β:
 jmp xchain429_n19_α
 xchain429_n44_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9008]
 mov rsi, qword ptr [rbp + 9016]
 mov rdx, qword ptr [rbp + 9040]
 mov rcx, qword ptr [rbp + 9048]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8976], rax
 mov qword ptr [rbp + 8984], rdx
 jmp xchain429_n46_α
 xchain429_n44_β:
 jmp xchain429_n31_α
# IR_MATCH_RELEASE
 xchain429_n45_α:
 mov rax, qword ptr [rbp + 9128]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 9136]
 push r14
 push r15
 push r13
 sub rsp, 8
 mov rdi, qword ptr [rsp + 9184]
 mov rsi, r12
 mov rdx, r13
 call rt_dcap_end_ok_open@PLT
.Lx487_1:
 test rax, rax
 je .Lx487_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx487_3]
 lea rdx, [rip + .Lx487_4]
 jmp rax
.Lx487_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx487_1
.Lx487_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx487_1
.Lx487_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 9152]
 mov rbp, qword ptr [rbp + 9160]
 jmp xchain429_n47_α
# IR_VAR
 xchain429_n46_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 jmp xchain429_n48_α
 xchain429_n46_β:
 jmp xchain429_n31_α
 xchain429_n47_α:
 sub rsp, 32
 mov rax, qword ptr [1879052336]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052344]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052800]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052808]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx490_0]
 mov esi, 1
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx490_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx490_6]
 lea rdx, [rip + .Lx490_7]
 jmp rax
.Lx490_6:
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
 jmp .Lx490_2
.Lx490_7:
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
 jmp .Lx490_2
.Lx490_5:
 add rsp, 32
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
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 cmp eax, 99
 je main_γ
 jmp xchain429_n49_α
 xchain429_n47_β:
 jmp main_γ
.Lx490_0:
 .quad .Lx490_0_s
.Lx490_0_s:
 .string "pp_bank"
 xchain429_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8976]
 mov rsi, qword ptr [rbp + 8984]
 mov rdx, qword ptr [rbp + 9072]
 mov rcx, qword ptr [rbp + 9080]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 jmp xchain429_n50_α
 xchain429_n48_β:
 jmp xchain429_n31_α
# IR_ASSIGN gva
 xchain429_n49_α:
 mov rax, qword ptr [rbp + 9248]
 mov rdx, qword ptr [rbp + 9256]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 jmp main_γ
 xchain429_n49_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain429_n50_α:
 mov rax, qword ptr [rbp + 8944]
 mov rdx, qword ptr [rbp + 8952]
 mov qword ptr [1879053120], rax
 mov qword ptr [1879053128], rdx
 mov qword ptr [rbp + 8928], rax
 mov qword ptr [rbp + 8936], rdx
 jmp xchain429_n31_α
 xchain429_n50_β:
 jmp xchain429_n31_α
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 9336]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 9336]
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
.S3: .string "PATTMP$P152"
.S4: .string "PATTMP$P154"
.S5: .string "word"
.S6: .string "delim"
.S7: .string "group"
.S8: .string "wrd"
.S9: .string "PATTMP$P153"
.S10: .string "PATTMP$P155"
.S11: .string "PATTMP$P156"
.S12: .string "PATTMP$P159"
.S13: .string "PATTMP$P157"
.S14: .string "PATTMP$P158"
.S15: .string "nl"
.S16: .string "treebank"
.text
