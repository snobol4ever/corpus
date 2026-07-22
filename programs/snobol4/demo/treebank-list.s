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
 mov rax, qword ptr [1879052960]
 mov rdx, qword ptr [1879052968]
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
 mov rax, qword ptr [1879053008]
 mov rdx, qword ptr [1879053016]
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
 mov rax, qword ptr [1879053040]
 mov rdx, qword ptr [1879053048]
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
 mov rax, qword ptr [1879053024]
 mov rdx, qword ptr [1879053032]
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
 mov dword ptr [rsp + 0], r14d
 mov r14d, eax
 jmp xchain337_n4_as
 xchain337_n6_β:
 mov r14d, dword ptr [rsp + 0]
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
  sub rsp, 800
  mov [rsp + 776], rcx
  mov [rsp + 784], rdx
  mov [rsp + 792], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 768
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 760], rsp
mov qword ptr [rbp + 768], r8
mov dword ptr [rbp + 760], r14d
proc_PAT$3_attempt:
proc_PAT$3_α_body:
lea rax, [rip + xchain349_n0_β]
mov qword ptr [rbp + 736], rax
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
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain349_n11_α
 xchain349_n4_β:
 jmp xchain349_n0_af
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "tag"
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain349_n5_α:
 lea rdi, [rbp + 176]
 call rt_match_value_get_pat_fn@PLT
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
 lea rdi, [rbp + 176]
 call rt_match_value_open@PLT
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
 mov dword ptr [rbp + 272], r14d
 mov dword ptr [rbp + 276], r14d
 mov dword ptr [rbp + 280], 0
 mov qword ptr [rbp + 296], rsp
 mov qword ptr [rbp + 288], 0
 jmp xchain349_n0_as
 xchain349_n6_β:
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
 jmp xchain349_n12_α
xchain349_n6_as:
 mov eax, dword ptr [rbp + 288]
 cmp r14d, eax
 je xchain349_n12_β
 mov rbp, qword ptr [rbp + 280]
 mov eax, dword ptr [rbp + 280]
 add eax, 1
 mov dword ptr [rbp + 280], eax
 mov dword ptr [rbp + 276], r14d
 jmp xchain349_n0_as
xchain349_n6_af:
 mov rax, qword ptr [rbp + 296]
 mov rdx, qword ptr [rbp + 280]
 lea rsp, [rbp + 648]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 280]
 test ecx, ecx
 jz .Lx361_2
 sub ecx, 1
 mov dword ptr [rbp + 280], ecx
 mov qword ptr [rbp + 288], rax
 lea rbp, [rax + -280]
 jmp xchain349_n12_β
.Lx361_2:
 mov r14d, dword ptr [rbp + 272]
 mov rsp, qword ptr [rbp + 296]
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
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain349_n0_af
 jmp xchain349_n8_α
 xchain349_n7_β:
 jmp xchain349_n0_af
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "Pop_list"
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain349_n8_α:
 lea rdi, [rbp + 688]
 call rt_match_value_get_pat_fn@PLT
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
 lea rdi, [rbp + 688]
 call rt_match_value_open@PLT
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
 lea rdi, [rip + .S3]
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
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 232]
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
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
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
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain349_n0_af
 jmp xchain349_n5_α
 xchain349_n11_β:
 jmp xchain349_n0_af
.Lx369_0:
 .quad .Lx369_0_s
.Lx369_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY (SPD SEQ-STATIC: zero-counter, sigma/phi statically wired)
 xchain349_n12_α:
 mov dword ptr [rbp + 320], r14d
 jmp xchain349_n14_α
xchain349_n12_as:
 jmp xchain349_n6_as
 xchain349_n12_β:
 jmp xchain349_n15_β
xchain349_n12_af:
 jmp xchain349_n6_af
# IR_LIT_STRING
 xchain349_n13_α:
 mov qword ptr [rbp + 624], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [rbp + 632], rax
 jmp xchain349_n16_α
 xchain349_n13_β:
 jmp xchain349_n18_af
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
 .string "wrd"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n14_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 cmp eax, 3
 jne .Lx373_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx373_10
.Lx373_9:
 xor eax, eax
.Lx373_10:
 test rax, rax
 jz .Lx373_0
 mov r8d, 0
 lea rcx, [rip + .Lx373_4]
 lea rdx, [rip + .Lx373_5]
 jmp rax
.Lx373_4:
 jmp xchain349_n15_α
.Lx373_5:
 jmp xchain349_n12_af
.Lx373_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx373_2:
 test rax, rax
 je .Lx373_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx373_7]
 lea rdx, [rip + .Lx373_8]
 jmp rax
.Lx373_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx373_2
.Lx373_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx373_2
.Lx373_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n12_af
 mov r14d, eax
 lea rax, [rip + .Lx373_6]
 sub rsp, 8
 push rax
 jmp xchain349_n15_α
.Lx373_6:
 add rsp, 16
 jmp xchain349_n12_af
 xchain349_n14_β:
 jmp qword ptr [rsp]
# IR_MATCH_ALT_NARY
 xchain349_n15_α:
 mov dword ptr [rbp + 384], r14d
 mov dword ptr [rbp + 388], 0
 jmp xchain349_n17_α
xchain349_n15_as:
 jmp xchain349_n12_as
 xchain349_n15_β:
 mov eax, dword ptr [rbp + 388]
 cmp eax, 0
 je xchain349_n17_β
 jmp xchain349_n18_β
xchain349_n15_af:
 add dword ptr [rbp + 388], 1
 mov r14d, dword ptr [rbp + 384]
 mov eax, dword ptr [rbp + 388]
 cmp eax, 1
 je xchain349_n18_α
 jmp xchain349_n14_β
 xchain349_n16_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052560]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052568]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx377_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx377_5
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx377_6]
 lea rdx, [rip + .Lx377_7]
 jmp rax
.Lx377_6:
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
 jmp .Lx377_2
.Lx377_7:
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
 jmp .Lx377_2
.Lx377_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx377_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx377_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx377_3]
 lea rdx, [rip + .Lx377_4]
 jmp rax
.Lx377_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx377_2
.Lx377_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx377_2
.Lx377_1:
 call rt_faildescr@PLT
.Lx377_2:
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain349_n18_af
 jmp xchain349_n19_α
 xchain349_n16_β:
 jmp xchain349_n18_af
.Lx377_0:
 .quad .Lx377_0_s
.Lx377_0_s:
 .string "Push_item"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n17_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 cmp eax, 3
 jne .Lx378_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx378_10
.Lx378_9:
 xor eax, eax
.Lx378_10:
 test rax, rax
 jz .Lx378_0
 mov r8d, 0
 lea rcx, [rip + .Lx378_4]
 lea rdx, [rip + .Lx378_5]
 jmp rax
.Lx378_4:
 jmp xchain349_n15_as
.Lx378_5:
 jmp xchain349_n15_af
.Lx378_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx378_2:
 test rax, rax
 je .Lx378_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx378_7]
 lea rdx, [rip + .Lx378_8]
 jmp rax
.Lx378_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx378_2
.Lx378_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx378_2
.Lx378_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n15_af
 mov r14d, eax
 lea rax, [rip + .Lx378_6]
 sub rsp, 8
 push rax
 jmp xchain349_n15_as
.Lx378_6:
 add rsp, 16
 jmp xchain349_n15_af
 xchain349_n17_β:
 jmp qword ptr [rsp]
# IR_MATCH_SEQ_NARY
 xchain349_n18_α:
 mov dword ptr [rbp + 448], r14d
 mov dword ptr [rbp + 452], 0
 jmp xchain349_n20_α
xchain349_n18_as:
 mov eax, dword ptr [rbp + 452]
 add eax, 1
 mov dword ptr [rbp + 452], eax
 cmp eax, 1
 je xchain349_n13_α
 jmp xchain349_n15_as
 xchain349_n18_β:
 mov dword ptr [rbp + 452], 2
xchain349_n18_af:
 mov eax, dword ptr [rbp + 452]
 sub eax, 1
 mov dword ptr [rbp + 452], eax
 cmp eax, 0
 je xchain349_n21_β
 cmp eax, 1
 je xchain349_n19_β
 jmp xchain349_n15_af
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain349_n19_α:
 lea rdi, [rbp + 576]
 call rt_match_value_get_pat_fn@PLT
 test rax, rax
 jz .Lx381_0
 mov r8d, 0
 lea rcx, [rip + .Lx381_4]
 lea rdx, [rip + .Lx381_5]
 jmp rax
.Lx381_4:
 jmp xchain349_n18_as
.Lx381_5:
 jmp xchain349_n18_af
.Lx381_0:
 lea rdi, [rbp + 576]
 call rt_match_value_open@PLT
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n18_af
 mov r14d, eax
 lea rax, [rip + .Lx381_6]
 sub rsp, 8
 push rax
 jmp xchain349_n18_as
.Lx381_6:
 add rsp, 16
 jmp xchain349_n18_af
 xchain349_n19_β:
 jmp qword ptr [rsp]
# IR_MATCH_CAPTURE_SAVE push
 xchain349_n20_α:
 lea rdi, [rbp + 496]
 mov esi, r14d
 call rt_cap_push@PLT
 jmp xchain349_n22_α
 xchain349_n20_β:
 lea rdi, [rbp + 496]
 call rt_cap_pop@PLT
 jmp xchain349_n18_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain349_n21_α:
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
 jmp xchain349_n18_as
 xchain349_n21_β:
 sub r12, 24
 jmp xchain349_n22_β
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain349_n22_α:
 mov rax, qword ptr [1879052880]
 mov rdx, qword ptr [1879052888]
 cmp eax, 3
 jne .Lx386_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx386_10
.Lx386_9:
 xor eax, eax
.Lx386_10:
 test rax, rax
 jz .Lx386_0
 mov r8d, 0
 lea rcx, [rip + .Lx386_4]
 lea rdx, [rip + .Lx386_5]
 jmp rax
.Lx386_4:
 jmp xchain349_n21_α
.Lx386_5:
 jmp xchain349_n20_β
.Lx386_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S3]
 xor esi, esi
 call rt_defer_open@PLT
.Lx386_2:
 test rax, rax
 je .Lx386_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx386_7]
 lea rdx, [rip + .Lx386_8]
 jmp rax
.Lx386_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx386_2
.Lx386_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx386_2
.Lx386_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain349_n20_β
 mov r14d, eax
 lea rax, [rip + .Lx386_6]
 sub rsp, 8
 push rax
 jmp xchain349_n21_α
.Lx386_6:
 add rsp, 16
 jmp xchain349_n20_β
 xchain349_n22_β:
 jmp qword ptr [rsp]
proc_PAT$3_scanhit:
cmp qword ptr [rbp + 768], 1
jne 7f
mov ecx, dword ptr [rbp + 760]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$3_γ
proc_PAT$3_scanfail:
cmp qword ptr [rbp + 768], 1
jne 8f
mov eax, dword ptr [rbp + 760]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 760], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$3_attempt
8:
jmp proc_PAT$3_ω
proc_PAT$3_res:
add rsp, 8
pop rbp
proc_PAT$3_β:
jmp qword ptr [rbp + 736]
proc_PAT$3_γ:
push rbp
lea rax, [rip + proc_PAT$3_res]
push rax
mov rax, [rbp + 776]
mov rbp, [rbp + 792]
jmp rax
proc_PAT$3_ω:
mov rax, [rbp + 784]
lea rsp, [rbp + 800]
mov rbp, [rbp + 792]
jmp rax
  .globl proc_PAT$4_α
proc_PAT$4_α:
#=======================================================================================================================
    .global proc_PAT$4_α
    .global proc_PAT$4_β
    .global proc_PAT$4_γ
    .global proc_PAT$4_ω
  sub rsp, 912
  mov [rsp + 888], rcx
  mov [rsp + 896], rdx
  mov [rsp + 904], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 880
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 872], rsp
mov qword ptr [rbp + 880], r8
mov dword ptr [rbp + 872], r14d
proc_PAT$4_attempt:
proc_PAT$4_α_body:
lea rax, [rip + xchain387_n0_β]
mov qword ptr [rbp + 848], rax
# IR_MATCH_SEQ_NARY
 xchain387_n0_α:
 mov dword ptr [rbp + 32], r14d
 mov dword ptr [rbp + 36], 0
 jmp xchain387_n1_α
xchain387_n0_as:
 mov eax, dword ptr [rbp + 36]
 add eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 1
 je xchain387_n3_α
 cmp eax, 2
 je xchain387_n5_α
 cmp eax, 3
 je xchain387_n7_α
 cmp eax, 4
 je xchain387_n8_α
 cmp eax, 5
 je xchain387_n10_α
 jmp proc_PAT$4_γ
 xchain387_n0_β:
 mov dword ptr [rbp + 36], 6
xchain387_n0_af:
 mov eax, dword ptr [rbp + 36]
 sub eax, 1
 mov dword ptr [rbp + 36], eax
 cmp eax, 0
 je xchain387_n2_β
 cmp eax, 1
 je xchain387_n4_β
 cmp eax, 2
 je xchain387_n6_β
 cmp eax, 3
 je xchain387_n7_β
 cmp eax, 4
 je xchain387_n9_β
 cmp eax, 5
 je xchain387_n11_β
 jmp proc_PAT$4_ω
# IR_LIT_INTEGER
 xchain387_n1_α:
 mov qword ptr [rbp + 64], 6
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [rbp + 72], rax
 jmp xchain387_n2_α
 xchain387_n1_β:
 jmp xchain387_n0_af
.Lx390_0:
 .quad 0
# IR_MATCH_POS
 xchain387_n2_α:
 mov rax, 0
 cmp r14d, eax
 jne xchain387_n0_af
 jmp xchain387_n0_as
 xchain387_n2_β:
 jmp xchain387_n0_af
# IR_LIT_STRING
 xchain387_n3_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx392_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain387_n12_α
 xchain387_n3_β:
 jmp xchain387_n0_af
.Lx392_0:
 .quad .Lx392_0_s
.Lx392_0_s:
 .string "'bank'"
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain387_n4_α:
 lea rdi, [rbp + 128]
 call rt_match_value_get_pat_fn@PLT
 test rax, rax
 jz .Lx393_0
 mov r8d, 0
 lea rcx, [rip + .Lx393_4]
 lea rdx, [rip + .Lx393_5]
 jmp rax
.Lx393_4:
 jmp xchain387_n0_as
.Lx393_5:
 jmp xchain387_n0_af
.Lx393_0:
 lea rdi, [rbp + 128]
 call rt_match_value_open@PLT
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain387_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx393_6]
 sub rsp, 8
 push rax
 jmp xchain387_n0_as
.Lx393_6:
 add rsp, 16
 jmp xchain387_n0_af
 xchain387_n4_β:
 jmp qword ptr [rsp]
# IR_LIT_STRING
 xchain387_n5_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain387_n13_α
 xchain387_n5_β:
 jmp xchain387_n0_af
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
 .string "'BANK'"
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain387_n6_α:
 lea rdi, [rbp + 240]
 call rt_match_value_get_pat_fn@PLT
 test rax, rax
 jz .Lx395_0
 mov r8d, 0
 lea rcx, [rip + .Lx395_4]
 lea rdx, [rip + .Lx395_5]
 jmp rax
.Lx395_4:
 jmp xchain387_n0_as
.Lx395_5:
 jmp xchain387_n0_af
.Lx395_0:
 lea rdi, [rbp + 240]
 call rt_match_value_open@PLT
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain387_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx395_6]
 sub rsp, 8
 push rax
 jmp xchain387_n0_as
.Lx395_6:
 add rsp, 16
 jmp xchain387_n0_af
 xchain387_n6_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain387_n7_α:
 mov dword ptr [rbp + 336], r14d
 mov dword ptr [rbp + 340], r14d
 mov dword ptr [rbp + 344], 0
 mov qword ptr [rbp + 360], rsp
 mov qword ptr [rbp + 352], 0
 jmp xchain387_n0_as
 xchain387_n7_β:
 mov r14d, dword ptr [rbp + 340]
 mov rax, qword ptr [rbp + 352]
 sub rsp, 336
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
 mov qword ptr [rbp + 352], rsp
 mov rbp, rsp
 add rbp, -344
 jmp xchain387_n14_α
xchain387_n7_as:
 mov eax, dword ptr [rbp + 352]
 cmp r14d, eax
 je xchain387_n14_β
 mov rbp, qword ptr [rbp + 344]
 mov eax, dword ptr [rbp + 344]
 add eax, 1
 mov dword ptr [rbp + 344], eax
 mov dword ptr [rbp + 340], r14d
 jmp xchain387_n0_as
xchain387_n7_af:
 mov rax, qword ptr [rbp + 360]
 mov rdx, qword ptr [rbp + 344]
 lea rsp, [rbp + 680]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 344]
 test ecx, ecx
 jz .Lx397_2
 sub ecx, 1
 mov dword ptr [rbp + 344], ecx
 mov qword ptr [rbp + 352], rax
 lea rbp, [rax + -344]
 jmp xchain387_n14_β
.Lx397_2:
 mov r14d, dword ptr [rbp + 336]
 mov rsp, qword ptr [rbp + 360]
 jmp xchain387_n0_af
# IR_LIT_STRING
 xchain387_n8_α:
 mov qword ptr [rbp + 768], 1
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain387_n16_α
 xchain387_n8_β:
 jmp xchain387_n0_af
.Lx398_0:
 .quad .Lx398_0_s
.Lx398_0_s:
 .string "'bank'"
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain387_n9_α:
 lea rdi, [rbp + 720]
 call rt_match_value_get_pat_fn@PLT
 test rax, rax
 jz .Lx399_0
 mov r8d, 0
 lea rcx, [rip + .Lx399_4]
 lea rdx, [rip + .Lx399_5]
 jmp rax
.Lx399_4:
 jmp xchain387_n0_as
.Lx399_5:
 jmp xchain387_n0_af
.Lx399_0:
 lea rdi, [rbp + 720]
 call rt_match_value_open@PLT
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain387_n0_af
 mov r14d, eax
 lea rax, [rip + .Lx399_6]
 sub rsp, 8
 push rax
 jmp xchain387_n0_as
.Lx399_6:
 add rsp, 16
 jmp xchain387_n0_af
 xchain387_n9_β:
 jmp qword ptr [rsp]
# IR_LIT_INTEGER
 xchain387_n10_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx400_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain387_n11_α
 xchain387_n10_β:
 jmp xchain387_n0_af
.Lx400_0:
 .quad 0
# IR_MATCH_RPOS
 xchain387_n11_α:
 mov rax, 0
 mov ecx, r15d
 sub ecx, eax
 cmp r14d, ecx
 jne xchain387_n0_af
 jmp xchain387_n0_as
 xchain387_n11_β:
 jmp xchain387_n0_af
 xchain387_n12_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052480]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052488]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx403_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx403_5
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx403_6]
 lea rdx, [rip + .Lx403_7]
 jmp rax
.Lx403_6:
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
 jmp .Lx403_2
.Lx403_7:
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
 jmp .Lx403_2
.Lx403_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 176]
 mov rdx, qword ptr [rbp + 184]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx403_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx403_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx403_3]
 lea rdx, [rip + .Lx403_4]
 jmp rax
.Lx403_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx403_2
.Lx403_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx403_2
.Lx403_1:
 call rt_faildescr@PLT
.Lx403_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain387_n0_af
 jmp xchain387_n4_α
 xchain387_n12_β:
 jmp xchain387_n0_af
.Lx403_0:
 .quad .Lx403_0_s
.Lx403_0_s:
 .string "Init_list"
 xchain387_n13_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052528]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052536]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx405_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx405_5
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx405_6]
 lea rdx, [rip + .Lx405_7]
 jmp rax
.Lx405_6:
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
 jmp .Lx405_2
.Lx405_7:
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
 jmp .Lx405_2
.Lx405_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx405_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx405_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx405_3]
 lea rdx, [rip + .Lx405_4]
 jmp rax
.Lx405_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx405_2
.Lx405_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx405_2
.Lx405_1:
 call rt_faildescr@PLT
.Lx405_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain387_n0_af
 jmp xchain387_n6_α
 xchain387_n13_β:
 jmp xchain387_n0_af
.Lx405_0:
 .quad .Lx405_0_s
.Lx405_0_s:
 .string "Push_list"
# IR_MATCH_SEQ_NARY
 xchain387_n14_α:
 mov dword ptr [rbp + 384], r14d
 mov dword ptr [rbp + 388], 0
 jmp xchain387_n17_α
xchain387_n14_as:
 mov eax, dword ptr [rbp + 388]
 add eax, 1
 mov dword ptr [rbp + 388], eax
 cmp eax, 1
 je xchain387_n19_α
 cmp eax, 2
 je xchain387_n20_α
 cmp eax, 3
 je xchain387_n15_α
 jmp xchain387_n7_as
 xchain387_n14_β:
 mov dword ptr [rbp + 388], 4
xchain387_n14_af:
 mov eax, dword ptr [rbp + 388]
 sub eax, 1
 mov dword ptr [rbp + 388], eax
 cmp eax, 0
 je xchain387_n18_β
 cmp eax, 1
 je xchain387_n19_β
 cmp eax, 2
 je xchain387_n20_β
 cmp eax, 3
 je xchain387_n21_β
 jmp xchain387_n7_af
 xchain387_n15_α:
 sub rsp, 16
 mov rax, qword ptr [1879052592]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052600]
 mov qword ptr [rsp + 8], rax
 mov rdi, qword ptr [rip + .Lx409_0]
 mov esi, 0
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx409_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx409_6]
 lea rdx, [rip + .Lx409_7]
 jmp rax
.Lx409_6:
 mov rdi, qword ptr [1879052592]
 mov rsi, qword ptr [1879052600]
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_γ@PLT
 jmp .Lx409_2
.Lx409_7:
 mov rax, qword ptr [rsp + 0]
 mov qword ptr [1879052592], rax
 mov rax, qword ptr [rsp + 8]
 mov qword ptr [1879052600], rax
 add rsp, 16
 call rt_proc_call_epilogue_slim_ω@PLT
 jmp .Lx409_2
.Lx409_5:
 add rsp, 16
 mov rdi, qword ptr [rip + .Lx409_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx409_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx409_3]
 lea rdx, [rip + .Lx409_4]
 jmp rax
.Lx409_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx409_2
.Lx409_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx409_2
.Lx409_1:
 call rt_faildescr@PLT
.Lx409_2:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain387_n14_af
 jmp xchain387_n21_α
 xchain387_n15_β:
 jmp xchain387_n14_af
.Lx409_0:
 .quad .Lx409_0_s
.Lx409_0_s:
 .string "Pop_list"
 xchain387_n16_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052624]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052632]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx411_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx411_5
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx411_6]
 lea rdx, [rip + .Lx411_7]
 jmp rax
.Lx411_6:
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
 jmp .Lx411_2
.Lx411_7:
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
 jmp .Lx411_2
.Lx411_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 768]
 mov rdx, qword ptr [rbp + 776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx411_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx411_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx411_3]
 lea rdx, [rip + .Lx411_4]
 jmp rax
.Lx411_3:
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx411_2
.Lx411_4:
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx411_2
.Lx411_1:
 call rt_faildescr@PLT
.Lx411_2:
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je xchain387_n0_af
 jmp xchain387_n9_α
 xchain387_n16_β:
 jmp xchain387_n0_af
.Lx411_0:
 .quad .Lx411_0_s
.Lx411_0_s:
 .string "Pop_final"
# IR_LIT_STRING
 xchain387_n17_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain387_n22_α
 xchain387_n17_β:
 jmp xchain387_n14_af
.Lx412_0:
 .quad .Lx412_0_s
.Lx412_0_s:
 .string "'ROOT'"
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain387_n18_α:
 lea rdi, [rbp + 432]
 call rt_match_value_get_pat_fn@PLT
 test rax, rax
 jz .Lx413_0
 mov r8d, 0
 lea rcx, [rip + .Lx413_4]
 lea rdx, [rip + .Lx413_5]
 jmp rax
.Lx413_4:
 jmp xchain387_n14_as
.Lx413_5:
 jmp xchain387_n14_af
.Lx413_0:
 lea rdi, [rbp + 432]
 call rt_match_value_open@PLT
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain387_n14_af
 mov r14d, eax
 lea rax, [rip + .Lx413_6]
 sub rsp, 8
 push rax
 jmp xchain387_n14_as
.Lx413_6:
 add rsp, 16
 jmp xchain387_n14_af
 xchain387_n18_β:
 jmp qword ptr [rsp]
# IR_MATCH_ARBNO_NARY (ZB-FC-4 rsp linked-frame-chain)
 xchain387_n19_α:
 mov dword ptr [rbp + 528], r14d
 mov dword ptr [rbp + 532], r14d
 mov dword ptr [rbp + 536], 0
 mov qword ptr [rbp + 552], rsp
 mov qword ptr [rbp + 544], 0
 jmp xchain387_n14_as
 xchain387_n19_β:
 mov r14d, dword ptr [rbp + 532]
 mov rax, qword ptr [rbp + 544]
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
 mov qword ptr [rbp + 544], rsp
 mov rbp, rsp
 add rbp, -536
 jmp xchain387_n23_α
xchain387_n19_as:
 mov eax, dword ptr [rbp + 544]
 cmp r14d, eax
 je xchain387_n23_β
 mov rbp, qword ptr [rbp + 536]
 mov eax, dword ptr [rbp + 536]
 add eax, 1
 mov dword ptr [rbp + 536], eax
 mov dword ptr [rbp + 532], r14d
 jmp xchain387_n14_as
xchain387_n19_af:
 mov rax, qword ptr [rbp + 552]
 mov rdx, qword ptr [rbp + 536]
 lea rsp, [rbp + 600]
 mov rbp, rdx
 mov ecx, dword ptr [rbp + 536]
 test ecx, ecx
 jz .Lx415_2
 sub ecx, 1
 mov dword ptr [rbp + 536], ecx
 mov qword ptr [rbp + 544], rax
 lea rbp, [rax + -536]
 jmp xchain387_n23_β
.Lx415_2:
 mov r14d, dword ptr [rbp + 528]
 mov rsp, qword ptr [rbp + 552]
 jmp xchain387_n14_af
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain387_n20_α:
 mov rax, qword ptr [1879052864]
 mov rdx, qword ptr [1879052872]
 cmp eax, 3
 jne .Lx416_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx416_10
.Lx416_9:
 xor eax, eax
.Lx416_10:
 test rax, rax
 jz .Lx416_0
 mov r8d, 0
 lea rcx, [rip + .Lx416_4]
 lea rdx, [rip + .Lx416_5]
 jmp rax
.Lx416_4:
 jmp xchain387_n14_as
.Lx416_5:
 jmp xchain387_n14_af
.Lx416_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S4]
 xor esi, esi
 call rt_defer_open@PLT
.Lx416_2:
 test rax, rax
 je .Lx416_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx416_7]
 lea rdx, [rip + .Lx416_8]
 jmp rax
.Lx416_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx416_2
.Lx416_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx416_2
.Lx416_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain387_n14_af
 mov r14d, eax
 lea rax, [rip + .Lx416_6]
 sub rsp, 8
 push rax
 jmp xchain387_n14_as
.Lx416_6:
 add rsp, 16
 jmp xchain387_n14_af
 xchain387_n20_β:
 jmp qword ptr [rsp]
# IR_MATCH_VALUE (operand[0] pattern value, no manufactured name)
 xchain387_n21_α:
 lea rdi, [rbp + 656]
 call rt_match_value_get_pat_fn@PLT
 test rax, rax
 jz .Lx417_0
 mov r8d, 0
 lea rcx, [rip + .Lx417_4]
 lea rdx, [rip + .Lx417_5]
 jmp rax
.Lx417_4:
 jmp xchain387_n14_as
.Lx417_5:
 jmp xchain387_n14_af
.Lx417_0:
 lea rdi, [rbp + 656]
 call rt_match_value_open@PLT
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain387_n14_af
 mov r14d, eax
 lea rax, [rip + .Lx417_6]
 sub rsp, 8
 push rax
 jmp xchain387_n14_as
.Lx417_6:
 add rsp, 16
 jmp xchain387_n14_af
 xchain387_n21_β:
 jmp qword ptr [rsp]
 xchain387_n22_α:
 sub rsp, 32
 mov rax, qword ptr [1879052496]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052504]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052528]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052536]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx419_0]
 mov esi, 1
 mov edx, 1
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx419_5
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [1879052496], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [1879052504], rax
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx419_6]
 lea rdx, [rip + .Lx419_7]
 jmp rax
.Lx419_6:
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
 jmp .Lx419_2
.Lx419_7:
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
 jmp .Lx419_2
.Lx419_5:
 add rsp, 32
 mov edi, 0
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx419_0]
 mov esi, 1
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
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain387_n14_af
 jmp xchain387_n18_α
 xchain387_n22_β:
 jmp xchain387_n14_af
.Lx419_0:
 .quad .Lx419_0_s
.Lx419_0_s:
 .string "Push_list"
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain387_n23_α:
 mov rax, qword ptr [1879052896]
 mov rdx, qword ptr [1879052904]
 cmp eax, 3
 jne .Lx420_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx420_10
.Lx420_9:
 xor eax, eax
.Lx420_10:
 test rax, rax
 jz .Lx420_0
 mov r8d, 0
 lea rcx, [rip + .Lx420_4]
 lea rdx, [rip + .Lx420_5]
 jmp rax
.Lx420_4:
 jmp xchain387_n19_as
.Lx420_5:
 jmp xchain387_n19_af
.Lx420_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S5]
 xor esi, esi
 call rt_defer_open@PLT
.Lx420_2:
 test rax, rax
 je .Lx420_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx420_7]
 lea rdx, [rip + .Lx420_8]
 jmp rax
.Lx420_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx420_2
.Lx420_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx420_2
.Lx420_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain387_n19_af
 mov r14d, eax
 lea rax, [rip + .Lx420_6]
 sub rsp, 8
 push rax
 jmp xchain387_n19_as
.Lx420_6:
 add rsp, 16
 jmp xchain387_n19_af
 xchain387_n23_β:
 jmp qword ptr [rsp]
proc_PAT$4_scanhit:
cmp qword ptr [rbp + 880], 1
jne 7f
mov ecx, dword ptr [rbp + 872]
lea rdx, [rip + g_scan_hit_start]
mov dword ptr [rdx], ecx
7:
jmp proc_PAT$4_γ
proc_PAT$4_scanfail:
cmp qword ptr [rbp + 880], 1
jne 8f
mov eax, dword ptr [rbp + 872]
inc eax
cmp eax, r15d
jg 8f
lea rcx, [rip + g_anchor]
cmp qword ptr [rcx], 0
jne 8f
mov dword ptr [rbp + 872], eax
mov r14d, eax
mov rsp, rbp
jmp proc_PAT$4_attempt
8:
jmp proc_PAT$4_ω
proc_PAT$4_res:
add rsp, 8
pop rbp
proc_PAT$4_β:
jmp qword ptr [rbp + 848]
proc_PAT$4_γ:
push rbp
lea rax, [rip + proc_PAT$4_res]
push rax
mov rax, [rbp + 888]
mov rbp, [rbp + 904]
jmp rax
proc_PAT$4_ω:
mov rax, [rbp + 896]
lea rsp, [rbp + 912]
mov rbp, [rbp + 904]
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
  mov esi, 768
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
  mov esi, 880
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
  .Lgvan40: .string "wrd"
  .Lgvan41: .string "treebank"
  .Lgvan42: .string "bank"
  .Lgvan43: .string "line"
  .Lgvan44: .string "src"
  .Lgvan45: .string "PAT$1$A0"
  .Lgvan46: .string "PAT$2$A0"
  .Lgvan47: .string "PAT$2$A1"
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
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  mov edi, 48
  call rt_gva_island@PLT
  mov rsi, rax
  lea rdi, [rip + __gva_names]
  mov edx, 48
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
 xchain421_n0_α:
 mov rdi, qword ptr [rip + .Lx422_0]
 call rt_keyword_read_snobol4@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain421_n1_α
 xchain421_n0_β:
 jmp xchain421_n8_α
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "ALPHABET"
# IR_MATCH_HEAD
 xchain421_n1_α:
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
.Lx424_0:
 mov r14d, dword ptr [rsp + 0]
 jmp xchain421_n2_α
 xchain421_n1_β:
 add dword ptr [rsp + 0], 1
 mov eax, dword ptr [rsp + 0]
 cmp eax, r15d
 jg .Lx424_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx424_1
 jmp .Lx424_0
.Lx424_1:
 mov rax, qword ptr [rsp + 8]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rsp + 16]
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain421_n8_α
# IR_MATCH_SEQ_NARY (ZB-FC-3b: zero cell, LIFO-structural)
 xchain421_n2_α:
 jmp xchain421_n4_α
xchain421_n2_as:
 jmp xchain421_n3_α
 xchain421_n2_β:
 jmp xchain421_n7_β
xchain421_n2_af:
 jmp xchain421_n1_β
# IR_MATCH_RELEASE
 xchain421_n3_α:
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
.Lx428_1:
 test rax, rax
 je .Lx428_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx428_3]
 lea rdx, [rip + .Lx428_4]
 jmp rax
.Lx428_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx428_1
.Lx428_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx428_1
.Lx428_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 144]
 mov rbp, qword ptr [rbp + 152]
 jmp xchain421_n8_α
# IR_LIT_INTEGER
 xchain421_n4_α:
 mov qword ptr [rbp + 208], 6
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain421_n5_α
 xchain421_n4_β:
 jmp xchain421_n2_af
.Lx429_0:
 .quad 10
# IR_MATCH_POS
 xchain421_n5_α:
 mov rax, 10
 cmp r14d, eax
 jne xchain421_n2_af
 jmp xchain421_n6_α
 xchain421_n5_β:
 jmp xchain421_n2_af
# IR_MATCH_CAPTURE_SAVE fc cell
 xchain421_n6_α:
 sub rsp, 16
 mov dword ptr [rsp + 0], r14d
 jmp xchain421_n9_α
 xchain421_n6_β:
 add rsp, 16
 jmp xchain421_n2_af
# IR_MATCH_CAPTURE_COND (pend-park inline pend)
 xchain421_n7_α:
 mov eax, dword ptr [rsp + 0]
 lea rcx, [rip + .S7]
 mov qword ptr [r12 + 0], rcx
 mov esi, eax
 mov qword ptr [r12 + 8], rsi
 mov edx, r14d
 sub edx, eax
 mov qword ptr [r12 + 16], rdx
 add r12, 24
 jmp xchain421_n2_as
 xchain421_n7_β:
 sub r12, 24
 jmp xchain421_n9_β
# IR_LIT_STRING
 xchain421_n8_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx435_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain421_n10_α
 xchain421_n8_β:
 jmp xchain421_n11_α
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "list(head,tail)"
# IR_MATCH_LEN
 xchain421_n9_α:
 mov eax, r14d
 add eax, 1
 cmp eax, r15d
 jle .Lx436_240
 add rsp, 16
 jmp xchain421_n2_af
.Lx436_240:
 add r14d, 1
 jmp xchain421_n7_α
 xchain421_n9_β:
 sub r14d, 1
 add rsp, 16
 jmp xchain421_n2_af
 xchain421_n10_α:
# BOX IR_CALL DATA(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
  .section .rodata
  .Lrkfn438: .string "DATA"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn438]
 lea rsi, [rbp + 336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain421_n11_α
 jmp xchain421_n11_α
 xchain421_n10_β:
 jmp xchain421_n11_α
# IR_LIT_STRING
 xchain421_n11_α:
 mov qword ptr [rbp + 4736], 1
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [rbp + 4744], rax
 jmp xchain421_n12_α
 xchain421_n11_β:
 jmp xchain421_n14_α
.Lx439_0:
 .quad .Lx439_0_s
.Lx439_0_s:
 .string " "
# IR_VAR
 xchain421_n12_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain421_n13_α
 xchain421_n12_β:
 jmp xchain421_n14_α
 xchain421_n13_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4736]
 mov rsi, qword ptr [rbp + 4744]
 mov rdx, qword ptr [rbp + 4768]
 mov rcx, qword ptr [rbp + 4776]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 jmp xchain421_n15_α
 xchain421_n13_β:
 jmp xchain421_n14_α
# IR_LIT_STRING
 xchain421_n14_α:
 mov qword ptr [rbp + 5056], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [rbp + 5064], rax
 jmp xchain421_n16_α
 xchain421_n14_β:
 jmp xchain421_n19_α
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain421_n15_α:
 mov rax, qword ptr [rbp + 4704]
 mov rdx, qword ptr [rbp + 4712]
 mov qword ptr [1879053008], rax
 mov qword ptr [1879053016], rdx
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 jmp xchain421_n17_α
 xchain421_n15_β:
 jmp xchain421_n14_α
# IR_VAR
 xchain421_n16_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 jmp xchain421_n18_α
 xchain421_n16_β:
 jmp xchain421_n19_α
# IR_LIT_STRING
 xchain421_n17_α:
 mov qword ptr [rbp + 4656], 1
 mov rax, qword ptr [rip + .Lx445_0]
 mov qword ptr [rbp + 4664], rax
 jmp xchain421_n20_α
 xchain421_n17_β:
 jmp xchain421_n14_α
.Lx445_0:
 .quad .Lx445_0_s
.Lx445_0_s:
 .string "PAT$1"
 xchain421_n18_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 5056]
 mov rsi, qword ptr [rbp + 5064]
 mov rdx, qword ptr [rbp + 5088]
 mov rcx, qword ptr [rbp + 5096]
 call str_concat_d@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain421_n21_α
 xchain421_n18_β:
 jmp xchain421_n19_α
# IR_LIT_STRING
 xchain421_n19_α:
 mov qword ptr [rbp + 5184], 1
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [rbp + 5192], rax
 jmp xchain421_n22_α
 xchain421_n19_β:
 jmp xchain421_n26_α
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
 .string "PAT$3"
 xchain421_n20_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4656] -> [zr+4624]
 mov rax, qword ptr [rbp + 4656]
 mov qword ptr [rbp + 4624], rax
 mov rax, qword ptr [rbp + 4664]
 mov qword ptr [rbp + 4632], rax
  .section .rodata
  .Lrkfn449: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn449]
 lea rsi, [rbp + 4624]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4608], rax
 mov qword ptr [rbp + 4616], rdx
 cmp eax, 99
 je xchain421_n14_α
 jmp xchain421_n23_α
 xchain421_n20_β:
 jmp xchain421_n14_α
# IR_ASSIGN gva
 xchain421_n21_α:
 mov rax, qword ptr [rbp + 5024]
 mov rdx, qword ptr [rbp + 5032]
 mov qword ptr [1879053040], rax
 mov qword ptr [1879053048], rdx
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 jmp xchain421_n24_α
 xchain421_n21_β:
 jmp xchain421_n19_α
 xchain421_n22_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5184] -> [zr+5152]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5160], rax
  .section .rodata
  .Lrkfn452: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn452]
 lea rsi, [rbp + 5152]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5136], rax
 mov qword ptr [rbp + 5144], rdx
 cmp eax, 99
 je xchain421_n26_α
 jmp xchain421_n25_α
 xchain421_n22_β:
 jmp xchain421_n26_α
# IR_ASSIGN gva
 xchain421_n23_α:
 mov rax, qword ptr [rbp + 4608]
 mov rdx, qword ptr [rbp + 4616]
 mov qword ptr [1879052864], rax
 mov qword ptr [1879052872], rdx
 mov qword ptr [rbp + 4592], rax
 mov qword ptr [rbp + 4600], rdx
 jmp xchain421_n14_α
 xchain421_n23_β:
 jmp xchain421_n14_α
# IR_LIT_STRING
 xchain421_n24_α:
 mov qword ptr [rbp + 4944], 1
 mov rax, qword ptr [rip + .Lx454_0]
 mov qword ptr [rbp + 4952], rax
 jmp xchain421_n27_α
 xchain421_n24_β:
 jmp xchain421_n19_α
.Lx454_0:
 .quad .Lx454_0_s
.Lx454_0_s:
 .string "( )"
# IR_ASSIGN gva
 xchain421_n25_α:
 mov rax, qword ptr [rbp + 5136]
 mov rdx, qword ptr [rbp + 5144]
 mov qword ptr [1879052896], rax
 mov qword ptr [1879052904], rdx
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain421_n26_α
 xchain421_n25_β:
 jmp xchain421_n26_α
# IR_LIT_STRING
 xchain421_n26_α:
 mov qword ptr [rbp + 5280], 1
 mov rax, qword ptr [rip + .Lx456_0]
 mov qword ptr [rbp + 5288], rax
 jmp xchain421_n28_α
 xchain421_n26_β:
 jmp xchain421_n31_α
.Lx456_0:
 .quad .Lx456_0_s
.Lx456_0_s:
 .string "PAT$4"
# IR_VAR
 xchain421_n27_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 4976], rax
 mov qword ptr [rbp + 4984], rdx
 jmp xchain421_n29_α
 xchain421_n27_β:
 jmp xchain421_n19_α
 xchain421_n28_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5280] -> [zr+5248]
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 5256], rax
  .section .rodata
  .Lrkfn459: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn459]
 lea rsi, [rbp + 5248]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5232], rax
 mov qword ptr [rbp + 5240], rdx
 cmp eax, 99
 je xchain421_n31_α
 jmp xchain421_n30_α
 xchain421_n28_β:
 jmp xchain421_n31_α
 xchain421_n29_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 4944]
 mov rsi, qword ptr [rbp + 4952]
 mov rdx, qword ptr [rbp + 4976]
 mov rcx, qword ptr [rbp + 4984]
 call str_concat_d@PLT
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 jmp xchain421_n32_α
 xchain421_n29_β:
 jmp xchain421_n19_α
# IR_ASSIGN gva
 xchain421_n30_α:
 mov rax, qword ptr [rbp + 5232]
 mov rdx, qword ptr [rbp + 5240]
 mov qword ptr [1879052944], rax
 mov qword ptr [1879052952], rdx
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain421_n31_α
 xchain421_n30_β:
 jmp xchain421_n31_α
# IR_VAR
 xchain421_n31_α:
 mov rdi, qword ptr [rip + .Lx462_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain421_n34_α
 mov qword ptr [rbp + 8896], rax
 mov qword ptr [rbp + 8904], rdx
 jmp xchain421_n33_α
 xchain421_n31_β:
 jmp xchain421_n34_α
.Lx462_0:
 .quad .Lx462_0_s
.Lx462_0_s:
 .string "INPUT"
# IR_ASSIGN gva
 xchain421_n32_α:
 mov rax, qword ptr [rbp + 4912]
 mov rdx, qword ptr [rbp + 4920]
 mov qword ptr [1879053024], rax
 mov qword ptr [1879053032], rdx
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 jmp xchain421_n35_α
 xchain421_n32_β:
 jmp xchain421_n19_α
# IR_ASSIGN gva
 xchain421_n33_α:
 mov rax, qword ptr [rbp + 8896]
 mov rdx, qword ptr [rbp + 8904]
 mov qword ptr [1879052976], rax
 mov qword ptr [1879052984], rdx
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain421_n36_α
 xchain421_n33_β:
 jmp xchain421_n34_α
# IR_VAR
 xchain421_n34_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 jmp xchain421_n37_α
 xchain421_n34_β:
 jmp xchain421_n38_α
# IR_LIT_STRING
 xchain421_n35_α:
 mov qword ptr [rbp + 4864], 1
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [rbp + 4872], rax
 jmp xchain421_n39_α
 xchain421_n35_β:
 jmp xchain421_n19_α
.Lx466_0:
 .quad .Lx466_0_s
.Lx466_0_s:
 .string "PAT$2"
# IR_VAR
 xchain421_n36_α:
 mov rax, qword ptr [1879052992]
 mov rdx, qword ptr [1879053000]
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
 jmp xchain421_n40_α
 xchain421_n36_β:
 jmp xchain421_n31_α
# IR_MATCH_HEAD
 xchain421_n37_α:
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
.Lx469_0:
 mov r14d, dword ptr [rbp + 9120]
 jmp xchain421_n41_α
 xchain421_n37_β:
 add dword ptr [rbp + 9120], 1
 mov eax, dword ptr [rbp + 9120]
 cmp eax, r15d
 jg .Lx469_1
 lea rcx, [rip + g_anchor]
 mov rax, qword ptr [rcx]
 cmp rax, 0
 jne .Lx469_1
 jmp .Lx469_0
.Lx469_1:
 mov rax, qword ptr [rbp + 9128]
 lea rcx, [rip + g_patstk_sp]
 mov qword ptr [rcx + 0], rax
 mov rsp, qword ptr [rbp + 9136]
 mov r12, qword ptr [rbp + 9152]
 mov rbp, qword ptr [rbp + 9160]
 jmp xchain421_n38_α
# IR_LIT_STRING
 xchain421_n38_α:
 mov qword ptr [rbp + 9296], 1
 mov rax, qword ptr [rip + .Lx470_0]
 mov qword ptr [rbp + 9304], rax
 jmp xchain421_n42_α
 xchain421_n38_β:
 jmp main_γ
.Lx470_0:
 .quad .Lx470_0_s
.Lx470_0_s:
 .string "Pattern match failed"
 xchain421_n39_α:
# BOX IR_CALL SNO$MKPAT(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4864] -> [zr+4832]
 mov rax, qword ptr [rbp + 4864]
 mov qword ptr [rbp + 4832], rax
 mov rax, qword ptr [rbp + 4872]
 mov qword ptr [rbp + 4840], rax
  .section .rodata
  .Lrkfn472: .string "SNO$MKPAT"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn472]
 lea rsi, [rbp + 4832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 cmp eax, 99
 je xchain421_n19_α
 jmp xchain421_n43_α
 xchain421_n39_β:
 jmp xchain421_n19_α
# IR_VAR
 xchain421_n40_α:
 mov rax, qword ptr [1879052976]
 mov rdx, qword ptr [1879052984]
 mov qword ptr [rbp + 9040], rax
 mov qword ptr [rbp + 9048], rdx
 jmp xchain421_n44_α
 xchain421_n40_β:
 jmp xchain421_n31_α
# IR_MATCH_DEFER (ZS-2 jmp-entry)
 xchain421_n41_α:
 mov rax, qword ptr [1879052944]
 mov rdx, qword ptr [1879052952]
 cmp eax, 3
 jne .Lx474_9
 mov rdi, rdx
 call dtp_fn_of@PLT
 jmp .Lx474_10
.Lx474_9:
 xor eax, eax
.Lx474_10:
 test rax, rax
 jz .Lx474_0
 mov r8d, 0
 lea rcx, [rip + .Lx474_4]
 lea rdx, [rip + .Lx474_5]
 jmp rax
.Lx474_4:
 jmp xchain421_n45_α
.Lx474_5:
 jmp xchain421_n37_β
.Lx474_0:
 push r14
 push r15
 push r13
 sub rsp, 8
 lea rdi, [rip + .S8]
 xor esi, esi
 call rt_defer_open@PLT
.Lx474_2:
 test rax, rax
 je .Lx474_3
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx474_7]
 lea rdx, [rip + .Lx474_8]
 jmp rax
.Lx474_7:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx474_2
.Lx474_8:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_defer_step@PLT
 jmp .Lx474_2
.Lx474_3:
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov edi, r14d
 call rt_defer_close@PLT
 test eax, eax
 js xchain421_n37_β
 mov r14d, eax
 lea rax, [rip + .Lx474_6]
 sub rsp, 8
 push rax
 jmp xchain421_n45_α
.Lx474_6:
 add rsp, 16
 jmp xchain421_n37_β
 xchain421_n41_β:
 jmp qword ptr [rsp]
# IR_ASSIGN global
 xchain421_n42_α:
 mov rsi, qword ptr [rbp + 9296]
 mov rdx, qword ptr [rbp + 9304]
 mov rdi, qword ptr [rip + .Lx475_0]
 call NV_SET_fn@PLT
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp main_γ
 xchain421_n42_β:
 jmp main_γ
.Lx475_0:
 .quad .Lx475_0_s
.Lx475_0_s:
 .string "OUTPUT"
# IR_ASSIGN gva
 xchain421_n43_α:
 mov rax, qword ptr [rbp + 4816]
 mov rdx, qword ptr [rbp + 4824]
 mov qword ptr [1879052880], rax
 mov qword ptr [1879052888], rdx
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 jmp xchain421_n19_α
 xchain421_n43_β:
 jmp xchain421_n19_α
 xchain421_n44_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 9008]
 mov rsi, qword ptr [rbp + 9016]
 mov rdx, qword ptr [rbp + 9040]
 mov rcx, qword ptr [rbp + 9048]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8976], rax
 mov qword ptr [rbp + 8984], rdx
 jmp xchain421_n46_α
 xchain421_n44_β:
 jmp xchain421_n31_α
# IR_MATCH_RELEASE
 xchain421_n45_α:
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
.Lx479_1:
 test rax, rax
 je .Lx479_2
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx479_3]
 lea rdx, [rip + .Lx479_4]
 jmp rax
.Lx479_3:
 call rt_proc_call_epilogue_γ@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx479_1
.Lx479_4:
 call rt_proc_call_epilogue_ω@PLT
 mov rdi, rax
 mov rsi, rdx
 call rt_dcap_step@PLT
 jmp .Lx479_1
.Lx479_2:
 call rt_dcap_end_ok_close@PLT
 add rsp, 8
 pop r13
 pop r15
 pop r14
 mov r12, qword ptr [rbp + 9152]
 mov rbp, qword ptr [rbp + 9160]
 jmp xchain421_n47_α
# IR_VAR
 xchain421_n46_α:
 mov rax, qword ptr [1879052816]
 mov rdx, qword ptr [1879052824]
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 jmp xchain421_n48_α
 xchain421_n46_β:
 jmp xchain421_n31_α
 xchain421_n47_α:
 sub rsp, 32
 mov rax, qword ptr [1879052336]
 mov qword ptr [rsp + 0], rax
 mov rax, qword ptr [1879052344]
 mov qword ptr [rsp + 8], rax
 mov rax, qword ptr [1879052800]
 mov qword ptr [rsp + 16], rax
 mov rax, qword ptr [1879052808]
 mov qword ptr [rsp + 24], rax
 mov rdi, qword ptr [rip + .Lx482_0]
 mov esi, 1
 mov edx, 0
 call rt_proc_call_open_slim@PLT
 test rax, rax
 je .Lx482_5
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx482_6]
 lea rdx, [rip + .Lx482_7]
 jmp rax
.Lx482_6:
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
 jmp .Lx482_2
.Lx482_7:
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
 jmp .Lx482_2
.Lx482_5:
 add rsp, 32
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
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 cmp eax, 99
 je main_γ
 jmp xchain421_n49_α
 xchain421_n47_β:
 jmp main_γ
.Lx482_0:
 .quad .Lx482_0_s
.Lx482_0_s:
 .string "pp_bank"
 xchain421_n48_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [rbp + 8976]
 mov rsi, qword ptr [rbp + 8984]
 mov rdx, qword ptr [rbp + 9072]
 mov rcx, qword ptr [rbp + 9080]
 call str_concat_d@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 jmp xchain421_n50_α
 xchain421_n48_β:
 jmp xchain421_n31_α
# IR_ASSIGN gva
 xchain421_n49_α:
 mov rax, qword ptr [rbp + 9248]
 mov rdx, qword ptr [rbp + 9256]
 mov qword ptr [1879052848], rax
 mov qword ptr [1879052856], rdx
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 jmp main_γ
 xchain421_n49_β:
 jmp main_γ
# IR_ASSIGN gva
 xchain421_n50_α:
 mov rax, qword ptr [rbp + 8944]
 mov rdx, qword ptr [rbp + 8952]
 mov qword ptr [1879052992], rax
 mov qword ptr [1879053000], rdx
 mov qword ptr [rbp + 8928], rax
 mov qword ptr [rbp + 8936], rdx
 jmp xchain421_n31_α
 xchain421_n50_β:
 jmp xchain421_n31_α
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
.S3: .string "word"
.S4: .string "delim"
.S5: .string "group"
.S6: .string "wrd"
.S7: .string "nl"
.S8: .string "treebank"
.text
