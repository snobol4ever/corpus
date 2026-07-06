  .intel_syntax noprefix
  .text
  .globl proc_display_α
proc_display_α:
#=======================================================================================================================
    .global proc_display_α
    .global proc_display_β
    .global proc_display_γ
    .global proc_display_ω
push r12
  mov r12, rdi
proc_display_α_body:
xchain0_n0_α:
# IR_VAR_REF gva
bb1_α:
 lea rdi, [rbx + 144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
xchain0_n1_α:
# IR_UNOP_TEST lv
bb2_α:
 mov eax, dword ptr [r12 + 1456]
 cmp eax, 99
 je xchain0_n3_α
 mov rdi, qword ptr [r12 + 1456]
 mov rsi, qword ptr [r12 + 1464]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n3_α
 cmp eax, 0
 jne xchain0_n3_α
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1480], rax
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n3_α
xchain0_n2_α:
# IR_LIT_INTEGER
bb3_α:
 mov qword ptr [r12 + 1504], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
xchain0_n3_α:
# IR_VAR gva
bb4_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n8_α
xchain0_n4_α:
# IR_ASSIGN_VAR write through variable
bb5_α:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n3_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n3_α
xchain0_n5_α:
bb6_α:
# BOX IR_CALL shuffle(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+1184] -> [r12+1168]
 mov rax, qword ptr [r12 + 1184]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1192]
 mov qword ptr [r12 + 1176], rax
  .section .rodata
  .Lbynamefn8: .string "shuffle"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn8]
 lea rsi, [r12 + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain0_n8_α
 jmp xchain0_n7_α
xchain0_n5_β:
 jmp xchain0_n8_α
xchain0_n6_α:
# IR_LIT_STRING
bb7_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx9_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain0_n9_α
 xchain0_n6_β:
 jmp xchain0_n16_α
.Lx9_0:
 .quad .Lx9_0_s
.Lx9_0_s:
 .string "\n"
xchain0_n7_α:
# IR_ASSIGN gva
bb8_α:
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n8_α
xchain0_n8_α:
# IR_MAKE_LIST
bb9_α:
 lea rdi, [r12 + 1136]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n12_α
xchain0_n9_α:
# IR_LIT_STRING
bb10_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n16_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "-"
xchain0_n10_α:
bb11_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1520], rax
 mov qword ptr [r12 + 1528], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n12_α
xchain0_n11_α:
# IR_LIT_INTEGER
bb12_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx15_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n16_α
.Lx15_0:
 .quad 33
xchain0_n12_α:
# IR_VAR
bb13_α:
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 872], rax
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n29_α
xchain0_n13_α:
bb14_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1424] -> [r12+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [r12+1440] -> [r12+1408]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn19: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
xchain0_n14_α:
# IR_VAR gva
bb15_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n29_α
xchain0_n15_α:
bb16_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n16_α
xchain0_n16_α:
# IR_LIT_STRING
bb17_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain0_n19_α
 xchain0_n16_β:
 jmp xchain0_n3_α
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string " "
xchain0_n17_α:
# IR_LIT_INTEGER
bb18_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx23_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n29_α
.Lx23_0:
 .quad 0
xchain0_n18_α:
# IR_ASSIGN gva
bb19_α:
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n16_α
 xchain0_n18_β:
 jmp xchain0_n16_α
xchain0_n19_α:
# IR_LIT_INTEGER
bb20_α:
 mov qword ptr [r12 + 1312], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n3_α
.Lx25_0:
 .quad 10
xchain0_n20_α:
# IR_LIT_INTEGER
bb21_α:
 mov qword ptr [r12 + 1024], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n29_α
.Lx26_0:
 .quad 3
xchain0_n21_α:
bb22_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1296] -> [r12+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [r12+1312] -> [r12+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn28: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn28]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n3_α
xchain0_n22_α:
# IR_TO
bb23_α:
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
.Lx30_0:
 mov rax, qword ptr [r12 + 992]
 mov rcx, qword ptr [r12 + 1032]
 cmp rax, rcx
 jg xchain0_n29_α
 mov qword ptr [r12 + 976], 6
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n24_α
 xchain0_n22_β:
 inc qword ptr [r12 + 992]
 jmp .Lx30_0
xchain0_n23_α:
# IR_ASSIGN gva
bb24_α:
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n3_α
xchain0_n24_α:
# IR_VAR gva
bb25_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n22_β
xchain0_n25_α:
 jmp xchain0_n27_α
xchain0_n25_β:
 jmp xchain0_n3_α
xchain0_n26_α:
bb27_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx34_0
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 100
 je .Lx34_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx34_2
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 6
 jne .Lx34_2
.Lx34_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1048]
 imul rax, rcx
 mov qword ptr [r12 + 960], 6
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n28_α
.Lx34_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 2
 lea r9, [r12 + 960]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx34_3
.Lx34_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n29_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
.Lx34_3:
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n29_α
xchain0_n27_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb28_α:
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
 lea rax, [rip + xchain0_n3_α]
 mov qword ptr [r12 + 1216], rax
 jmp xchain0_n3_α
 xchain0_n27_β:
 jmp xchain0_n3_α
xchain0_n28_α:
# IR_LIT_INTEGER
bb29_α:
 mov qword ptr [r12 + 1056], 6
 mov rax, qword ptr [rip + .Lx37_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n22_β
.Lx37_0:
 .quad 1
xchain0_n29_α:
bb30_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn39: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 816]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain0_n32_α
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n32_α
xchain0_n30_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb31_α:
 jmp qword ptr [r12 + 1216]
 xchain0_n30_β:
 jmp xchain0_n3_α
xchain0_n31_α:
bb32_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 960]
 cmp eax, 100
 je .Lx42_0
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 100
 je .Lx42_0
 mov eax, dword ptr [r12 + 960]
 cmp eax, 6
 jne .Lx42_2
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 6
 jne .Lx42_2
.Lx42_1:
 mov rax, qword ptr [r12 + 968]
 mov rcx, qword ptr [r12 + 1064]
 add rax, rcx
 mov qword ptr [r12 + 944], 6
 mov qword ptr [r12 + 952], rax
 jmp xchain0_n33_α
.Lx42_0:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 mov r8d, 0
 lea r9, [r12 + 944]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx42_3
.Lx42_2:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n29_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
.Lx42_3:
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n29_α
xchain0_n32_α:
# IR_VAR gva
bb33_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n41_α
xchain0_n33_α:
# IR_VAR gva
bb34_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n22_β
xchain0_n34_α:
# IR_VAR_REF local
bb35_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n41_α
xchain0_n35_α:
bb36_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx47_0
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 100
 je .Lx47_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx47_2
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 6
 jne .Lx47_2
.Lx47_1:
 mov rax, qword ptr [r12 + 952]
 mov rcx, qword ptr [r12 + 1080]
 add rax, rcx
 mov qword ptr [r12 + 1088], 6
 mov qword ptr [r12 + 1096], rax
 jmp xchain0_n37_α
.Lx47_0:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 lea r9, [r12 + 1088]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx47_3
.Lx47_2:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n22_β
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
.Lx47_3:
 jmp xchain0_n37_α
 xchain0_n35_β:
 jmp xchain0_n22_β
xchain0_n36_α:
# IR_LIT_INTEGER
bb37_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n41_α
.Lx48_0:
 .quad 1
xchain0_n37_α:
# IR_SUBSCRIPT section
bb38_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8, qword ptr [r12 + 1088]
 mov r9, qword ptr [r12 + 1096]
 call subscript_get2@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n22_β
xchain0_n38_α:
# IR_SUBSCRIPT x[i] variable
bb39_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n41_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp xchain0_n41_α
xchain0_n39_α:
bb40_α:
  .section .rodata
  .Lcall40_pname: .string "show"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall40_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n42_α
xchain0_n39_β:
 jmp xchain0_n29_α
xchain0_n40_α:
# IR_DEREF variable -> value
bb41_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n41_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n41_α
xchain0_n41_α:
bb42_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn54: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn54]
 lea rsi, [r12 + 640]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain0_n44_α
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n44_α
xchain0_n42_α:
bb43_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+864] -> [r12+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [r12+880] -> [r12+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn56: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n29_α
 jmp xchain0_n22_β
 xchain0_n42_β:
 jmp xchain0_n29_α
xchain0_n43_α:
# IR_LIST_BANG
bb44_α:
 mov qword ptr [r12 + 720], 0
.Lx58_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 720]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp rax, 99
 je xchain0_n41_α
 jmp xchain0_n45_α
 xchain0_n43_β:
 inc qword ptr [r12 + 720]
 jmp .Lx58_0
xchain0_n44_α:
# IR_LIT_INTEGER
bb45_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n46_α
 xchain0_n44_β:
 jmp xchain0_n64_α
.Lx59_0:
 .quad 1
xchain0_n45_α:
bb46_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+688] -> [r12+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [r12+704] -> [r12+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn61: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn61]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n41_α
 jmp xchain0_n43_β
 xchain0_n45_β:
 jmp xchain0_n41_α
xchain0_n46_α:
# IR_LIT_INTEGER
bb47_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n64_α
.Lx62_0:
 .quad 4
xchain0_n47_α:
# IR_TO
bb48_α:
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 272], rax
.Lx64_0:
 mov rax, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 312]
 cmp rax, rcx
 jg xchain0_n64_α
 mov qword ptr [r12 + 256], 6
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n48_α
 xchain0_n47_β:
 inc qword ptr [r12 + 272]
 jmp .Lx64_0
xchain0_n48_α:
bb49_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n64_α
xchain0_n49_α:
# IR_VAR_REF local
bb50_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n47_β
xchain0_n50_α:
# IR_LIT_INTEGER
bb51_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx68_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n47_β
.Lx68_0:
 .quad 4
xchain0_n51_α:
# IR_SUBSCRIPT x[i] variable
bb52_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n47_β
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n47_β
xchain0_n52_α:
# IR_VAR
bb53_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n47_β
xchain0_n53_α:
# IR_SUBSCRIPT x[i] variable
bb54_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n47_β
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n47_β
xchain0_n54_α:
# IR_DEREF variable -> value
bb55_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n47_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n47_β
xchain0_n55_α:
# IR_LIT_INTEGER
bb56_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n47_β
.Lx74_0:
 .quad 20
xchain0_n56_α:
bb57_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+496] -> [r12+384]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [r12+512] -> [r12+400]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn76: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n47_β
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n47_β
xchain0_n57_α:
# IR_VAR_REF local
bb58_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n47_β
xchain0_n58_α:
# IR_LIT_INTEGER
bb59_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx79_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n47_β
.Lx79_0:
 .quad 2
xchain0_n59_α:
# IR_SUBSCRIPT x[i] variable
bb60_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n47_β
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n47_β
xchain0_n60_α:
# IR_VAR
bb61_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n47_β
xchain0_n61_α:
# IR_SUBSCRIPT x[i] variable
bb62_α:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n47_β
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n47_β
xchain0_n62_α:
# IR_DEREF variable -> value
bb63_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n47_β
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n47_β
xchain0_n63_α:
bb64_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [r12+608] -> [r12+352]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn86: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn86]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n47_β
 jmp xchain0_n47_β
 xchain0_n63_β:
 jmp xchain0_n47_β
xchain0_n64_α:
bb65_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn88: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn88]
 lea rsi, [r12 + 240]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain0_n65_α
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n65_α
xchain0_n65_α:
# IR_VAR gva
bb66_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n70_α
xchain0_n66_α:
# IR_VAR_REF local
bb67_α:
 lea rdi, [r12 + 1520]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n70_α
xchain0_n67_α:
# IR_LIT_INTEGER
bb68_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n70_α
.Lx92_0:
 .quad 3
xchain0_n68_α:
# IR_SUBSCRIPT x[i] variable
bb69_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n70_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n70_α
xchain0_n69_α:
# IR_DEREF variable -> value
bb70_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n70_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp xchain0_n70_α
xchain0_n70_α:
# IR_VAR gva
bb71_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n72_α
 xchain0_n70_β:
 jmp proc_display_ω
xchain0_n71_α:
# IR_LIST_BANG
bb72_α:
 mov qword ptr [r12 + 144], 0
.Lx97_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp rax, 99
 je xchain0_n70_α
 jmp xchain0_n73_α
 xchain0_n71_β:
 inc qword ptr [r12 + 144]
 jmp .Lx97_0
xchain0_n72_α:
bb73_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn99: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn99]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je proc_display_ω
 jmp proc_display_γ
 xchain0_n72_β:
 jmp proc_display_ω
xchain0_n73_α:
bb74_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [r12+128] -> [r12+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn101: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n70_α
 jmp xchain0_n71_β
 xchain0_n73_β:
 jmp xchain0_n70_α
proc_display_β:
jmp proc_display_ω
proc_display_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_display_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_show_α
proc_show_α:
#=======================================================================================================================
    .global proc_show_α
    .global proc_show_β
    .global proc_show_γ
    .global proc_show_ω
push r12
  mov r12, rdi
proc_show_α_body:
xchain00001_n0_α:
# IR_VAR_REF gva
bb75_α:
 lea rdi, [rbx + 224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00001_n1_α
 xchain00001_n0_β:
 jmp xchain00001_n3_α
xchain00001_n1_α:
# IR_UNOP_TEST lv
bb76_α:
 mov eax, dword ptr [r12 + 1168]
 cmp eax, 99
 je xchain00001_n3_α
 mov rdi, qword ptr [r12 + 1168]
 mov rsi, qword ptr [r12 + 1176]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00001_n3_α
 cmp eax, 0
 jne xchain00001_n3_α
 mov rax, qword ptr [r12 + 1168]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1176]
 mov qword ptr [r12 + 1192], rax
 jmp xchain00001_n2_α
 xchain00001_n1_β:
 jmp xchain00001_n3_α
xchain00001_n2_α:
# IR_LIT_INTEGER
bb77_α:
 mov qword ptr [r12 + 1216], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00001_n4_α
 xchain00001_n2_β:
 jmp xchain00001_n3_α
.Lx00002_0:
 .quad 1
xchain00001_n3_α:
# IR_LIT_STRING
bb78_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx00003_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain00001_n5_α
 xchain00001_n3_β:
 jmp proc_show_ω
.Lx00003_0:
 .quad .Lx00003_0_s
.Lx00003_0_s:
 .string "S: "
xchain00001_n4_α:
# IR_ASSIGN_VAR write through variable
bb79_α:
 mov rdi, qword ptr [r12 + 1184]
 mov rsi, qword ptr [r12 + 1192]
 mov rdx, qword ptr [r12 + 1216]
 mov rcx, qword ptr [r12 + 1224]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00001_n3_α
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00001_n6_α
 xchain00001_n4_β:
 jmp xchain00001_n3_α
xchain00001_n5_α:
# IR_VAR
bb80_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00001_n7_α
 xchain00001_n5_β:
 jmp proc_show_ω
xchain00001_n6_α:
# IR_VAR gva
bb81_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00001_n8_α
 xchain00001_n6_β:
 jmp xchain00001_n15_α
xchain00001_n7_α:
# IR_VAR gva
bb82_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00001_n9_α
 xchain00001_n7_β:
 jmp proc_show_ω
xchain00001_n8_α:
# IR_VAR gva
bb83_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00001_n10_α
 xchain00001_n8_β:
 jmp xchain00001_n15_α
xchain00001_n9_α:
bb84_α:
  .section .rodata
  .Lcall84_pname: .string "arrange"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 208]
 mov rdx, qword ptr [r12 + 216]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall84_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00001_n11_α
xchain00001_n9_β:
 jmp proc_show_ω
xchain00001_n10_α:
# IR_LIT_INTEGER
bb85_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00001_n12_α
 xchain00001_n10_β:
 jmp xchain00001_n15_α
.Lx00004_0:
 .quad 3
xchain00001_n11_α:
bb86_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 call str_concat_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00001_n13_α
 xchain00001_n11_β:
 jmp proc_show_ω
xchain00001_n12_α:
bb87_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1136] -> [r12+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [r12+1152] -> [r12+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn118: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn118]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain00001_n15_α
 jmp xchain00001_n14_α
 xchain00001_n12_β:
 jmp xchain00001_n15_α
xchain00001_n13_α:
# IR_LIT_STRING
bb88_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00001_n16_α
 xchain00001_n13_β:
 jmp proc_show_ω
.Lx00005_0:
 .quad .Lx00005_0_s
.Lx00005_0_s:
 .string "H: "
xchain00001_n14_α:
bb89_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00001_n17_α
 xchain00001_n14_β:
 jmp xchain00001_n15_α
xchain00001_n15_α:
# IR_VAR gva
bb90_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00001_n18_α
 xchain00001_n15_β:
 jmp xchain00001_n23_α
xchain00001_n16_α:
# IR_VAR
bb91_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain00001_n19_α
 xchain00001_n16_β:
 jmp proc_show_ω
xchain00001_n17_α:
# IR_ASSIGN gva
bb92_α:
 mov rax, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00001_n15_α
 xchain00001_n17_β:
 jmp xchain00001_n15_α
xchain00001_n18_α:
# IR_VAR gva
bb93_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00001_n20_α
 xchain00001_n18_β:
 jmp xchain00001_n23_α
xchain00001_n19_α:
# IR_VAR gva
bb94_α:
 mov rax, qword ptr [rbx + 192]
 mov rdx, qword ptr [rbx + 200]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00001_n21_α
 xchain00001_n19_β:
 jmp proc_show_ω
xchain00001_n20_α:
bb95_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call str_concat_d@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00001_n22_α
 xchain00001_n20_β:
 jmp xchain00001_n23_α
xchain00001_n21_α:
bb96_α:
  .section .rodata
  .Lcall96_pname: .string "arrange"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall96_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00001_n24_α
xchain00001_n21_β:
 jmp proc_show_ω
xchain00001_n22_α:
# IR_VAR gva
bb97_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00001_n25_α
 xchain00001_n22_β:
 jmp xchain00001_n23_α
xchain00001_n23_α:
# IR_VAR gva
bb98_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00001_n26_α
 xchain00001_n23_β:
 jmp xchain00001_n33_α
xchain00001_n24_α:
bb99_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call str_concat_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00001_n27_α
 xchain00001_n24_β:
 jmp proc_show_ω
xchain00001_n25_α:
# IR_LIT_INTEGER
bb00006_α:
 mov qword ptr [r12 + 1024], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00001_n28_α
 xchain00001_n25_β:
 jmp xchain00001_n23_α
.Lx00007_0:
 .quad 2
xchain00001_n26_α:
# IR_LIT_INTEGER
bb00008_α:
 mov qword ptr [r12 + 832], 6
 mov rax, qword ptr [rip + .Lx00009_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00001_n29_α
 xchain00001_n26_β:
 jmp xchain00001_n33_α
.Lx00009_0:
 .quad 2
xchain00001_n27_α:
# IR_LIT_STRING
bb00001_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00001_n30_α
 xchain00001_n27_β:
 jmp proc_show_ω
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "D: "
xchain00001_n28_α:
bb00011_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1008] -> [r12+976]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+1024] -> [r12+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn136: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn136]
 lea rsi, [r12 + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain00001_n23_α
 jmp xchain00001_n31_α
 xchain00001_n28_β:
 jmp xchain00001_n23_α
xchain00001_n29_α:
bb00012_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+816] -> [r12+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [r12+832] -> [r12+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn138: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn138]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain00001_n33_α
 jmp xchain00001_n32_α
 xchain00001_n29_β:
 jmp xchain00001_n33_α
xchain00001_n30_α:
# IR_VAR
bb00013_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
 jmp xchain00001_n34_α
 xchain00001_n30_β:
 jmp proc_show_ω
xchain00001_n31_α:
bb00002_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 call str_concat_d@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00001_n35_α
 xchain00001_n31_β:
 jmp xchain00001_n23_α
xchain00001_n32_α:
# IR_VAR gva
bb00003_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00001_n36_α
 xchain00001_n32_β:
 jmp xchain00001_n33_α
xchain00001_n33_α:
# IR_VAR gva
bb00014_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00001_n37_α
 xchain00001_n33_β:
 jmp xchain00001_n3_α
xchain00001_n34_α:
# IR_VAR gva
bb00015_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00001_n38_α
 xchain00001_n34_β:
 jmp proc_show_ω
xchain00001_n35_α:
# IR_ASSIGN gva
bb00016_α:
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00001_n23_α
 xchain00001_n35_β:
 jmp xchain00001_n23_α
xchain00001_n36_α:
bb00017_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 call str_concat_d@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00001_n39_α
 xchain00001_n36_β:
 jmp xchain00001_n33_α
xchain00001_n37_α:
# IR_LIT_INTEGER
bb00018_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00019_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00001_n40_α
 xchain00001_n37_β:
 jmp xchain00001_n3_α
.Lx00019_0:
 .quad 3
xchain00001_n38_α:
bb00020_α:
  .section .rodata
  .Lcall00020_pname: .string "arrange"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00020_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00001_n41_α
xchain00001_n38_β:
 jmp proc_show_ω
xchain00001_n39_α:
# IR_VAR gva
bb00021_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00001_n42_α
 xchain00001_n39_β:
 jmp xchain00001_n33_α
xchain00001_n40_α:
bb00004_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+672] -> [r12+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [r12+688] -> [r12+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn151: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn151]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00001_n3_α
 jmp xchain00001_n43_α
 xchain00001_n40_β:
 jmp xchain00001_n3_α
xchain00001_n41_α:
bb00022_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00001_n44_α
 xchain00001_n41_β:
 jmp proc_show_ω
xchain00001_n42_α:
bb00023_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call str_concat_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00001_n45_α
 xchain00001_n42_β:
 jmp xchain00001_n33_α
xchain00001_n43_α:
# IR_VAR gva
bb00024_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00001_n46_α
 xchain00001_n43_β:
 jmp xchain00001_n3_α
xchain00001_n44_α:
# IR_LIT_STRING
bb00005_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00025_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00001_n47_α
 xchain00001_n44_β:
 jmp proc_show_ω
.Lx00025_0:
 .quad .Lx00025_0_s
.Lx00025_0_s:
 .string "C: "
xchain00001_n45_α:
# IR_ASSIGN gva
bb00026_α:
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [rbx + 192], rax
 mov qword ptr [rbx + 200], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00001_n33_α
 xchain00001_n45_β:
 jmp xchain00001_n33_α
xchain00001_n46_α:
bb00027_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00001_n48_α
 xchain00001_n46_β:
 jmp xchain00001_n3_α
xchain00001_n47_α:
# IR_VAR
bb00028_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain00001_n49_α
 xchain00001_n47_β:
 jmp proc_show_ω
xchain00001_n48_α:
# IR_ASSIGN gva
bb00029_α:
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00001_n50_α
 xchain00001_n48_β:
 jmp xchain00001_n3_α
xchain00001_n49_α:
# IR_VAR gva
bb00030_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00001_n51_α
 xchain00001_n49_β:
 jmp proc_show_ω
xchain00001_n50_α:
 jmp xchain00001_n52_α
xchain00001_n50_β:
 jmp xchain00001_n3_α
xchain00001_n51_α:
bb00031_α:
  .section .rodata
  .Lcall00031_pname: .string "arrange"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 528]
 mov rdx, qword ptr [r12 + 536]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 544]
 mov rdx, qword ptr [r12 + 552]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00031_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00001_n53_α
xchain00001_n51_β:
 jmp proc_show_ω
xchain00001_n52_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00032_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00001_n3_α
 xchain00001_n52_β:
 jmp xchain00001_n3_α
xchain00001_n53_α:
bb00033_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00001_n55_α
 xchain00001_n53_β:
 jmp proc_show_ω
xchain00001_n54_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00034_α:
 jmp qword ptr [r12 + 576]
 xchain00001_n54_β:
 jmp xchain00001_n3_α
xchain00001_n55_α:
# IR_MAKE_LIST
bb00035_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 56], rax
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 72], rax
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 88], rax
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 104], rax
 lea rdi, [r12 + 48]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00001_n56_α
 xchain00001_n55_β:
 jmp proc_show_ω
xchain00001_n56_α:
# IR_RETURN
bb00036_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_show_γ
proc_show_β:
jmp proc_show_ω
proc_show_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_show_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
  .globl proc_arrange_α
proc_arrange_α:
#=======================================================================================================================
    .global proc_arrange_α
    .global proc_arrange_β
    .global proc_arrange_γ
    .global proc_arrange_ω
push r12
  mov r12, rdi
proc_arrange_α_body:
xchain00037_n0_α:
# IR_VAR
bb00007_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00037_n1_α
 xchain00037_n0_β:
 jmp proc_arrange_ω
xchain00037_n1_α:
# IR_VAR gva
bb00009_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00037_n2_α
 xchain00037_n1_β:
 jmp proc_arrange_ω
xchain00037_n2_α:
# IR_VAR
bb00010_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
 jmp xchain00037_n3_α
 xchain00037_n2_β:
 jmp proc_arrange_ω
xchain00037_n3_α:
bb00038_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+192] -> [r12+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [r12+208] -> [r12+160]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 168], rax
# marshal arg2 = producer-box slot [r12+224] -> [r12+176]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn179: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn179]
 lea rsi, [r12 + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_arrange_ω
 jmp xchain00037_n4_α
 xchain00037_n3_β:
 jmp proc_arrange_ω
xchain00037_n4_α:
# IR_LIT_CHARSET
bb00039_α:
 mov qword ptr [r12 + 240], 1
 mov dword ptr [r12 + 244], -1
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00037_n5_α
 xchain00037_n4_β:
 jmp proc_arrange_ω
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string " "
xchain00037_n5_α:
bb00041_α:
# IR_BINOP_ARITH_REAL
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 240]
 mov rcx, qword ptr [r12 + 248]
 mov r8d, 20
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_arrange_ω
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00037_n6_α
 xchain00037_n5_β:
 jmp proc_arrange_ω
xchain00037_n6_α:
# IR_VAR gva
bb00042_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00037_n7_α
 xchain00037_n6_β:
 jmp proc_arrange_ω
xchain00037_n7_α:
# IR_VAR gva
bb00043_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00037_n8_α
 xchain00037_n7_β:
 jmp proc_arrange_ω
xchain00037_n8_α:
bb00044_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+64]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [r12+256] -> [r12+80]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 88], rax
# marshal arg2 = producer-box slot [r12+272] -> [r12+96]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn185: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn185]
 lea rsi, [r12 + 64]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_arrange_ω
 jmp xchain00037_n9_α
 xchain00037_n8_β:
 jmp proc_arrange_ω
xchain00037_n9_α:
# IR_RETURN
bb00045_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_arrange_γ
proc_arrange_β:
jmp proc_arrange_ω
proc_arrange_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_arrange_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "display"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_display_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "show"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_show_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname2: .string "arrange"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_arrange_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .section .rodata
  .Lgvan0: .string "deck"
  .Lgvan1: .string "deckimage"
  .Lgvan2: .string "handsize"
  .Lgvan3: .string "suitsize"
  .Lgvan4: .string "denom"
  .Lgvan5: .string "rank"
  .Lgvan6: .string "blanker"
  .Lgvan7: .string "display__STATIC__bar"
  .Lgvan8: .string "display__STATIC__offset"
  .Lgvan9: .string "display__INITFLAG__0"
  .Lgvan10: .string "show__STATIC__clubmap"
  .Lgvan11: .string "show__STATIC__diamondmap"
  .Lgvan12: .string "show__STATIC__heartmap"
  .Lgvan13: .string "show__STATIC__spademap"
  .Lgvan14: .string "show__INITFLAG__0"
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
  .section .bss
  .align 16
__gva: .space 240, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 15
  call gva_register@PLT
  mov rbx, rax
  call rt_frame@PLT
  mov rdi, rax
  push rdi
  sub rsp, 8
  mov rdi, qword ptr [rbp - 16]
  add rdi, 8
  mov esi, dword ptr [rbp - 8]
  sub esi, 1
  call rt_args_list_from@PLT
  add rsp, 8
  pop rdi
  mov qword ptr [rdi + 16], rax
  mov qword ptr [rdi + 24], rdx
  xor esi, esi
  call main_α
  xor eax, eax
  mov rsp, rbp
  pop rbp
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
main_α_body:
xchain00046_n0_α:
# IR_LIT_STRING
bb00047_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00048_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00046_n1_α
 xchain00046_n0_β:
 jmp xchain00046_n2_α
.Lx00048_0:
 .quad .Lx00048_0_s
.Lx00048_0_s:
 .string "deal"
xchain00046_n1_α:
bb00049_α:
# BOX IR_CALL Init__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+896] -> [r12+880]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 888], rax
  .section .rodata
  .Lbynamefn190: .string "Init__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn190]
 lea rsi, [r12 + 880]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00046_n2_α
 jmp xchain00046_n2_α
xchain00046_n1_β:
 jmp xchain00046_n2_α
xchain00046_n2_α:
# IR_LIT_CHARSET
bb00050_α:
 mov qword ptr [r12 + 848], 1
 mov dword ptr [r12 + 852], -1
 mov rax, qword ptr [rip + .Lx00051_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00046_n3_α
 xchain00046_n2_β:
 jmp xchain00046_n5_α
.Lx00051_0:
 .quad .Lx00051_0_s
.Lx00051_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
xchain00046_n3_α:
bb00052_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+832]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn193: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn193]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain00046_n5_α
 jmp xchain00046_n4_α
 xchain00046_n3_β:
 jmp xchain00046_n5_α
xchain00046_n4_α:
# IR_ASSIGN gva
bb00053_α:
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00046_n6_α
 xchain00046_n4_β:
 jmp xchain00046_n5_α
xchain00046_n5_α:
# IR_VAR gva
bb00019_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00046_n7_α
 xchain00046_n5_β:
 jmp xchain00046_n9_α
xchain00046_n6_α:
# IR_ASSIGN gva
bb00054_α:
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00046_n5_α
 xchain00046_n6_β:
 jmp xchain00046_n5_α
xchain00046_n7_α:
# IR_UNOP
bb00055_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 call rt_size_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00046_n8_α
 xchain00046_n7_β:
 jmp xchain00046_n9_α
xchain00046_n8_α:
# IR_LIT_INTEGER
bb00056_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00046_n10_α
 xchain00046_n8_β:
 jmp xchain00046_n9_α
.Lx00057_0:
 .quad 4
xchain00046_n9_α:
# IR_LIT_STRING
bb00058_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00059_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00046_n11_α
 xchain00046_n9_β:
 jmp xchain00046_n13_α
.Lx00059_0:
 .quad .Lx00059_0_s
.Lx00059_0_s:
 .string "AKQJT98765432"
xchain00046_n10_α:
bb00060_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00061_0
 mov eax, dword ptr [r12 + 768]
 cmp eax, 100
 je .Lx00061_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00061_2
 mov eax, dword ptr [r12 + 768]
 cmp eax, 6
 jne .Lx00061_2
.Lx00061_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 776]
 cqo
 idiv rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00046_n12_α
.Lx00061_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 3
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00061_3
.Lx00061_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00046_n9_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx00061_3:
 jmp xchain00046_n12_α
 xchain00046_n10_β:
 jmp xchain00046_n9_α
xchain00046_n11_α:
# IR_ASSIGN gva
bb00062_α:
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00046_n13_α
 xchain00046_n11_β:
 jmp xchain00046_n13_α
xchain00046_n12_α:
# IR_ASSIGN gva
bb00063_α:
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00046_n14_α
 xchain00046_n12_β:
 jmp xchain00046_n9_α
xchain00046_n13_α:
# IR_LIT_STRING
bb00025_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00046_n15_α
 xchain00046_n13_β:
 jmp xchain00046_n18_α
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string " "
xchain00046_n14_α:
# IR_ASSIGN gva
bb00065_α:
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00046_n9_α
 xchain00046_n14_β:
 jmp xchain00046_n9_α
xchain00046_n15_α:
# IR_VAR gva
bb00066_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00046_n16_α
 xchain00046_n15_β:
 jmp xchain00046_n18_α
xchain00046_n16_α:
bb00067_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+624] -> [r12+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [r12+640] -> [r12+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn207: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn207]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00046_n18_α
 jmp xchain00046_n17_α
 xchain00046_n16_β:
 jmp xchain00046_n18_α
xchain00046_n17_α:
# IR_ASSIGN gva
bb00068_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00046_n18_α
 xchain00046_n17_β:
 jmp xchain00046_n18_α
xchain00046_n18_α:
# IR_LIT_CHARSET
bb00069_α:
 mov qword ptr [r12 + 496], 1
 mov dword ptr [r12 + 500], -1
 mov rax, qword ptr [rip + .Lx00070_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00046_n19_α
 xchain00046_n18_β:
 jmp xchain00046_n23_α
.Lx00070_0:
 .quad .Lx00070_0_s
.Lx00070_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
xchain00046_n19_α:
# IR_LIT_INTEGER
bb00071_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00046_n20_α
 xchain00046_n19_β:
 jmp xchain00046_n23_α
.Lx00072_0:
 .quad 1
xchain00046_n20_α:
# IR_VAR gva
bb00073_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00046_n21_α
 xchain00046_n20_β:
 jmp xchain00046_n23_α
xchain00046_n21_α:
bb00074_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00075_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00075_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00075_2
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00075_2
.Lx00075_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 536]
 add rax, rcx
 mov qword ptr [r12 + 544], 6
 mov qword ptr [r12 + 552], rax
 jmp xchain00046_n22_α
.Lx00075_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 0
 lea r9, [r12 + 544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00075_3
.Lx00075_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00046_n23_α
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
.Lx00075_3:
 jmp xchain00046_n22_α
 xchain00046_n21_β:
 jmp xchain00046_n23_α
xchain00046_n22_α:
# IR_SUBSCRIPT section
bb00076_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8, qword ptr [r12 + 544]
 mov r9, qword ptr [r12 + 552]
 call subscript_get2@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00046_n24_α
 xchain00046_n22_β:
 jmp xchain00046_n23_α
xchain00046_n23_α:
# IR_VAR
bb00077_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 440], rax
 jmp xchain00046_n25_α
 xchain00046_n23_β:
 jmp xchain00046_n28_α
xchain00046_n24_α:
# IR_ASSIGN gva
bb00078_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00046_n23_α
 xchain00046_n24_β:
 jmp xchain00046_n23_α
xchain00046_n25_α:
# IR_LIT_STRING
bb00079_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00046_n26_α
 xchain00046_n25_β:
 jmp xchain00046_n28_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "h+s+"
xchain00046_n26_α:
bb00081_α:
# BOX IR_CALL options(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [r12+432] -> [r12+400]
 mov rax, qword ptr [r12 + 432]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 440]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+448] -> [r12+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
  .section .rodata
  .Lbynamefn219: .string "options"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn219]
 lea rsi, [r12 + 400]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain00046_n28_α
 jmp xchain00046_n27_α
xchain00046_n26_β:
 jmp xchain00046_n28_α
xchain00046_n27_α:
bb00082_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00046_n28_α
 xchain00046_n27_β:
 jmp xchain00046_n28_α
xchain00046_n28_α:
# IR_VAR_REF local
bb00083_α:
 lea rdi, [r12 + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00046_n29_α
 xchain00046_n28_β:
 jmp xchain00046_n32_α
xchain00046_n29_α:
# IR_LIT_STRING
bb00084_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00085_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00046_n30_α
 xchain00046_n29_β:
 jmp xchain00046_n32_α
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "h"
xchain00046_n30_α:
# IR_SUBSCRIPT x[i] variable
bb00037_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00046_n32_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00046_n31_α
 xchain00046_n30_β:
 jmp xchain00046_n32_α
xchain00046_n31_α:
# IR_DEREF variable -> value
bb00086_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00046_n32_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00046_n33_α
 xchain00046_n31_β:
 jmp xchain00046_n32_α
xchain00046_n32_α:
# IR_LIT_INTEGER
bb00087_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00046_n34_α
 xchain00046_n32_β:
 jmp xchain00046_n37_α
.Lx00088_0:
 .quad 1
xchain00046_n33_α:
# IR_UNOP
bb00089_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00046_n32_α
 cmp eax, 0
 je xchain00046_n32_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 296], rax
 jmp xchain00046_n35_α
 xchain00046_n33_β:
 jmp xchain00046_n32_α
xchain00046_n34_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00090_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00046_n37_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00046_n36_α
 xchain00046_n34_β:
 jmp xchain00046_n37_α
xchain00046_n35_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb00091_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00046_n32_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00046_n36_α
 xchain00046_n35_β:
 jmp xchain00046_n37_α
xchain00046_n36_α:
bb00092_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00046_n37_α
 xchain00046_n36_β:
 jmp xchain00046_n37_α
xchain00046_n37_α:
# IR_VAR_REF local
bb00093_α:
 lea rdi, [r12 + 928]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00046_n39_α
 xchain00046_n37_β:
 jmp xchain00046_n42_α
xchain00046_n38_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb00040_α:
 jmp qword ptr [r12 + 256]
 xchain00046_n38_β:
 jmp xchain00046_n37_α
xchain00046_n39_α:
# IR_LIT_STRING
bb00094_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00046_n40_α
 xchain00046_n39_β:
 jmp xchain00046_n42_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "s"
xchain00046_n40_α:
# IR_SUBSCRIPT x[i] variable
bb00096_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00046_n42_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00046_n41_α
 xchain00046_n40_β:
 jmp xchain00046_n42_α
xchain00046_n41_α:
# IR_DEREF variable -> value
bb00097_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00046_n42_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00046_n43_α
 xchain00046_n41_β:
 jmp xchain00046_n42_α
xchain00046_n42_α:
# IR_LIT_INTEGER
bb00098_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00099_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00046_n44_α
 xchain00046_n42_β:
 jmp xchain00046_n48_α
.Lx00099_0:
 .quad 1
xchain00046_n43_α:
# IR_UNOP
bb00100_α:
 mov eax, dword ptr [r12 + 208]
 cmp eax, 99
 je xchain00046_n42_α
 cmp eax, 0
 je xchain00046_n42_α
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 152], rax
 jmp xchain00046_n45_α
 xchain00046_n43_β:
 jmp xchain00046_n42_α
xchain00046_n44_α:
# IR_VAR
bb00101_α:
 mov rax, qword ptr [r12 + 912]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 920]
 mov qword ptr [r12 + 104], rax
 jmp xchain00046_n46_α
 xchain00046_n44_β:
 jmp xchain00046_n48_α
xchain00046_n45_α:
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
bb00046_α:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_keyword_random_set@PLT
 cmp eax, 99
 je xchain00046_n42_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00046_n42_α
 xchain00046_n45_β:
 jmp xchain00046_n42_α
xchain00046_n46_α:
# IR_TO
bb00048_α:
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 64], rax
.Lx00102_0:
 mov rax, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00046_n48_α
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00046_n47_α
 xchain00046_n46_β:
 inc qword ptr [r12 + 64]
 jmp .Lx00102_0
xchain00046_n47_α:
bb00103_α:
  .section .rodata
  .Lcall00103_pname: .string "display"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00103_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00046_n46_β
 jmp xchain00046_n46_β
xchain00046_n47_β:
 jmp xchain00046_n46_β
xchain00046_n48_α:
bb00104_α:
# BOX IR_CALL Term__(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
  .section .rodata
  .Lbynamefn249: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lbynamefn249]
 lea rsi, [r12 + 48]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_γ
xchain00046_n48_β:
 jmp main_ω
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
