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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1520], rax
 pop rsi
proc_display_α_body:
# IR_VAR_REF
 xchain0_n0_α:
 lea rdi, [rbx + 192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp xchain0_n3_α
# IR_NULLTEST_VAR
 xchain0_n1_α:
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
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [r12 + 1504], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain0_n4_α
 xchain0_n2_β:
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
# IR_VAR
 xchain0_n3_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 1184], rax
 mov qword ptr [r12 + 1192], rdx
 jmp xchain0_n5_α
 xchain0_n3_β:
 jmp xchain0_n6_α
# IR_ASSIGN_VAR
 xchain0_n4_α:
 mov rdi, qword ptr [r12 + 1472]
 mov rsi, qword ptr [r12 + 1480]
 mov rdx, qword ptr [r12 + 1504]
 mov rcx, qword ptr [r12 + 1512]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain0_n3_α
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain0_n7_α
 xchain0_n4_β:
 jmp xchain0_n3_α
 xchain0_n5_α:
  .section .rodata
  .Lcall6_pname: .string "shuffle"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 1184]
 mov rdx, qword ptr [r12 + 1192]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall6_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n8_α
xchain0_n5_β:
 jmp xchain0_n6_α
# IR_MAKE_LIST
 xchain0_n6_α:
 lea rdi, [r12 + 1136]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain0_n9_α
 xchain0_n6_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n7_α:
 mov qword ptr [r12 + 1360], 1
 mov rax, qword ptr [rip + .Lx10_0]
 mov qword ptr [r12 + 1368], rax
 jmp xchain0_n10_α
 xchain0_n7_β:
 jmp xchain0_n19_α
.Lx10_0:
 .quad .Lx10_0_s
.Lx10_0_s:
 .string "\n"
# IR_ASSIGN gva
 xchain0_n8_α:
 mov rax, qword ptr [r12 + 1152]
 mov rdx, qword ptr [r12 + 1160]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain0_n6_α
 xchain0_n8_β:
 jmp xchain0_n6_α
 xchain0_n9_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n11_α
# IR_LIT_STRING
 xchain0_n10_α:
 mov qword ptr [r12 + 1424], 1
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n19_α
.Lx13_0:
 .quad .Lx13_0_s
.Lx13_0_s:
 .string "-"
# IR_VAR
 xchain0_n11_α:
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 872], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n12_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n19_α
.Lx16_0:
 .quad 33
# IR_VAR
 xchain0_n13_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn19: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn19]
 lea rsi, [r12 + 816]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp xchain0_n17_α
 xchain0_n15_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1392]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1400], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1408]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1416], rax
  .section .rodata
  .Lrkfn21: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn21]
 lea rsi, [r12 + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 cmp eax, 99
 je xchain0_n19_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n19_α
# IR_LIT_INTEGER
 xchain0_n16_α:
 mov qword ptr [r12 + 1008], 6
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 1016], rax
 jmp xchain0_n20_α
 xchain0_n16_β:
 jmp xchain0_n14_α
.Lx22_0:
 .quad 0
# IR_VAR
 xchain0_n17_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n21_α
 xchain0_n17_β:
 jmp xchain0_n22_α
 xchain0_n18_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1360]
 mov rsi, qword ptr [r12 + 1368]
 mov rdx, qword ptr [r12 + 1376]
 mov rcx, qword ptr [r12 + 1384]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 jmp xchain0_n23_α
 xchain0_n18_β:
 jmp xchain0_n19_α
# IR_LIT_STRING
 xchain0_n19_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain0_n24_α
 xchain0_n19_β:
 jmp xchain0_n3_α
.Lx25_0:
 .quad .Lx25_0_s
.Lx25_0_s:
 .string " "
# IR_LIT_INTEGER
 xchain0_n20_α:
 mov qword ptr [r12 + 1024], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain0_n25_α
 xchain0_n20_β:
 jmp xchain0_n14_α
.Lx26_0:
 .quad 3
# IR_VAR_REF
 xchain0_n21_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n26_α
 xchain0_n21_β:
 jmp xchain0_n22_α
 xchain0_n22_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn30: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 640]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n27_α
 xchain0_n22_β:
 jmp xchain0_n27_α
# IR_ASSIGN gva
 xchain0_n23_α:
 mov rax, qword ptr [r12 + 1344]
 mov rdx, qword ptr [r12 + 1352]
 mov qword ptr [rbx + 160], rax
 mov qword ptr [rbx + 168], rdx
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n19_α
 xchain0_n23_β:
 jmp xchain0_n19_α
# IR_LIT_INTEGER
 xchain0_n24_α:
 mov qword ptr [r12 + 1312], 6
 mov rax, qword ptr [rip + .Lx32_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain0_n28_α
 xchain0_n24_β:
 jmp xchain0_n3_α
.Lx32_0:
 .quad 10
# IR_TO
 xchain0_n25_α:
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 992], rax
.Lx34_0:
 mov rax, qword ptr [r12 + 992]
 mov rcx, qword ptr [r12 + 1032]
 cmp rax, rcx
 jg xchain0_n14_α
 mov qword ptr [r12 + 976], 6
 mov qword ptr [r12 + 984], rax
 jmp xchain0_n29_α
 xchain0_n25_β:
 inc qword ptr [r12 + 992]
 jmp .Lx34_0
# IR_LIT_INTEGER
 xchain0_n26_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain0_n30_α
 xchain0_n26_β:
 jmp xchain0_n22_α
.Lx35_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n27_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx36_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n64_α
.Lx36_0:
 .quad 1
 xchain0_n28_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn38: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain0_n3_α
 jmp xchain0_n32_α
 xchain0_n28_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n29_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n33_α
 xchain0_n29_β:
 jmp xchain0_n25_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n30_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 752]
 mov rcx, qword ptr [r12 + 760]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n22_α
# IR_LIT_INTEGER
 xchain0_n31_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n64_α
.Lx41_0:
 .quad 4
# IR_ASSIGN gva
 xchain0_n32_α:
 mov rax, qword ptr [r12 + 1248]
 mov rdx, qword ptr [r12 + 1256]
 mov qword ptr [rbx + 176], rax
 mov qword ptr [rbx + 184], rdx
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n3_α
 xchain0_n33_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 976]
 cmp eax, 100
 je .Lx43_0
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 100
 je .Lx43_0
 mov eax, dword ptr [r12 + 976]
 cmp eax, 6
 jne .Lx43_2
 mov eax, dword ptr [r12 + 1040]
 cmp eax, 6
 jne .Lx43_2
.Lx43_1:
 mov rax, qword ptr [r12 + 984]
 mov rcx, qword ptr [r12 + 1048]
 imul rax, rcx
 mov qword ptr [r12 + 960], 6
 mov qword ptr [r12 + 968], rax
 jmp xchain0_n37_α
.Lx43_0:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 2
 lea r9, [r12 + 960]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx43_3
.Lx43_2:
 mov rdi, qword ptr [r12 + 976]
 mov rsi, qword ptr [r12 + 984]
 mov rdx, qword ptr [r12 + 1040]
 mov rcx, qword ptr [r12 + 1048]
 mov r8d, 2
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n14_α
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
.Lx43_3:
 jmp xchain0_n37_α
 xchain0_n33_β:
 jmp xchain0_n14_α
# IR_DEREF variable -> value
 xchain0_n34_α:
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n22_α
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n38_α
 xchain0_n34_β:
 jmp xchain0_n22_α
# IR_TO
 xchain0_n35_α:
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 272], rax
.Lx46_0:
 mov rax, qword ptr [r12 + 272]
 mov rcx, qword ptr [r12 + 312]
 cmp rax, rcx
 jg xchain0_n64_α
 mov qword ptr [r12 + 256], 6
 mov qword ptr [r12 + 264], rax
 jmp xchain0_n39_α
 xchain0_n35_β:
 inc qword ptr [r12 + 272]
 jmp .Lx46_0
 xchain0_n36_α:
 jmp xchain0_n40_α
xchain0_n36_β:
 jmp xchain0_n3_α
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [r12 + 1056], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n25_β
.Lx48_0:
 .quad 1
# IR_LIST_BANG
 xchain0_n38_α:
 mov qword ptr [r12 + 720], 0
.Lx50_0:
 mov rdi, qword ptr [r12 + 784]
 mov rsi, qword ptr [r12 + 792]
 mov rdx, qword ptr [r12 + 720]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp rax, 99
 je xchain0_n22_α
 jmp xchain0_n42_α
 xchain0_n38_β:
 inc qword ptr [r12 + 720]
 jmp .Lx50_0
 xchain0_n39_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n43_α
 xchain0_n39_β:
 jmp xchain0_n64_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n40_α:
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
 lea rax, [rip + xchain0_n3_α]
 mov qword ptr [r12 + 1216], rax
 jmp xchain0_n3_α
 xchain0_n40_β:
 jmp xchain0_n3_α
 xchain0_n41_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 960]
 cmp eax, 100
 je .Lx54_0
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 100
 je .Lx54_0
 mov eax, dword ptr [r12 + 960]
 cmp eax, 6
 jne .Lx54_2
 mov eax, dword ptr [r12 + 1056]
 cmp eax, 6
 jne .Lx54_2
.Lx54_1:
 mov rax, qword ptr [r12 + 968]
 mov rcx, qword ptr [r12 + 1064]
 add rax, rcx
 mov qword ptr [r12 + 944], 6
 mov qword ptr [r12 + 952], rax
 jmp xchain0_n45_α
.Lx54_0:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 mov r8d, 0
 lea r9, [r12 + 944]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx54_3
.Lx54_2:
 mov rdi, qword ptr [r12 + 960]
 mov rsi, qword ptr [r12 + 968]
 mov rdx, qword ptr [r12 + 1056]
 mov rcx, qword ptr [r12 + 1064]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n14_α
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
.Lx54_3:
 jmp xchain0_n45_α
 xchain0_n41_β:
 jmp xchain0_n14_α
 xchain0_n42_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
  .section .rodata
  .Lrkfn56: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 656]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 cmp eax, 99
 je xchain0_n22_α
 jmp xchain0_n38_β
 xchain0_n42_β:
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n43_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n46_α
 xchain0_n43_β:
 jmp xchain0_n35_β
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n44_α:
 jmp qword ptr [r12 + 1216]
 xchain0_n44_β:
 jmp xchain0_n3_α
# IR_VAR
 xchain0_n45_α:
 mov rax, qword ptr [rbx + 32]
 mov rdx, qword ptr [rbx + 40]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n25_β
# IR_LIT_INTEGER
 xchain0_n46_α:
 mov qword ptr [r12 + 432], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [r12 + 440], rax
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n35_β
.Lx62_0:
 .quad 4
 xchain0_n47_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 944]
 cmp eax, 100
 je .Lx63_0
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 100
 je .Lx63_0
 mov eax, dword ptr [r12 + 944]
 cmp eax, 6
 jne .Lx63_2
 mov eax, dword ptr [r12 + 1072]
 cmp eax, 6
 jne .Lx63_2
.Lx63_1:
 mov rax, qword ptr [r12 + 952]
 mov rcx, qword ptr [r12 + 1080]
 add rax, rcx
 mov qword ptr [r12 + 1088], 6
 mov qword ptr [r12 + 1096], rax
 jmp xchain0_n49_α
.Lx63_0:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 lea r9, [r12 + 1088]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx63_3
.Lx63_2:
 mov rdi, qword ptr [r12 + 944]
 mov rsi, qword ptr [r12 + 952]
 mov rdx, qword ptr [r12 + 1072]
 mov rcx, qword ptr [r12 + 1080]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain0_n25_β
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
.Lx63_3:
 jmp xchain0_n49_α
 xchain0_n47_β:
 jmp xchain0_n25_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n48_α:
 mov rdi, qword ptr [r12 + 416]
 mov rsi, qword ptr [r12 + 424]
 mov rdx, qword ptr [r12 + 432]
 mov rcx, qword ptr [r12 + 440]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n50_α
 xchain0_n48_β:
 jmp xchain0_n35_β
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain0_n49_α:
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 mov r8, qword ptr [r12 + 1088]
 mov r9, qword ptr [r12 + 1096]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain0_n25_β
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n25_β
# IR_VAR
 xchain0_n50_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n52_α
 xchain0_n50_β:
 jmp xchain0_n35_β
 xchain0_n51_α:
  .section .rodata
  .Lcall52_pname: .string "show"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall52_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n53_α
xchain0_n51_β:
 jmp xchain0_n14_α
# IR_SUBSCRIPT x[i] variable
 xchain0_n52_α:
 mov rdi, qword ptr [r12 + 448]
 mov rsi, qword ptr [r12 + 456]
 mov rdx, qword ptr [r12 + 464]
 mov rcx, qword ptr [r12 + 472]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain0_n54_α
 xchain0_n52_β:
 jmp xchain0_n35_β
 xchain0_n53_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
  .section .rodata
  .Lrkfn71: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn71]
 lea rsi, [r12 + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n25_β
 xchain0_n53_β:
 jmp xchain0_n14_α
# IR_DEREF variable -> value
 xchain0_n54_α:
 mov rdi, qword ptr [r12 + 480]
 mov rsi, qword ptr [r12 + 488]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n35_β
# IR_LIT_INTEGER
 xchain0_n55_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n35_β
.Lx73_0:
 .quad 20
 xchain0_n56_α:
# BOX IR_CALL left(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+384]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 384], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 392], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+400]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn75: .string "left"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn75]
 lea rsi, [r12 + 384]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je xchain0_n35_β
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n35_β
# IR_VAR_REF
 xchain0_n57_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n35_β
# IR_LIT_INTEGER
 xchain0_n58_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n35_β
.Lx78_0:
 .quad 2
# IR_SUBSCRIPT x[i] variable
 xchain0_n59_α:
 mov rdi, qword ptr [r12 + 528]
 mov rsi, qword ptr [r12 + 536]
 mov rdx, qword ptr [r12 + 544]
 mov rcx, qword ptr [r12 + 552]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n35_β
# IR_VAR
 xchain0_n60_α:
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n35_β
# IR_SUBSCRIPT x[i] variable
 xchain0_n61_α:
 mov rdi, qword ptr [r12 + 560]
 mov rsi, qword ptr [r12 + 568]
 mov rdx, qword ptr [r12 + 576]
 mov rcx, qword ptr [r12 + 584]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n35_β
# IR_DEREF variable -> value
 xchain0_n62_α:
 mov rdi, qword ptr [r12 + 592]
 mov rsi, qword ptr [r12 + 600]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n35_β
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n35_β
 xchain0_n63_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+352]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn85: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n35_β
 jmp xchain0_n35_β
 xchain0_n63_β:
 jmp xchain0_n35_β
 xchain0_n64_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn87: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn87]
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
# IR_VAR
 xchain0_n65_α:
 mov rax, qword ptr [rbx + 176]
 mov rdx, qword ptr [rbx + 184]
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n67_α
# IR_VAR_REF
 xchain0_n66_α:
 lea rdi, [r12 + 1536]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain0_n68_α
 xchain0_n66_β:
 jmp xchain0_n67_α
# IR_VAR
 xchain0_n67_α:
 mov rax, qword ptr [rbx + 160]
 mov rdx, qword ptr [rbx + 168]
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain0_n69_α
 xchain0_n67_β:
 jmp proc_display_ω
# IR_LIT_INTEGER
 xchain0_n68_α:
 mov qword ptr [r12 + 176], 6
 mov rax, qword ptr [rip + .Lx92_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain0_n70_α
 xchain0_n68_β:
 jmp xchain0_n67_α
.Lx92_0:
 .quad 3
 xchain0_n69_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn94: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn94]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je proc_display_ω
 jmp proc_display_ω
 xchain0_n69_β:
 jmp proc_display_ω
# IR_SUBSCRIPT x[i] variable
 xchain0_n70_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain0_n67_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n67_α
# IR_DEREF variable -> value
 xchain0_n71_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain0_n67_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n67_α
# IR_LIST_BANG
 xchain0_n72_α:
 mov qword ptr [r12 + 144], 0
.Lx98_0:
 mov rdi, qword ptr [r12 + 208]
 mov rsi, qword ptr [r12 + 216]
 mov rdx, qword ptr [r12 + 144]
 call rt_list_bang_at@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp rax, 99
 je xchain0_n67_α
 jmp xchain0_n73_α
 xchain0_n72_β:
 inc qword ptr [r12 + 144]
 jmp .Lx98_0
 xchain0_n73_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn100: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn100]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain0_n67_α
 jmp xchain0_n72_β
 xchain0_n73_β:
 jmp xchain0_n67_α
proc_display_β:
jmp proc_display_ω
proc_display_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1520]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_display_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1232], rax
 pop rsi
proc_show_α_body:
# IR_VAR_REF
 xchain00001_n0_α:
 lea rdi, [rbx + 272]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 jmp xchain00001_n1_α
 xchain00001_n0_β:
 jmp xchain00001_n3_α
# IR_NULLTEST_VAR
 xchain00001_n1_α:
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
# IR_LIT_INTEGER
 xchain00001_n2_α:
 mov qword ptr [r12 + 1216], 6
 mov rax, qword ptr [rip + .Lx00002_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain00001_n4_α
 xchain00001_n2_β:
 jmp xchain00001_n3_α
.Lx00002_0:
 .quad 1
# IR_LIT_STRING
 xchain00001_n3_α:
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
# IR_ASSIGN_VAR
 xchain00001_n4_α:
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
# IR_VAR
 xchain00001_n5_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00001_n7_α
 xchain00001_n5_β:
 jmp proc_show_ω
# IR_VAR
 xchain00001_n6_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain00001_n8_α
 xchain00001_n6_β:
 jmp xchain00001_n9_α
# IR_VAR
 xchain00001_n7_α:
 mov rax, qword ptr [rbx + 256]
 mov rdx, qword ptr [rbx + 264]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00001_n10_α
 xchain00001_n7_β:
 jmp proc_show_ω
# IR_VAR
 xchain00001_n8_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00001_n11_α
 xchain00001_n8_β:
 jmp xchain00001_n9_α
# IR_VAR
 xchain00001_n9_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain00001_n12_α
 xchain00001_n9_β:
 jmp xchain00001_n13_α
 xchain00001_n10_α:
  .section .rodata
  .Lcall85_pname: .string "arrange"
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
   lea rdi, [rip + .Lcall85_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00001_n14_α
xchain00001_n10_β:
 jmp proc_show_ω
# IR_LIT_INTEGER
 xchain00001_n11_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx00004_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain00001_n15_α
 xchain00001_n11_β:
 jmp xchain00001_n9_α
.Lx00004_0:
 .quad 3
# IR_VAR
 xchain00001_n12_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain00001_n16_α
 xchain00001_n12_β:
 jmp xchain00001_n13_α
# IR_VAR
 xchain00001_n13_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain00001_n17_α
 xchain00001_n13_β:
 jmp xchain00001_n18_α
 xchain00001_n14_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 128]
 mov rsi, qword ptr [r12 + 136]
 mov rdx, qword ptr [r12 + 144]
 mov rcx, qword ptr [r12 + 152]
 call str_concat_d@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00001_n19_α
 xchain00001_n14_β:
 jmp proc_show_ω
 xchain00001_n15_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn120: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn120]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain00001_n9_α
 jmp xchain00001_n20_α
 xchain00001_n15_β:
 jmp xchain00001_n9_α
 xchain00001_n16_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 928]
 mov rsi, qword ptr [r12 + 936]
 mov rdx, qword ptr [r12 + 944]
 mov rcx, qword ptr [r12 + 952]
 call str_concat_d@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain00001_n21_α
 xchain00001_n16_β:
 jmp xchain00001_n13_α
# IR_LIT_INTEGER
 xchain00001_n17_α:
 mov qword ptr [r12 + 832], 6
 mov rax, qword ptr [rip + .Lx00005_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00001_n22_α
 xchain00001_n17_β:
 jmp xchain00001_n18_α
.Lx00005_0:
 .quad 2
# IR_VAR
 xchain00001_n18_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain00001_n23_α
 xchain00001_n18_β:
 jmp xchain00001_n3_α
# IR_LIT_STRING
 xchain00001_n19_α:
 mov qword ptr [r12 + 240], 1
 mov rax, qword ptr [rip + .Lx00006_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00001_n24_α
 xchain00001_n19_β:
 jmp proc_show_ω
.Lx00006_0:
 .quad .Lx00006_0_s
.Lx00006_0_s:
 .string "H: "
 xchain00001_n20_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 1072]
 mov rsi, qword ptr [r12 + 1080]
 mov rdx, qword ptr [r12 + 1088]
 mov rcx, qword ptr [r12 + 1096]
 call str_concat_d@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain00001_n25_α
 xchain00001_n20_β:
 jmp xchain00001_n9_α
# IR_VAR
 xchain00001_n21_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain00001_n26_α
 xchain00001_n21_β:
 jmp xchain00001_n13_α
 xchain00001_n22_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn128: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn128]
 lea rsi, [r12 + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je xchain00001_n18_α
 jmp xchain00001_n27_α
 xchain00001_n22_β:
 jmp xchain00001_n18_α
# IR_LIT_INTEGER
 xchain00001_n23_α:
 mov qword ptr [r12 + 688], 6
 mov rax, qword ptr [rip + .Lx00007_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00001_n28_α
 xchain00001_n23_β:
 jmp xchain00001_n3_α
.Lx00007_0:
 .quad 3
# IR_VAR
 xchain00001_n24_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 312], rax
 jmp xchain00001_n29_α
 xchain00001_n24_β:
 jmp proc_show_ω
# IR_ASSIGN gva
 xchain00001_n25_α:
 mov rax, qword ptr [r12 + 1056]
 mov rdx, qword ptr [r12 + 1064]
 mov qword ptr [rbx + 208], rax
 mov qword ptr [rbx + 216], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00001_n9_α
 xchain00001_n25_β:
 jmp xchain00001_n9_α
# IR_LIT_INTEGER
 xchain00001_n26_α:
 mov qword ptr [r12 + 1024], 6
 mov rax, qword ptr [rip + .Lx00008_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00001_n30_α
 xchain00001_n26_β:
 jmp xchain00001_n13_α
.Lx00008_0:
 .quad 2
# IR_VAR
 xchain00001_n27_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain00001_n31_α
 xchain00001_n27_β:
 jmp xchain00001_n18_α
 xchain00001_n28_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+640]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 648], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn136: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn136]
 lea rsi, [r12 + 640]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 cmp eax, 99
 je xchain00001_n3_α
 jmp xchain00001_n32_α
 xchain00001_n28_β:
 jmp xchain00001_n3_α
# IR_VAR
 xchain00001_n29_α:
 mov rax, qword ptr [rbx + 240]
 mov rdx, qword ptr [rbx + 248]
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00001_n33_α
 xchain00001_n29_β:
 jmp proc_show_ω
 xchain00001_n30_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+976]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn139: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn139]
 lea rsi, [r12 + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain00001_n13_α
 jmp xchain00001_n34_α
 xchain00001_n30_β:
 jmp xchain00001_n13_α
 xchain00001_n31_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 768]
 mov rsi, qword ptr [r12 + 776]
 mov rdx, qword ptr [r12 + 848]
 mov rcx, qword ptr [r12 + 856]
 call str_concat_d@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00001_n35_α
 xchain00001_n31_β:
 jmp xchain00001_n18_α
# IR_VAR
 xchain00001_n32_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00001_n36_α
 xchain00001_n32_β:
 jmp xchain00001_n3_α
 xchain00001_n33_α:
  .section .rodata
  .Lcall00009_pname: .string "arrange"
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
   lea rdi, [rip + .Lcall00009_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00001_n37_α
xchain00001_n33_β:
 jmp proc_show_ω
 xchain00001_n34_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 912]
 mov rsi, qword ptr [r12 + 920]
 mov rdx, qword ptr [r12 + 960]
 mov rcx, qword ptr [r12 + 968]
 call str_concat_d@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain00001_n38_α
 xchain00001_n34_β:
 jmp xchain00001_n13_α
# IR_VAR
 xchain00001_n35_α:
 mov rax, qword ptr [rbx + 96]
 mov rdx, qword ptr [rbx + 104]
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain00001_n39_α
 xchain00001_n35_β:
 jmp xchain00001_n18_α
 xchain00001_n36_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 624]
 mov rsi, qword ptr [r12 + 632]
 mov rdx, qword ptr [r12 + 704]
 mov rcx, qword ptr [r12 + 712]
 call str_concat_d@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain00001_n40_α
 xchain00001_n36_β:
 jmp xchain00001_n3_α
 xchain00001_n37_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 240]
 mov rsi, qword ptr [r12 + 248]
 mov rdx, qword ptr [r12 + 256]
 mov rcx, qword ptr [r12 + 264]
 call str_concat_d@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00001_n41_α
 xchain00001_n37_β:
 jmp proc_show_ω
# IR_ASSIGN gva
 xchain00001_n38_α:
 mov rax, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 mov qword ptr [rbx + 224], rax
 mov qword ptr [rbx + 232], rdx
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain00001_n13_α
 xchain00001_n38_β:
 jmp xchain00001_n13_α
 xchain00001_n39_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 mov rdx, qword ptr [r12 + 864]
 mov rcx, qword ptr [r12 + 872]
 call str_concat_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00001_n42_α
 xchain00001_n39_β:
 jmp xchain00001_n18_α
# IR_ASSIGN gva
 xchain00001_n40_α:
 mov rax, qword ptr [r12 + 608]
 mov rdx, qword ptr [r12 + 616]
 mov qword ptr [rbx + 256], rax
 mov qword ptr [rbx + 264], rdx
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain00001_n43_α
 xchain00001_n40_β:
 jmp xchain00001_n3_α
# IR_LIT_STRING
 xchain00001_n41_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx00010_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain00001_n44_α
 xchain00001_n41_β:
 jmp proc_show_ω
.Lx00010_0:
 .quad .Lx00010_0_s
.Lx00010_0_s:
 .string "D: "
# IR_ASSIGN gva
 xchain00001_n42_α:
 mov rax, qword ptr [r12 + 736]
 mov rdx, qword ptr [r12 + 744]
 mov qword ptr [rbx + 240], rax
 mov qword ptr [rbx + 248], rdx
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00001_n18_α
 xchain00001_n42_β:
 jmp xchain00001_n18_α
 xchain00001_n43_α:
 jmp xchain00001_n45_α
xchain00001_n43_β:
 jmp xchain00001_n3_α
# IR_VAR
 xchain00001_n44_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 424], rax
 jmp xchain00001_n46_α
 xchain00001_n44_β:
 jmp proc_show_ω
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00001_n45_α:
 mov rax, qword ptr [r12 + 592]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 600]
 mov qword ptr [r12 + 568], rax
 lea rax, [rip + xchain00001_n3_α]
 mov qword ptr [r12 + 576], rax
 jmp xchain00001_n3_α
 xchain00001_n45_β:
 jmp xchain00001_n3_α
# IR_VAR
 xchain00001_n46_α:
 mov rax, qword ptr [rbx + 224]
 mov rdx, qword ptr [rbx + 232]
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00001_n48_α
 xchain00001_n46_β:
 jmp proc_show_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00001_n47_α:
 jmp qword ptr [r12 + 576]
 xchain00001_n47_β:
 jmp xchain00001_n3_α
 xchain00001_n48_α:
  .section .rodata
  .Lcall00011_pname: .string "arrange"
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
   lea rdi, [rip + .Lcall00011_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00001_n49_α
xchain00001_n48_β:
 jmp proc_show_ω
 xchain00001_n49_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 352]
 mov rsi, qword ptr [r12 + 360]
 mov rdx, qword ptr [r12 + 368]
 mov rcx, qword ptr [r12 + 376]
 call str_concat_d@PLT
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00001_n50_α
 xchain00001_n49_β:
 jmp proc_show_ω
# IR_LIT_STRING
 xchain00001_n50_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx00012_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain00001_n51_α
 xchain00001_n50_β:
 jmp proc_show_ω
.Lx00012_0:
 .quad .Lx00012_0_s
.Lx00012_0_s:
 .string "C: "
# IR_VAR
 xchain00001_n51_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 536], rax
 jmp xchain00001_n52_α
 xchain00001_n51_β:
 jmp proc_show_ω
# IR_VAR
 xchain00001_n52_α:
 mov rax, qword ptr [rbx + 208]
 mov rdx, qword ptr [rbx + 216]
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 jmp xchain00001_n53_α
 xchain00001_n52_β:
 jmp proc_show_ω
 xchain00001_n53_α:
  .section .rodata
  .Lcall00013_pname: .string "arrange"
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
   lea rdi, [rip + .Lcall00013_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_show_ω
 jmp xchain00001_n54_α
xchain00001_n53_β:
 jmp proc_show_ω
 xchain00001_n54_α:
# IR_BINOP_CONCAT
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 480]
 mov rcx, qword ptr [r12 + 488]
 call str_concat_d@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain00001_n55_α
 xchain00001_n54_β:
 jmp proc_show_ω
# IR_MAKE_LIST
 xchain00001_n55_α:
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
# IR_RETURN
 xchain00001_n56_α:
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
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1232]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_show_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 288], rax
 pop rsi
proc_arrange_α_body:
# IR_VAR
 xchain00014_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00014_n1_α
 xchain00014_n0_β:
 jmp proc_arrange_ω
# IR_VAR
 xchain00014_n1_α:
 mov rax, qword ptr [rbx + 16]
 mov rdx, qword ptr [rbx + 24]
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00014_n2_α
 xchain00014_n1_β:
 jmp proc_arrange_ω
# IR_VAR
 xchain00014_n2_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 232], rax
 jmp xchain00014_n3_α
 xchain00014_n2_β:
 jmp proc_arrange_ω
 xchain00014_n3_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+144]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 152], rax
# marshal arg1 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 168], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn178: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn178]
 lea rsi, [r12 + 144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_arrange_ω
 jmp xchain00014_n4_α
 xchain00014_n3_β:
 jmp proc_arrange_ω
# IR_LIT_CHARSET
 xchain00014_n4_α:
 mov qword ptr [r12 + 240], 1
 mov dword ptr [r12 + 244], -1
 mov rax, qword ptr [rip + .Lx00015_0]
 mov qword ptr [r12 + 248], rax
 jmp xchain00014_n5_α
 xchain00014_n4_β:
 jmp proc_arrange_ω
.Lx00015_0:
 .quad .Lx00015_0_s
.Lx00015_0_s:
 .string " "
 xchain00014_n5_α:
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
 jmp xchain00014_n6_α
 xchain00014_n5_β:
 jmp proc_arrange_ω
# IR_VAR
 xchain00014_n6_α:
 mov rax, qword ptr [rbx + 64]
 mov rdx, qword ptr [rbx + 72]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00014_n7_α
 xchain00014_n6_β:
 jmp proc_arrange_ω
# IR_VAR
 xchain00014_n7_α:
 mov rax, qword ptr [rbx + 80]
 mov rdx, qword ptr [rbx + 88]
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00014_n8_α
 xchain00014_n7_β:
 jmp proc_arrange_ω
 xchain00014_n8_α:
# BOX IR_CALL map(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+64]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 64], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 72], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+80]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 88], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+96]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn184: .string "map"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn184]
 lea rsi, [r12 + 64]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je proc_arrange_ω
 jmp xchain00014_n9_α
 xchain00014_n8_β:
 jmp proc_arrange_ω
# IR_RETURN
 xchain00014_n9_α:
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
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 288]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_arrange_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_options_α
proc_options_α:
#=======================================================================================================================
    .global proc_options_α
    .global proc_options_β
    .global proc_options_γ
    .global proc_options_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2368], rax
 pop rsi
proc_options_α_body:
# IR_VAR_REF
 xchain00016_n0_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2272], rax
 mov qword ptr [r12 + 2280], rdx
 jmp xchain00016_n1_α
 xchain00016_n0_β:
 jmp xchain00016_n3_α
# IR_NULLTEST_VAR
 xchain00016_n1_α:
 mov eax, dword ptr [r12 + 2272]
 cmp eax, 99
 je xchain00016_n3_α
 mov rdi, qword ptr [r12 + 2272]
 mov rsi, qword ptr [r12 + 2280]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00016_n3_α
 cmp eax, 0
 jne xchain00016_n3_α
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2288], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2296], rax
 jmp xchain00016_n2_α
 xchain00016_n1_β:
 jmp xchain00016_n3_α
# IR_LIT_CHARSET
 xchain00016_n2_α:
 mov qword ptr [r12 + 2352], 1
 mov dword ptr [r12 + 2356], -1
 mov rax, qword ptr [rip + .Lx00017_0]
 mov qword ptr [r12 + 2360], rax
 jmp xchain00016_n4_α
 xchain00016_n2_β:
 jmp xchain00016_n3_α
.Lx00017_0:
 .quad .Lx00017_0_s
.Lx00017_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00016_n3_α:
# BOX IR_CALL table(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn192: .string "table"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn192]
 lea rsi, [r12 + 2272]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2256], rax
 mov qword ptr [r12 + 2264], rdx
 cmp eax, 99
 je xchain00016_n6_α
 jmp xchain00016_n5_α
 xchain00016_n3_β:
 jmp xchain00016_n6_α
 xchain00016_n4_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2336]
 mov rax, qword ptr [r12 + 2352]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2360]
 mov qword ptr [r12 + 2344], rax
  .section .rodata
  .Lrkfn194: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn194]
 lea rsi, [r12 + 2336]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2320], rax
 mov qword ptr [r12 + 2328], rdx
 cmp eax, 99
 je xchain00016_n3_α
 jmp xchain00016_n7_α
 xchain00016_n4_β:
 jmp xchain00016_n3_α
 xchain00016_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2256]
 mov rdx, qword ptr [r12 + 2264]
 mov qword ptr [r12 + 2384], rax
 mov qword ptr [r12 + 2392], rdx
 mov qword ptr [r12 + 2240], rax
 mov qword ptr [r12 + 2248], rdx
 jmp xchain00016_n6_α
 xchain00016_n5_β:
 jmp xchain00016_n6_α
# IR_MAKE_LIST
 xchain00016_n6_α:
 lea rdi, [r12 + 2240]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 2224], rax
 mov qword ptr [r12 + 2232], rdx
 jmp xchain00016_n8_α
 xchain00016_n6_β:
 jmp xchain00016_n9_α
# IR_ASSIGN_VAR
 xchain00016_n7_α:
 mov rdi, qword ptr [r12 + 2288]
 mov rsi, qword ptr [r12 + 2296]
 mov rdx, qword ptr [r12 + 2320]
 mov rcx, qword ptr [r12 + 2328]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00016_n3_α
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 jmp xchain00016_n3_α
 xchain00016_n7_β:
 jmp xchain00016_n3_α
 xchain00016_n8_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 2224]
 mov rdx, qword ptr [r12 + 2232]
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 jmp xchain00016_n9_α
 xchain00016_n8_β:
 jmp xchain00016_n9_α
# IR_VAR
 xchain00016_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 224], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 232], rax
 jmp xchain00016_n10_α
 xchain00016_n9_β:
 jmp xchain00016_n11_α
 xchain00016_n10_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+208]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 208], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 216], rax
  .section .rodata
  .Lrkfn203: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn203]
 lea rsi, [r12 + 208]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain00016_n11_α
 jmp xchain00016_n12_α
 xchain00016_n10_β:
 jmp xchain00016_n11_α
# IR_VAR
 xchain00016_n11_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 120], rax
 jmp xchain00016_n13_α
 xchain00016_n11_β:
 jmp xchain00016_n14_α
 xchain00016_n12_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 192]
 mov rdx, qword ptr [r12 + 200]
 mov qword ptr [r12 + 2416], rax
 mov qword ptr [r12 + 2424], rdx
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00016_n15_α
 xchain00016_n12_β:
 jmp xchain00016_n11_α
# IR_VAR
 xchain00016_n13_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 168], rax
 jmp xchain00016_n16_α
 xchain00016_n13_β:
 jmp xchain00016_n14_α
# IR_VAR
 xchain00016_n14_α:
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 48], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 56], rax
 jmp xchain00016_n17_α
 xchain00016_n14_β:
 jmp proc_options_ω
# IR_VAR
 xchain00016_n15_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2192], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2200], rax
 jmp xchain00016_n18_α
 xchain00016_n15_β:
 jmp xchain00016_n9_α
 xchain00016_n16_α:
# BOX IR_CALL pull(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+160] -> [zr+144]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn214: .string "pull"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn214]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je xchain00016_n14_α
 jmp xchain00016_n19_α
 xchain00016_n16_β:
 jmp xchain00016_n14_α
# IR_RETURN
 xchain00016_n17_α:
 mov rax, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_options_γ
# IR_GEN_SCAN
 xchain00016_n18_α:
 mov rdi, qword ptr [r12 + 2192]
 mov rsi, qword ptr [r12 + 2200]
 mov rdx, r13
 mov rcx, r14
 mov r8, r15
 call rt_scan_enter@PLT
 mov r13, rax
 mov r15, rdx
 mov r14, 0
 jmp xchain00016_n20_α
 xchain00016_n18_β:
 jmp xchain00016_n9_α
 xchain00016_n19_α:
# BOX IR_CALL push(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+80]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+128] -> [zr+96]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn219: .string "push"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn219]
 lea rsi, [r12 + 80]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00016_n14_α
 jmp xchain00016_n11_α
 xchain00016_n19_β:
 jmp xchain00016_n14_α
# IR_LIT_STRING
 xchain00016_n20_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx00018_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain00016_n21_α
 xchain00016_n20_β:
 jmp xchain00016_n23_α
.Lx00018_0:
 .quad .Lx00018_0_s
.Lx00018_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00016_n21_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00016_n23_α
 mov rdi, qword ptr [rip + .Lx00019_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00016_n23_α
 mov qword ptr [r12 + 2144], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 2152], rax
 jmp xchain00016_n22_α
 xchain00016_n21_β:
 jmp xchain00016_n23_α
.Lx00019_0:
 .quad .Lx00019_0_s
.Lx00019_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00016_n22_α:
 mov rax, qword ptr [r12 + 2152]
 cmp rax, 1
 jge .Lx00020_0
 add rax, r15
 add rax, 1
.Lx00020_0:
 cmp rax, 1
 jl xchain00016_n23_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00016_n23_α
 mov qword ptr [r12 + 2128], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 jmp xchain00016_n24_α
 xchain00016_n22_β:
 mov r14, qword ptr [r12 + 2128]
 jmp xchain00016_n23_α
# IR_VAR
 xchain00016_n23_α:
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2040], rax
 jmp xchain00016_n25_α
 xchain00016_n23_β:
 jmp xchain00016_n26_α
# IR_LIT_INTEGER
 xchain00016_n24_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx00021_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain00016_n27_α
 xchain00016_n24_β:
 jmp xchain00016_n29_α
.Lx00021_0:
 .quad 0
# IR_VAR
 xchain00016_n25_α:
 mov rax, qword ptr [r12 + 2416]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2424]
 mov qword ptr [r12 + 2056], rax
 jmp xchain00016_n28_α
 xchain00016_n25_β:
 jmp xchain00016_n26_α
# IR_GEN_SCAN
 xchain00016_n26_α:
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00016_n9_α
 xchain00016_n26_β:
 jmp xchain00016_n9_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00016_n27_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00022_0
 add rax, r15
 add rax, 1
.Lx00022_0:
 cmp rax, 1
 jl xchain00016_n29_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00016_n29_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00016_n29_α
 mov qword ptr [r12 + 2080], 6
 mov qword ptr [r12 + 2088], rax
 jmp xchain00016_n23_α
 xchain00016_n27_β:
 jmp xchain00016_n29_α
 xchain00016_n28_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+2000]
 mov rax, qword ptr [r12 + 2032]
 mov qword ptr [r12 + 2000], rax
 mov rax, qword ptr [r12 + 2040]
 mov qword ptr [r12 + 2008], rax
# marshal arg1 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
  .section .rodata
  .Lrkfn235: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn235]
 lea rsi, [r12 + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 cmp eax, 99
 je xchain00016_n26_α
 jmp xchain00016_n30_α
 xchain00016_n28_β:
 jmp xchain00016_n26_α
# IR_KEYWORD_null
 xchain00016_n29_α:
 mov qword ptr [r12 + 2064], 0
 mov qword ptr [r12 + 2072], 0
 jmp xchain00016_n31_α
 xchain00016_n29_β:
 jmp xchain00016_n23_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n30_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 312], rax
 lea rax, [rip + xchain00016_n26_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00016_n32_α
 xchain00016_n30_β:
 jmp xchain00016_n26_α
 xchain00016_n31_α:
 jmp xchain00016_n34_α
xchain00016_n31_β:
 jmp xchain00016_n23_α
# IR_GEN_SCAN
 xchain00016_n32_α:
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
 lea rdi, [r12 + 240]
 call rt_scan_leave@PLT
 mov r13, qword ptr [r12 + 240]
 mov r14, qword ptr [r12 + 248]
 mov r15, qword ptr [r12 + 256]
 jmp xchain00016_n9_α
 xchain00016_n32_β:
 jmp xchain00016_n9_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00016_n33_α:
 jmp qword ptr [r12 + 320]
 xchain00016_n33_β:
 jmp xchain00016_n26_α
# IR_LIT_STRING
 xchain00016_n34_α:
 mov qword ptr [r12 + 1968], 1
 mov rax, qword ptr [rip + .Lx00023_0]
 mov qword ptr [r12 + 1976], rax
 jmp xchain00016_n35_α
 xchain00016_n34_β:
 jmp xchain00016_n37_α
.Lx00023_0:
 .quad .Lx00023_0_s
.Lx00023_0_s:
 .string "-"
# IR_SCAN_MATCH
 xchain00016_n35_α:
 mov rax, r15
 sub rax, r14
 cmp rax, 1
 jl xchain00016_n37_α
 mov rdi, qword ptr [rip + .Lx00024_0]
 mov rsi, r13
 add rsi, r14
 mov rdx, 1
 push r10
 call memcmp@PLT
 pop r10
 test eax, eax
 jne xchain00016_n37_α
 mov qword ptr [r12 + 1936], 6
 mov rax, r14
 add rax, 2
 mov qword ptr [r12 + 1944], rax
 jmp xchain00016_n36_α
 xchain00016_n35_β:
 jmp xchain00016_n37_α
.Lx00024_0:
 .quad .Lx00024_0_s
.Lx00024_0_s:
 .string "-"
# IR_SCAN_TAB
 xchain00016_n36_α:
 mov rax, qword ptr [r12 + 1944]
 cmp rax, 1
 jge .Lx00025_0
 add rax, r15
 add rax, 1
.Lx00025_0:
 cmp rax, 1
 jl xchain00016_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00016_n37_α
 mov qword ptr [r12 + 1920], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain00016_n38_α
 xchain00016_n36_β:
 mov r14, qword ptr [r12 + 1920]
 jmp xchain00016_n37_α
# IR_LIT_INTEGER
 xchain00016_n37_α:
 mov qword ptr [r12 + 384], 6
 mov rax, qword ptr [rip + .Lx00026_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00016_n39_α
 xchain00016_n37_β:
 jmp xchain00016_n45_α
.Lx00026_0:
 .quad 1
# IR_LIT_INTEGER
 xchain00016_n38_α:
 mov qword ptr [r12 + 1888], 6
 mov rax, qword ptr [rip + .Lx00027_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain00016_n40_α
 xchain00016_n38_β:
 jmp xchain00016_n37_α
.Lx00027_0:
 .quad 0
# IR_SCAN_MOVE [fscan.r move: j=&pos+i; fail unless 1<=j<=Delta+1; result substr; data-backtrack restores r14 on beta]
 xchain00016_n39_α:
 mov rax, 1
 add rax, r14
 add rax, 1
 cmp rax, 1
 jl xchain00016_n45_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00016_n45_α
 mov qword ptr [r12 + 368], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00016_n41_α
 xchain00016_n39_β:
 mov r14, qword ptr [r12 + 368]
 jmp xchain00016_n45_α
# BOX ICN IR_SCAN_POS pos(n) [ICN-SCAN-3 fscan.r: i=cvpos(i,len); succeed iff i==&pos (r14+1); result {DT_I,i} normalized; single-shot beta->omega]
 xchain00016_n40_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00028_0
 add rax, r15
 add rax, 1
.Lx00028_0:
 cmp rax, 1
 jl xchain00016_n37_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00016_n37_α
 mov rcx, r14
 add rcx, 1
 cmp rax, rcx
 jne xchain00016_n37_α
 mov qword ptr [r12 + 1872], 6
 mov qword ptr [r12 + 1880], rax
 jmp xchain00016_n43_α
 xchain00016_n40_β:
 jmp xchain00016_n37_α
 xchain00016_n41_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 352]
 mov rdx, qword ptr [r12 + 360]
 mov qword ptr [r12 + 2432], rax
 mov qword ptr [r12 + 2440], rdx
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00016_n44_α
 xchain00016_n41_β:
 jmp xchain00016_n45_α
 xchain00016_n42_α:
 jmp xchain00016_n45_α
xchain00016_n42_β:
 jmp xchain00016_n45_α
 xchain00016_n43_α:
 jmp xchain00016_n11_α
xchain00016_n43_β:
 jmp xchain00016_n37_α
# IR_VAR
 xchain00016_n44_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1800], rax
 jmp xchain00016_n47_α
 xchain00016_n44_β:
 jmp xchain00016_n48_α
 xchain00016_n45_α:
 jmp xchain00016_n49_α
xchain00016_n45_β:
 jmp xchain00016_n26_α
 xchain00016_n46_α:
 jmp xchain00016_n11_α
xchain00016_n46_β:
 jmp xchain00016_n11_α
# IR_VAR
 xchain00016_n47_α:
 mov rax, qword ptr [r12 + 32]
 mov qword ptr [r12 + 1808], rax
 mov rax, qword ptr [r12 + 40]
 mov qword ptr [r12 + 1816], rax
 jmp xchain00016_n50_α
 xchain00016_n47_β:
 jmp xchain00016_n48_α
# IR_LIT_STRING
 xchain00016_n48_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx00029_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain00016_n51_α
 xchain00016_n48_β:
 jmp xchain00016_n37_α
.Lx00029_0:
 .quad .Lx00029_0_s
.Lx00029_0_s:
 .string "Unrecognized option: -"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n49_α:
 lea rax, [rip + xchain00016_n52_α]
 mov qword ptr [r12 + 320], rax
 jmp xchain00016_n32_α
 xchain00016_n49_β:
 jmp xchain00016_n26_α
 xchain00016_n50_α:
# BOX IR_CALL_BUILTIN_GEN find(...) -> rt_call_arr_gen by-name [four-port generator; alpha zeroes resume cell, beta re-pumps invoke with persisted cell]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rax
# marshal arg1 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1768], rax
 mov qword ptr [r12 + 1776], 0
.Lx00030_60:
  .section .rodata
  .Lbynamegenfn192: .string "find"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamegenfn192]
 lea rsi, [r12 + 1744]
 mov edx, 2
 lea rcx, [r12 + 1776]
 call rt_call_arr_gen@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je xchain00016_n48_α
 jmp xchain00016_n53_α
 xchain00016_n50_β:
 jmp .Lx00030_60
# IR_VAR
 xchain00016_n51_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1688], rax
 jmp xchain00016_n54_α
 xchain00016_n51_β:
 jmp xchain00016_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00016_n52_α:
 jmp qword ptr [r12 + 416]
 xchain00016_n52_β:
 jmp xchain00016_n37_α
# IR_LIT_INTEGER
 xchain00016_n53_α:
 mov qword ptr [r12 + 1824], 6
 mov rax, qword ptr [rip + .Lx00031_0]
 mov qword ptr [r12 + 1832], rax
 jmp xchain00016_n55_α
 xchain00016_n53_β:
 jmp xchain00016_n50_β
.Lx00031_0:
 .quad 1
 xchain00016_n54_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1648]
 mov rax, qword ptr [r12 + 1680]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1688]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn274: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn274]
 lea rsi, [r12 + 1632]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1616], rax
 mov qword ptr [r12 + 1624], rdx
 cmp eax, 99
 je xchain00016_n37_α
 jmp xchain00016_n56_α
 xchain00016_n54_β:
 jmp xchain00016_n37_α
 xchain00016_n55_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 100
 je .Lx00032_0
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 100
 je .Lx00032_0
 mov eax, dword ptr [r12 + 1728]
 cmp eax, 6
 jne .Lx00032_2
 mov eax, dword ptr [r12 + 1824]
 cmp eax, 6
 jne .Lx00032_2
.Lx00032_1:
 mov rax, qword ptr [r12 + 1736]
 mov rcx, qword ptr [r12 + 1832]
 add rax, rcx
 mov qword ptr [r12 + 1712], 6
 mov qword ptr [r12 + 1720], rax
 jmp xchain00016_n57_α
.Lx00032_0:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 lea r9, [r12 + 1712]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00032_3
.Lx00032_2:
 mov rdi, qword ptr [r12 + 1728]
 mov rsi, qword ptr [r12 + 1736]
 mov rdx, qword ptr [r12 + 1824]
 mov rcx, qword ptr [r12 + 1832]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00016_n48_α
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
.Lx00032_3:
 jmp xchain00016_n57_α
 xchain00016_n55_β:
 jmp xchain00016_n48_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n56_α:
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00016_n37_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00016_n37_α
 xchain00016_n56_β:
 jmp xchain00016_n37_α
 xchain00016_n57_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1712]
 mov rdx, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 mov qword ptr [r12 + 1696], rax
 mov qword ptr [r12 + 1704], rdx
 jmp xchain00016_n58_α
 xchain00016_n57_β:
 jmp xchain00016_n48_α
# IR_VAR_REF
 xchain00016_n58_α:
 lea rdi, [r12 + 2384]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain00016_n59_α
 xchain00016_n58_β:
 jmp xchain00016_n37_α
# IR_VAR
 xchain00016_n59_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 456], rax
 jmp xchain00016_n60_α
 xchain00016_n59_β:
 jmp xchain00016_n37_α
# IR_SUBSCRIPT x[i] variable
 xchain00016_n60_α:
 mov rdi, qword ptr [r12 + 432]
 mov rsi, qword ptr [r12 + 440]
 mov rdx, qword ptr [r12 + 448]
 mov rcx, qword ptr [r12 + 456]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00016_n37_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00016_n61_α
 xchain00016_n60_β:
 jmp xchain00016_n37_α
# IR_LIT_CHARSET
 xchain00016_n61_α:
 mov qword ptr [r12 + 1520], 1
 mov dword ptr [r12 + 1524], -1
 mov rax, qword ptr [rip + .Lx00033_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain00016_n62_α
 xchain00016_n61_β:
 jmp xchain00016_n65_α
.Lx00033_0:
 .quad .Lx00033_0_s
.Lx00033_0_s:
 .string "+.:"
# IR_VAR_REF
 xchain00016_n62_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain00016_n63_α
 xchain00016_n62_β:
 jmp xchain00016_n65_α
# IR_VAR
 xchain00016_n63_α:
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 1576], rax
 jmp xchain00016_n64_α
 xchain00016_n63_β:
 jmp xchain00016_n65_α
# IR_SUBSCRIPT x[i] variable
 xchain00016_n64_α:
 mov rdi, qword ptr [r12 + 1552]
 mov rsi, qword ptr [r12 + 1560]
 mov rdx, qword ptr [r12 + 1568]
 mov rcx, qword ptr [r12 + 1576]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00016_n65_α
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain00016_n66_α
 xchain00016_n64_β:
 jmp xchain00016_n65_α
# IR_LIT_INTEGER
 xchain00016_n65_α:
 mov qword ptr [r12 + 1456], 6
 mov rax, qword ptr [rip + .Lx00034_0]
 mov qword ptr [r12 + 1464], rax
 jmp xchain00016_n67_α
 xchain00016_n65_β:
 jmp xchain00016_n37_α
.Lx00034_0:
 .quad 1
# IR_DEREF variable -> value
 xchain00016_n66_α:
 mov rdi, qword ptr [r12 + 1584]
 mov rsi, qword ptr [r12 + 1592]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00016_n65_α
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 jmp xchain00016_n68_α
 xchain00016_n66_β:
 jmp xchain00016_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n67_α:
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00016_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00016_n69_α
 xchain00016_n67_β:
 jmp xchain00016_n37_α
 xchain00016_n68_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1600]
 mov rdx, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 2464], rax
 mov qword ptr [r12 + 2472], rdx
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain00016_n71_α
 xchain00016_n68_β:
 jmp xchain00016_n65_α
# IR_ASSIGN_VAR
 xchain00016_n69_α:
 mov rdi, qword ptr [r12 + 464]
 mov rsi, qword ptr [r12 + 472]
 mov rdx, qword ptr [r12 + 496]
 mov rcx, qword ptr [r12 + 504]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00016_n37_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00016_n72_α
 xchain00016_n69_β:
 jmp xchain00016_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00016_n70_α:
 jmp qword ptr [r12 + 512]
 xchain00016_n70_β:
 jmp xchain00016_n37_α
 xchain00016_n71_α:
# BOX IR_CALL any(...) -> rt_call_arr by-name [four-port, FAIL->ω.node]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1496], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
  .section .rodata
  .Lbynamefn213: .string "any"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lbynamefn213]
 lea rsi, [r12 + 1488]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je xchain00016_n65_α
 jmp xchain00016_n73_α
 xchain00016_n71_β:
 jmp xchain00016_n65_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n72_α:
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 408], rax
 lea rax, [rip + xchain00016_n70_α]
 mov qword ptr [r12 + 416], rax
 jmp xchain00016_n37_α
 xchain00016_n72_β:
 jmp xchain00016_n37_α
# IR_LIT_STRING
 xchain00016_n73_α:
 mov qword ptr [r12 + 1392], 1
 mov rax, qword ptr [rip + .Lx00035_0]
 mov qword ptr [r12 + 1400], rax
 jmp xchain00016_n74_α
 xchain00016_n73_β:
 jmp xchain00016_n77_α
.Lx00035_0:
 .quad .Lx00035_0_s
.Lx00035_0_s:
 .string ""
# IR_LIT_INTEGER
 xchain00016_n74_α:
 mov qword ptr [r12 + 1440], 6
 mov rax, qword ptr [rip + .Lx00036_0]
 mov qword ptr [r12 + 1448], rax
 jmp xchain00016_n75_α
 xchain00016_n74_β:
 jmp xchain00016_n77_α
.Lx00036_0:
 .quad 0
# IR_SCAN_TAB
 xchain00016_n75_α:
 mov rax, 0
 cmp rax, 1
 jge .Lx00037_0
 add rax, r15
 add rax, 1
.Lx00037_0:
 cmp rax, 1
 jl xchain00016_n77_α
 mov rcx, r15
 add rcx, 1
 cmp rax, rcx
 jg xchain00016_n77_α
 mov qword ptr [r12 + 1424], r14
 mov rdi, r13
 mov rsi, r14
 mov rdx, rax
 sub rdx, 1
 mov r14, rdx
 push r10
 push r10
 call rt_substr@PLT
 pop r10
 pop r10
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 jmp xchain00016_n76_α
 xchain00016_n75_β:
 mov r14, qword ptr [r12 + 1424]
 jmp xchain00016_n77_α
 xchain00016_n76_α:
# IR_BINOP_TEST
 mov rdi, qword ptr [r12 + 1392]
 mov rsi, qword ptr [r12 + 1400]
 mov rdx, qword ptr [r12 + 1408]
 mov rcx, qword ptr [r12 + 1416]
 mov r8d, 17
 call rt_jct_relop@PLT
 test eax, eax
 jz xchain00016_n77_α
 mov rdi, qword ptr [r12 + 1408]
 mov rsi, qword ptr [r12 + 1416]
 call rt_str_coerce@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain00016_n78_α
 xchain00016_n76_β:
 jmp xchain00016_n77_α
# IR_VAR
 xchain00016_n77_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 1368], rax
 jmp xchain00016_n79_α
 xchain00016_n77_β:
 jmp xchain00016_n80_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n78_α:
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00016_n77_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00016_n81_α
 xchain00016_n78_β:
 jmp xchain00016_n85_α
 xchain00016_n79_α:
# BOX IR_CALL get(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1344]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn311: .string "get"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn311]
 lea rsi, [r12 + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain00016_n80_α
 jmp xchain00016_n83_α
 xchain00016_n79_β:
 jmp xchain00016_n80_α
# IR_LIT_STRING
 xchain00016_n80_α:
 mov qword ptr [r12 + 1296], 1
 mov rax, qword ptr [rip + .Lx00038_0]
 mov qword ptr [r12 + 1304], rax
 jmp xchain00016_n84_α
 xchain00016_n80_β:
 jmp xchain00016_n85_α
.Lx00038_0:
 .quad .Lx00038_0_s
.Lx00038_0_s:
 .string "No parameter following -"
 xchain00016_n81_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1216]
 mov rdx, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 2480], rax
 mov qword ptr [r12 + 2488], rdx
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain00016_n85_α
 xchain00016_n81_β:
 jmp xchain00016_n85_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00016_n82_α:
 jmp qword ptr [r12 + 1232]
 xchain00016_n82_β:
 jmp xchain00016_n85_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n83_α:
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00016_n80_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00016_n81_α
 xchain00016_n83_β:
 jmp xchain00016_n85_α
# IR_VAR
 xchain00016_n84_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 1312], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 1320], rax
 jmp xchain00016_n86_α
 xchain00016_n84_β:
 jmp xchain00016_n85_α
# IR_VAR
 xchain00016_n85_α:
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 552], rax
 jmp xchain00016_n87_α
 xchain00016_n85_β:
 jmp xchain00016_n37_α
 xchain00016_n86_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn323: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn323]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain00016_n85_α
 jmp xchain00016_n88_α
 xchain00016_n86_β:
 jmp xchain00016_n85_α
# IR_LIT_STRING
 xchain00016_n87_α:
 mov qword ptr [r12 + 1104], 1
 mov rax, qword ptr [rip + .Lx00039_0]
 mov qword ptr [r12 + 1112], rax
 jmp xchain00016_n89_α
 xchain00016_n87_β:
 jmp xchain00016_n37_α
.Lx00039_0:
 .quad .Lx00039_0_s
.Lx00039_0_s:
 .string ":"
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n88_α:
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1224], rax
 lea rax, [rip + xchain00016_n85_α]
 mov qword ptr [r12 + 1232], rax
 jmp xchain00016_n81_α
 xchain00016_n88_β:
 jmp xchain00016_n85_α
 xchain00016_n89_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1168]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1184]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn328: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn328]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain00016_n91_α
 jmp xchain00016_n90_α
 xchain00016_n89_β:
 jmp xchain00016_n91_α
# IR_VAR
 xchain00016_n90_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1128], rax
 jmp xchain00016_n92_α
 xchain00016_n90_β:
 jmp xchain00016_n37_α
# IR_LIT_STRING
 xchain00016_n91_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx00040_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain00016_n93_α
 xchain00016_n91_β:
 jmp xchain00016_n37_α
.Lx00040_0:
 .quad .Lx00040_0_s
.Lx00040_0_s:
 .string "+"
 xchain00016_n92_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 1120]
 mov rdx, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 jmp xchain00016_n94_α
 xchain00016_n92_β:
 jmp xchain00016_n37_α
 xchain00016_n93_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+1072]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+1088]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 1096], rax
  .section .rodata
  .Lrkfn334: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn334]
 lea rsi, [r12 + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je xchain00016_n96_α
 jmp xchain00016_n95_α
 xchain00016_n93_β:
 jmp xchain00016_n96_α
# IR_VAR
 xchain00016_n94_α:
 mov rax, qword ptr [r12 + 2448]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2456]
 mov qword ptr [r12 + 536], rax
 jmp xchain00016_n97_α
 xchain00016_n94_β:
 jmp xchain00016_n37_α
# IR_VAR
 xchain00016_n95_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 1032], rax
 jmp xchain00016_n98_α
 xchain00016_n95_β:
 jmp xchain00016_n99_α
# IR_LIT_STRING
 xchain00016_n96_α:
 mov qword ptr [r12 + 560], 1
 mov rax, qword ptr [rip + .Lx00041_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain00016_n00042_α
 xchain00016_n96_β:
 jmp xchain00016_n37_α
.Lx00041_0:
 .quad .Lx00041_0_s
.Lx00041_0_s:
 .string "."
 xchain00016_n97_α:
 jmp xchain00016_n00001_α
xchain00016_n97_β:
 jmp xchain00016_n37_α
 xchain00016_n98_α:
# BOX IR_CALL integer(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+1008]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn342: .string "integer"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn342]
 lea rsi, [r12 + 1008]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain00016_n99_α
 jmp xchain00016_n00043_α
 xchain00016_n98_β:
 jmp xchain00016_n99_α
# IR_LIT_STRING
 xchain00016_n99_α:
 mov qword ptr [r12 + 944], 1
 mov rax, qword ptr [rip + .Lx00044_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain00016_n00045_α
 xchain00016_n99_β:
 jmp xchain00016_n37_α
.Lx00044_0:
 .quad .Lx00044_0_s
.Lx00044_0_s:
 .string "-"
 xchain00016_n00042_α:
# BOX IR_CALL IDENTICAL(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+800]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 808], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+816]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn345: .string "IDENTICAL"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn345]
 lea rsi, [r12 + 800]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 cmp eax, 99
 je xchain00016_n37_α
 jmp xchain00016_n00046_α
 xchain00016_n00042_β:
 jmp xchain00016_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n00001_α:
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 504], rax
 lea rax, [rip + xchain00016_n37_α]
 mov qword ptr [r12 + 512], rax
 jmp xchain00016_n69_α
 xchain00016_n00001_β:
 jmp xchain00016_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n00043_α:
 mov rax, qword ptr [r12 + 992]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 1000]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00016_n99_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00016_n00047_α
 xchain00016_n00043_β:
 jmp xchain00016_n37_α
# IR_VAR
 xchain00016_n00045_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 960], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 968], rax
 jmp xchain00016_n00003_α
 xchain00016_n00045_β:
 jmp xchain00016_n37_α
# IR_VAR
 xchain00016_n00046_α:
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 760], rax
 jmp xchain00016_n00048_α
 xchain00016_n00046_β:
 jmp xchain00016_n00009_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00016_n00002_α:
 jmp qword ptr [r12 + 864]
 xchain00016_n00002_β:
 jmp xchain00016_n37_α
# IR_LIT_STRING
 xchain00016_n00003_α:
 mov qword ptr [r12 + 976], 1
 mov rax, qword ptr [rip + .Lx00049_0]
 mov qword ptr [r12 + 984], rax
 jmp xchain00016_n00050_α
 xchain00016_n00003_β:
 jmp xchain00016_n37_α
.Lx00049_0:
 .quad .Lx00049_0_s
.Lx00049_0_s:
 .string " needs numeric parameter"
 xchain00016_n00048_α:
# BOX IR_CALL real(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+736]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 744], rax
  .section .rodata
  .Lrkfn358: .string "real"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn358]
 lea rsi, [r12 + 736]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 cmp eax, 99
 je xchain00016_n00009_α
 jmp xchain00016_n00051_α
 xchain00016_n00048_β:
 jmp xchain00016_n00009_α
# IR_LIT_STRING
 xchain00016_n00009_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00052_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00016_n00053_α
 xchain00016_n00009_β:
 jmp xchain00016_n37_α
.Lx00052_0:
 .quad .Lx00052_0_s
.Lx00052_0_s:
 .string "-"
 xchain00016_n00047_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 848]
 mov rdx, qword ptr [r12 + 856]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain00016_n94_α
 xchain00016_n00047_β:
 jmp xchain00016_n37_α
 xchain00016_n00050_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 920], rax
# marshal arg2 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 936], rax
  .section .rodata
  .Lrkfn362: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn362]
 lea rsi, [r12 + 896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain00016_n37_α
 jmp xchain00016_n00054_α
 xchain00016_n00050_β:
 jmp xchain00016_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n00051_α:
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00016_n00009_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00016_n00055_α
 xchain00016_n00051_β:
 jmp xchain00016_n37_α
# IR_VAR
 xchain00016_n00053_α:
 mov rax, qword ptr [r12 + 2432]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 2440]
 mov qword ptr [r12 + 696], rax
 jmp xchain00016_n00004_α
 xchain00016_n00053_β:
 jmp xchain00016_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n00054_α:
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
 lea rax, [rip + xchain00016_n37_α]
 mov qword ptr [r12 + 864], rax
 jmp xchain00016_n00047_α
 xchain00016_n00054_β:
 jmp xchain00016_n37_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00016_n00056_α:
 jmp qword ptr [r12 + 592]
 xchain00016_n00056_β:
 jmp xchain00016_n37_α
# IR_LIT_STRING
 xchain00016_n00004_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00057_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00016_n00058_α
 xchain00016_n00004_β:
 jmp xchain00016_n37_α
.Lx00057_0:
 .quad .Lx00057_0_s
.Lx00057_0_s:
 .string " needs numeric parameter"
 xchain00016_n00055_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [r12 + 2448], rax
 mov qword ptr [r12 + 2456], rdx
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain00016_n94_α
 xchain00016_n00055_β:
 jmp xchain00016_n37_α
 xchain00016_n00058_α:
# BOX IR_CALL stop(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 648], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 656], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 664], rax
  .section .rodata
  .Lrkfn374: .string "stop"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn374]
 lea rsi, [r12 + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 cmp eax, 99
 je xchain00016_n37_α
 jmp xchain00016_n00059_α
 xchain00016_n00058_β:
 jmp xchain00016_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00016_n00059_α:
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 584], rax
 lea rax, [rip + xchain00016_n37_α]
 mov qword ptr [r12 + 592], rax
 jmp xchain00016_n00055_α
 xchain00016_n00059_β:
 jmp xchain00016_n37_α
proc_options_β:
jmp proc_options_ω
proc_options_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2368]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_options_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_Init___α
proc_Init___α:
#=======================================================================================================================
    .global proc_Init___α
    .global proc_Init___β
    .global proc_Init___γ
    .global proc_Init___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 352], rax
 pop rsi
proc_Init___α_body:
# IR_VAR
 xchain00060_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 344], rax
 jmp xchain00060_n1_α
 xchain00060_n0_β:
 jmp xchain00060_n2_α
# IR_ASSIGN gva
 xchain00060_n1_α:
 mov rax, qword ptr [r12 + 336]
 mov rdx, qword ptr [r12 + 344]
 mov qword ptr [rbx + 144], rax
 mov qword ptr [rbx + 152], rdx
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00060_n2_α
 xchain00060_n1_β:
 jmp xchain00060_n2_α
 xchain00060_n2_α:
  .section .rodata
  .Lcall00061_pname: .string "Signature__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00061_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain00060_n3_α
 jmp xchain00060_n3_α
xchain00060_n2_β:
 jmp xchain00060_n3_α
 xchain00060_n3_α:
  .section .rodata
  .Lcall00029_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00029_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00060_n4_α
 jmp xchain00060_n4_α
xchain00060_n3_β:
 jmp xchain00060_n4_α
 xchain00060_n4_α:
  .section .rodata
  .Lcall00062_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00062_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 cmp eax, 99
 je xchain00060_n5_α
 jmp xchain00060_n5_α
xchain00060_n4_β:
 jmp xchain00060_n5_α
# IR_LIT_STRING
 xchain00060_n5_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx00063_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain00060_n6_α
 xchain00060_n5_β:
 jmp xchain00060_n8_α
.Lx00063_0:
 .quad .Lx00063_0_s
.Lx00063_0_s:
 .string "OUTPUT"
 xchain00060_n6_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+240]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 248], rax
  .section .rodata
  .Lrkfn386: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn386]
 lea rsi, [r12 + 240]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00060_n8_α
 jmp xchain00060_n7_α
 xchain00060_n6_β:
 jmp xchain00060_n8_α
# IR_LIT_STRING
 xchain00060_n7_α:
 mov qword ptr [r12 + 208], 1
 mov rax, qword ptr [rip + .Lx00064_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00060_n9_α
 xchain00060_n7_β:
 jmp xchain00060_n12_α
.Lx00064_0:
 .quad .Lx00064_0_s
.Lx00064_0_s:
 .string "*** Benchmarking with output ***"
# IR_VAR
 xchain00060_n8_α:
 mov rdi, qword ptr [rip + .Lx00065_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00060_n11_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00060_n10_α
 xchain00060_n8_β:
 jmp xchain00060_n11_α
.Lx00065_0:
 .quad .Lx00065_0_s
.Lx00065_0_s:
 .string "write"
 xchain00060_n9_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn390: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn390]
 lea rsi, [r12 + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 cmp eax, 99
 je xchain00060_n12_α
 jmp xchain00060_n12_α
 xchain00060_n9_β:
 jmp xchain00060_n12_α
# IR_ASSIGN gva
 xchain00060_n10_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 112], rax
 mov qword ptr [rbx + 120], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00060_n11_α
 xchain00060_n10_β:
 jmp xchain00060_n11_α
# IR_VAR
 xchain00060_n11_α:
 mov rdi, qword ptr [rip + .Lx00066_0]
 call NV_GET_fn@PLT
 cmp eax, 99
 je xchain00060_n14_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00060_n13_α
 xchain00060_n11_β:
 jmp xchain00060_n14_α
.Lx00066_0:
 .quad .Lx00066_0_s
.Lx00066_0_s:
 .string "writes"
# IR_RETURN
 xchain00060_n12_α:
 mov rax, qword ptr [r12 + 176]
 mov rdx, qword ptr [r12 + 184]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
# IR_ASSIGN gva
 xchain00060_n13_α:
 mov rax, qword ptr [r12 + 96]
 mov rdx, qword ptr [r12 + 104]
 mov qword ptr [rbx + 128], rax
 mov qword ptr [rbx + 136], rdx
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00060_n14_α
 xchain00060_n13_β:
 jmp xchain00060_n14_α
# IR_LIT_INTEGER
 xchain00060_n14_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00067_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00060_n15_α
 xchain00060_n14_β:
 jmp xchain00060_n17_α
.Lx00067_0:
 .quad 1
# IR_ASSIGN global
 xchain00060_n15_α:
 mov rsi, qword ptr [r12 + 64]
 mov rdx, qword ptr [r12 + 72]
 mov rdi, qword ptr [rip + .Lx00068_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 jmp xchain00060_n16_α
 xchain00060_n15_β:
 jmp xchain00060_n17_α
.Lx00068_0:
 .quad .Lx00068_0_s
.Lx00068_0_s:
 .string "writes"
# IR_ASSIGN global
 xchain00060_n16_α:
 mov rsi, qword ptr [r12 + 48]
 mov rdx, qword ptr [r12 + 56]
 mov rdi, qword ptr [rip + .Lx00069_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00060_n17_α
 xchain00060_n16_β:
 jmp xchain00060_n17_α
.Lx00069_0:
 .quad .Lx00069_0_s
.Lx00069_0_s:
 .string "write"
# IR_RETURN
 xchain00060_n17_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Init___γ
proc_Init___β:
jmp proc_Init___ω
proc_Init___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 352]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Init___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_Term___α
proc_Term___α:
#=======================================================================================================================
    .global proc_Term___α
    .global proc_Term___β
    .global proc_Term___γ
    .global proc_Term___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 336], rax
 pop rsi
proc_Term___α_body:
# IR_LIT_STRING
 xchain00070_n0_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00071_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00070_n1_α
 xchain00070_n0_β:
 jmp xchain00070_n3_α
.Lx00071_0:
 .quad .Lx00071_0_s
.Lx00071_0_s:
 .string "OUTPUT"
 xchain00070_n1_α:
# BOX IR_CALL getenv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+304]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 312], rax
  .section .rodata
  .Lrkfn402: .string "getenv"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn402]
 lea rsi, [r12 + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je xchain00070_n3_α
 jmp xchain00070_n2_α
 xchain00070_n1_β:
 jmp xchain00070_n3_α
# IR_VAR
 xchain00070_n2_α:
 mov rax, qword ptr [rbx + 144]
 mov rdx, qword ptr [rbx + 152]
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00070_n4_α
 xchain00070_n2_β:
 jmp xchain00070_n5_α
# IR_KEYWORD_null
 xchain00070_n3_α:
 mov qword ptr [r12 + 272], 0
 mov qword ptr [r12 + 280], 0
 jmp xchain00070_n6_α
 xchain00070_n3_β:
 jmp xchain00070_n2_α
# IR_LIT_STRING
 xchain00070_n4_α:
 mov qword ptr [r12 + 144], 1
 mov rax, qword ptr [rip + .Lx00072_0]
 mov qword ptr [r12 + 152], rax
 jmp xchain00070_n7_α
 xchain00070_n4_β:
 jmp xchain00070_n5_α
.Lx00072_0:
 .quad .Lx00072_0_s
.Lx00072_0_s:
 .string " elapsed time = "
 xchain00070_n5_α:
  .section .rodata
  .Lcall00033_pname: .string "Regions__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00033_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je xchain00070_n8_α
 jmp xchain00070_n8_α
xchain00070_n5_β:
 jmp xchain00070_n8_α
# IR_VAR
 xchain00070_n6_α:
 mov rax, qword ptr [rbx + 112]
 mov rdx, qword ptr [rbx + 120]
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain00070_n9_α
 xchain00070_n6_β:
 jmp xchain00070_n10_α
 xchain00070_n7_α:
  .section .rodata
  .Lcall00073_pname: .string "Time__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00073_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00070_n5_α
 jmp xchain00070_n11_α
xchain00070_n7_β:
 jmp xchain00070_n5_α
 xchain00070_n8_α:
  .section .rodata
  .Lcall00074_pname: .string "Storage__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00074_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je xchain00070_n12_α
 jmp xchain00070_n12_α
xchain00070_n8_β:
 jmp xchain00070_n12_α
# IR_ASSIGN global
 xchain00070_n9_α:
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 mov rdi, qword ptr [rip + .Lx00075_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain00070_n10_α
 xchain00070_n9_β:
 jmp xchain00070_n10_α
.Lx00075_0:
 .quad .Lx00075_0_s
.Lx00075_0_s:
 .string "write"
# IR_VAR
 xchain00070_n10_α:
 mov rax, qword ptr [rbx + 128]
 mov rdx, qword ptr [rbx + 136]
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00070_n13_α
 xchain00070_n10_β:
 jmp xchain00070_n2_α
 xchain00070_n11_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+80]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 88], rax
# marshal arg1 = producer-box slot [zr+144] -> [zr+96]
 mov rax, qword ptr [r12 + 144]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 152]
 mov qword ptr [r12 + 104], rax
# marshal arg2 = producer-box slot [zr+160] -> [zr+112]
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn413: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn413]
 lea rsi, [r12 + 80]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je xchain00070_n5_α
 jmp xchain00070_n5_α
 xchain00070_n11_β:
 jmp xchain00070_n5_α
 xchain00070_n12_α:
  .section .rodata
  .Lcall00076_pname: .string "Collections__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00076_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00070_n14_α
 jmp xchain00070_n14_α
xchain00070_n12_β:
 jmp xchain00070_n14_α
# IR_ASSIGN global
 xchain00070_n13_α:
 mov rsi, qword ptr [r12 + 224]
 mov rdx, qword ptr [r12 + 232]
 mov rdi, qword ptr [rip + .Lx00077_0]
 call NV_SET_fn@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00070_n15_α
 xchain00070_n13_β:
 jmp xchain00070_n2_α
.Lx00077_0:
 .quad .Lx00077_0_s
.Lx00077_0_s:
 .string "writes"
# IR_RETURN
 xchain00070_n14_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Term___γ
 xchain00070_n15_α:
 jmp xchain00070_n16_α
xchain00070_n15_β:
 jmp xchain00070_n2_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00070_n16_α:
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
 lea rax, [rip + xchain00070_n2_α]
 mov qword ptr [r12 + 192], rax
 jmp xchain00070_n2_α
 xchain00070_n16_β:
 jmp xchain00070_n2_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00070_n17_α:
 jmp qword ptr [r12 + 192]
 xchain00070_n17_β:
 jmp xchain00070_n2_α
proc_Term___β:
jmp proc_Term___ω
proc_Term___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 336]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Term___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_Collections___α
proc_Collections___α:
#=======================================================================================================================
    .global proc_Collections___α
    .global proc_Collections___β
    .global proc_Collections___γ
    .global proc_Collections___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 784], rax
 pop rsi
proc_Collections___α_body:
# IR_VAR_REF
 xchain00078_n0_α:
 lea rdi, [rbx + 304]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00078_n1_α
 xchain00078_n0_β:
 jmp xchain00078_n3_α
# IR_NULLTEST_VAR
 xchain00078_n1_α:
 mov eax, dword ptr [r12 + 720]
 cmp eax, 99
 je xchain00078_n3_α
 mov rdi, qword ptr [r12 + 720]
 mov rsi, qword ptr [r12 + 728]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00078_n3_α
 cmp eax, 0
 jne xchain00078_n3_α
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 744], rax
 jmp xchain00078_n2_α
 xchain00078_n1_β:
 jmp xchain00078_n3_α
# IR_LIT_INTEGER
 xchain00078_n2_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00079_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00078_n4_α
 xchain00078_n2_β:
 jmp xchain00078_n3_α
.Lx00079_0:
 .quad 1
# IR_MAKE_LIST
 xchain00078_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00078_n5_α
 xchain00078_n3_β:
 jmp xchain00078_n7_α
# IR_ASSIGN_VAR
 xchain00078_n4_α:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00078_n3_α
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00078_n6_α
 xchain00078_n4_β:
 jmp xchain00078_n3_α
 xchain00078_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00078_n7_α
 xchain00078_n5_β:
 jmp xchain00078_n7_α
# IR_LIT_STRING
 xchain00078_n6_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00080_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00078_n8_α
 xchain00078_n6_β:
 jmp xchain00078_n3_α
.Lx00080_0:
 .quad .Lx00080_0_s
.Lx00080_0_s:
 .string "total"
# IR_VAR
 xchain00078_n7_α:
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 456], rax
 jmp xchain00078_n9_α
 xchain00078_n7_β:
 jmp xchain00078_n10_α
# IR_LIT_STRING
 xchain00078_n8_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00081_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00078_n11_α
 xchain00078_n8_β:
 jmp xchain00078_n3_α
.Lx00081_0:
 .quad .Lx00081_0_s
.Lx00081_0_s:
 .string "static"
# IR_KEYWORD_gen
 xchain00078_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00082_1:
 mov rdi, qword ptr [rip + .Lx00082_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00078_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00078_n12_α
 xchain00078_n9_β:
 jmp .Lx00082_1
.Lx00082_0:
 .quad .Lx00082_0_s
.Lx00082_0_s:
 .string "&collections"
# IR_LIT_STRING
 xchain00078_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00083_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00078_n13_α
 xchain00078_n10_β:
 jmp xchain00078_n15_α
.Lx00083_0:
 .quad .Lx00083_0_s
.Lx00083_0_s:
 .string "collections"
# IR_LIT_STRING
 xchain00078_n11_α:
 mov qword ptr [r12 + 688], 1
 mov rax, qword ptr [rip + .Lx00084_0]
 mov qword ptr [r12 + 696], rax
 jmp xchain00078_n14_α
 xchain00078_n11_β:
 jmp xchain00078_n3_α
.Lx00084_0:
 .quad .Lx00084_0_s
.Lx00084_0_s:
 .string "string"
 xchain00078_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn439: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn439]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00078_n10_α
 jmp xchain00078_n9_β
 xchain00078_n12_β:
 jmp xchain00078_n10_α
 xchain00078_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn441: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn441]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00078_n15_α
 jmp xchain00078_n15_α
 xchain00078_n13_β:
 jmp xchain00078_n15_α
# IR_LIT_STRING
 xchain00078_n14_α:
 mov qword ptr [r12 + 704], 1
 mov rax, qword ptr [rip + .Lx00085_0]
 mov qword ptr [r12 + 712], rax
 jmp xchain00078_n16_α
 xchain00078_n14_β:
 jmp xchain00078_n3_α
.Lx00085_0:
 .quad .Lx00085_0_s
.Lx00085_0_s:
 .string "block"
# IR_LIT_INTEGER
 xchain00078_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00086_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00078_n17_α
 xchain00078_n15_β:
 jmp xchain00078_n20_α
.Lx00086_0:
 .quad 1
# IR_MAKE_LIST
 xchain00078_n16_α:
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 632], rax
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 640], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 648], rax
 lea rdi, [r12 + 592]
 mov esi, 4
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00078_n18_α
 xchain00078_n16_β:
 jmp xchain00078_n3_α
# IR_VAR
 xchain00078_n17_α:
 mov rax, qword ptr [rbx + 288]
 mov rdx, qword ptr [rbx + 296]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00078_n19_α
 xchain00078_n17_β:
 jmp xchain00078_n20_α
# IR_ASSIGN gva
 xchain00078_n18_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 288], rax
 mov qword ptr [rbx + 296], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00078_n21_α
 xchain00078_n18_β:
 jmp xchain00078_n3_α
# IR_UNOP
 xchain00078_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00078_n22_α
 xchain00078_n19_β:
 jmp xchain00078_n20_α
# IR_RETURN
 xchain00078_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Collections___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00078_n21_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00078_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00078_n3_α
 xchain00078_n21_β:
 jmp xchain00078_n3_α
# IR_TO
 xchain00078_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00087_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00078_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00078_n24_α
 xchain00078_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00087_0
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00078_n23_α:
 jmp qword ptr [r12 + 544]
 xchain00078_n23_β:
 jmp xchain00078_n3_α
 xchain00078_n24_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00078_n25_α
 xchain00078_n24_β:
 jmp xchain00078_n20_α
# IR_VAR_REF
 xchain00078_n25_α:
 lea rdi, [rbx + 288]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00078_n26_α
 xchain00078_n25_β:
 jmp xchain00078_n22_β
# IR_VAR
 xchain00078_n26_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 184], rax
 jmp xchain00078_n27_α
 xchain00078_n26_β:
 jmp xchain00078_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00078_n27_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00078_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00078_n28_α
 xchain00078_n27_β:
 jmp xchain00078_n22_β
# IR_DEREF variable -> value
 xchain00078_n28_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00078_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00078_n29_α
 xchain00078_n28_β:
 jmp xchain00078_n22_β
# IR_VAR_REF
 xchain00078_n29_α:
 lea rdi, [r12 + 816]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00078_n30_α
 xchain00078_n29_β:
 jmp xchain00078_n22_β
# IR_VAR
 xchain00078_n30_α:
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 296], rax
 jmp xchain00078_n31_α
 xchain00078_n30_β:
 jmp xchain00078_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00078_n31_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00078_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00078_n32_α
 xchain00078_n31_β:
 jmp xchain00078_n22_β
# IR_DEREF variable -> value
 xchain00078_n32_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00078_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00078_n33_α
 xchain00078_n32_β:
 jmp xchain00078_n22_β
# IR_LIT_INTEGER
 xchain00078_n33_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00088_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00078_n34_α
 xchain00078_n33_β:
 jmp xchain00078_n22_β
.Lx00088_0:
 .quad 8
 xchain00078_n34_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn471: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn471]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00078_n22_β
 jmp xchain00078_n35_α
 xchain00078_n34_β:
 jmp xchain00078_n22_β
 xchain00078_n35_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn473: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn473]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00078_n22_β
 jmp xchain00078_n22_β
 xchain00078_n35_β:
 jmp xchain00078_n22_β
proc_Collections___β:
jmp proc_Collections___ω
proc_Collections___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 784]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Collections___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_Regions___α
proc_Regions___α:
#=======================================================================================================================
    .global proc_Regions___α
    .global proc_Regions___β
    .global proc_Regions___γ
    .global proc_Regions___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Regions___α_body:
# IR_VAR_REF
 xchain00089_n0_α:
 lea rdi, [rbx + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00089_n1_α
 xchain00089_n0_β:
 jmp xchain00089_n3_α
# IR_NULLTEST_VAR
 xchain00089_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00089_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00089_n3_α
 cmp eax, 0
 jne xchain00089_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00089_n2_α
 xchain00089_n1_β:
 jmp xchain00089_n3_α
# IR_LIT_INTEGER
 xchain00089_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00090_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00089_n4_α
 xchain00089_n2_β:
 jmp xchain00089_n3_α
.Lx00090_0:
 .quad 1
# IR_MAKE_LIST
 xchain00089_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00089_n5_α
 xchain00089_n3_β:
 jmp xchain00089_n7_α
# IR_ASSIGN_VAR
 xchain00089_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00089_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00089_n6_α
 xchain00089_n4_β:
 jmp xchain00089_n3_α
 xchain00089_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00089_n7_α
 xchain00089_n5_β:
 jmp xchain00089_n7_α
# IR_LIT_STRING
 xchain00089_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00091_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00089_n8_α
 xchain00089_n6_β:
 jmp xchain00089_n3_α
.Lx00091_0:
 .quad .Lx00091_0_s
.Lx00091_0_s:
 .string "static"
# IR_VAR
 xchain00089_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00089_n9_α
 xchain00089_n7_β:
 jmp xchain00089_n10_α
# IR_LIT_STRING
 xchain00089_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00092_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00089_n11_α
 xchain00089_n8_β:
 jmp xchain00089_n3_α
.Lx00092_0:
 .quad .Lx00092_0_s
.Lx00092_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00089_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00093_1:
 mov rdi, qword ptr [rip + .Lx00093_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00089_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00089_n12_α
 xchain00089_n9_β:
 jmp .Lx00093_1
.Lx00093_0:
 .quad .Lx00093_0_s
.Lx00093_0_s:
 .string "&regions"
# IR_LIT_STRING
 xchain00089_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00094_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00089_n13_α
 xchain00089_n10_β:
 jmp xchain00089_n15_α
.Lx00094_0:
 .quad .Lx00094_0_s
.Lx00094_0_s:
 .string "regions"
# IR_LIT_STRING
 xchain00089_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00095_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00089_n14_α
 xchain00089_n11_β:
 jmp xchain00089_n3_α
.Lx00095_0:
 .quad .Lx00095_0_s
.Lx00095_0_s:
 .string "block"
 xchain00089_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn491: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn491]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00089_n10_α
 jmp xchain00089_n9_β
 xchain00089_n12_β:
 jmp xchain00089_n10_α
 xchain00089_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn493: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn493]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00089_n15_α
 jmp xchain00089_n15_α
 xchain00089_n13_β:
 jmp xchain00089_n15_α
# IR_MAKE_LIST
 xchain00089_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00089_n16_α
 xchain00089_n14_β:
 jmp xchain00089_n3_α
# IR_LIT_INTEGER
 xchain00089_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00096_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00089_n17_α
 xchain00089_n15_β:
 jmp xchain00089_n20_α
.Lx00096_0:
 .quad 1
# IR_ASSIGN gva
 xchain00089_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 320], rax
 mov qword ptr [rbx + 328], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00089_n18_α
 xchain00089_n16_β:
 jmp xchain00089_n3_α
# IR_VAR
 xchain00089_n17_α:
 mov rax, qword ptr [rbx + 320]
 mov rdx, qword ptr [rbx + 328]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00089_n19_α
 xchain00089_n17_β:
 jmp xchain00089_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00089_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00089_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00089_n3_α
 xchain00089_n18_β:
 jmp xchain00089_n3_α
# IR_UNOP
 xchain00089_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00089_n22_α
 xchain00089_n19_β:
 jmp xchain00089_n20_α
# IR_RETURN
 xchain00089_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Regions___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00089_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00089_n21_β:
 jmp xchain00089_n3_α
# IR_TO
 xchain00089_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00097_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00089_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00089_n23_α
 xchain00089_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00097_0
 xchain00089_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00089_n24_α
 xchain00089_n23_β:
 jmp xchain00089_n20_α
# IR_VAR_REF
 xchain00089_n24_α:
 lea rdi, [rbx + 320]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00089_n25_α
 xchain00089_n24_β:
 jmp xchain00089_n22_β
# IR_VAR
 xchain00089_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00089_n26_α
 xchain00089_n25_β:
 jmp xchain00089_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00089_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00089_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00089_n27_α
 xchain00089_n26_β:
 jmp xchain00089_n22_β
# IR_DEREF variable -> value
 xchain00089_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00089_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00089_n28_α
 xchain00089_n27_β:
 jmp xchain00089_n22_β
# IR_VAR_REF
 xchain00089_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00089_n29_α
 xchain00089_n28_β:
 jmp xchain00089_n22_β
# IR_VAR
 xchain00089_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00089_n30_α
 xchain00089_n29_β:
 jmp xchain00089_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00089_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00089_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00089_n31_α
 xchain00089_n30_β:
 jmp xchain00089_n22_β
# IR_DEREF variable -> value
 xchain00089_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00089_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00089_n32_α
 xchain00089_n31_β:
 jmp xchain00089_n22_β
# IR_LIT_INTEGER
 xchain00089_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00098_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00089_n33_α
 xchain00089_n32_β:
 jmp xchain00089_n22_β
.Lx00098_0:
 .quad 8
 xchain00089_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn522: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn522]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00089_n22_β
 jmp xchain00089_n34_α
 xchain00089_n33_β:
 jmp xchain00089_n22_β
 xchain00089_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn524: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn524]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00089_n22_β
 jmp xchain00089_n22_β
 xchain00089_n34_β:
 jmp xchain00089_n22_β
proc_Regions___β:
jmp proc_Regions___ω
proc_Regions___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Regions___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_Signature___α
proc_Signature___α:
#=======================================================================================================================
    .global proc_Signature___α
    .global proc_Signature___β
    .global proc_Signature___γ
    .global proc_Signature___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_Signature___α_body:
# IR_KEYWORD_read
 xchain00099_n0_α:
 mov rdi, qword ptr [rip + .Lx00100_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 176], rax
 mov qword ptr [r12 + 184], rdx
 jmp xchain00099_n1_α
 xchain00099_n0_β:
 jmp xchain00099_n2_α
.Lx00100_0:
 .quad .Lx00100_0_s
.Lx00100_0_s:
 .string "&version"
 xchain00099_n1_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn528: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn528]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain00099_n2_α
 jmp xchain00099_n2_α
 xchain00099_n1_β:
 jmp xchain00099_n2_α
# IR_KEYWORD_read
 xchain00099_n2_α:
 mov rdi, qword ptr [rip + .Lx00101_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00099_n3_α
 xchain00099_n2_β:
 jmp xchain00099_n4_α
.Lx00101_0:
 .quad .Lx00101_0_s
.Lx00101_0_s:
 .string "&host"
 xchain00099_n3_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+96]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 104], rax
  .section .rodata
  .Lrkfn531: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn531]
 lea rsi, [r12 + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 cmp eax, 99
 je xchain00099_n4_α
 jmp xchain00099_n4_α
 xchain00099_n3_β:
 jmp xchain00099_n4_α
# IR_KEYWORD_gen
 xchain00099_n4_α:
 mov qword ptr [r12 + 64], 0
.Lx00102_1:
 mov rdi, qword ptr [rip + .Lx00102_0]
 mov rsi, qword ptr [r12 + 64]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00099_n6_α
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 mov rax, qword ptr [r12 + 64]
 add rax, 1
 mov qword ptr [r12 + 64], rax
 jmp xchain00099_n5_α
 xchain00099_n4_β:
 jmp .Lx00102_1
.Lx00102_0:
 .quad .Lx00102_0_s
.Lx00102_0_s:
 .string "&features"
 xchain00099_n5_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+32]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 40], rax
  .section .rodata
  .Lrkfn534: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn534]
 lea rsi, [r12 + 32]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 cmp eax, 99
 je xchain00099_n6_α
 jmp xchain00099_n4_β
 xchain00099_n5_β:
 jmp xchain00099_n6_α
# IR_RETURN
 xchain00099_n6_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Signature___γ
proc_Signature___β:
jmp proc_Signature___ω
proc_Signature___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Signature___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_Storage___α
proc_Storage___α:
#=======================================================================================================================
    .global proc_Storage___α
    .global proc_Storage___β
    .global proc_Storage___γ
    .global proc_Storage___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 752], rax
 pop rsi
proc_Storage___α_body:
# IR_VAR_REF
 xchain00103_n0_α:
 lea rdi, [rbx + 368]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00103_n1_α
 xchain00103_n0_β:
 jmp xchain00103_n3_α
# IR_NULLTEST_VAR
 xchain00103_n1_α:
 mov eax, dword ptr [r12 + 688]
 cmp eax, 99
 je xchain00103_n3_α
 mov rdi, qword ptr [r12 + 688]
 mov rsi, qword ptr [r12 + 696]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00103_n3_α
 cmp eax, 0
 jne xchain00103_n3_α
 mov rax, qword ptr [r12 + 688]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 696]
 mov qword ptr [r12 + 712], rax
 jmp xchain00103_n2_α
 xchain00103_n1_β:
 jmp xchain00103_n3_α
# IR_LIT_INTEGER
 xchain00103_n2_α:
 mov qword ptr [r12 + 736], 6
 mov rax, qword ptr [rip + .Lx00104_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain00103_n4_α
 xchain00103_n2_β:
 jmp xchain00103_n3_α
.Lx00104_0:
 .quad 1
# IR_MAKE_LIST
 xchain00103_n3_α:
 lea rdi, [r12 + 528]
 mov esi, 0
 call rt_make_list@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain00103_n5_α
 xchain00103_n3_β:
 jmp xchain00103_n7_α
# IR_ASSIGN_VAR
 xchain00103_n4_α:
 mov rdi, qword ptr [r12 + 704]
 mov rsi, qword ptr [r12 + 712]
 mov rdx, qword ptr [r12 + 736]
 mov rcx, qword ptr [r12 + 744]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00103_n3_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain00103_n6_α
 xchain00103_n4_β:
 jmp xchain00103_n3_α
 xchain00103_n5_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 512]
 mov rdx, qword ptr [r12 + 520]
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain00103_n7_α
 xchain00103_n5_β:
 jmp xchain00103_n7_α
# IR_LIT_STRING
 xchain00103_n6_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx00105_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain00103_n8_α
 xchain00103_n6_β:
 jmp xchain00103_n3_α
.Lx00105_0:
 .quad .Lx00105_0_s
.Lx00105_0_s:
 .string "static"
# IR_VAR
 xchain00103_n7_α:
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 448], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 456], rax
 jmp xchain00103_n9_α
 xchain00103_n7_β:
 jmp xchain00103_n10_α
# IR_LIT_STRING
 xchain00103_n8_α:
 mov qword ptr [r12 + 656], 1
 mov rax, qword ptr [rip + .Lx00106_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain00103_n11_α
 xchain00103_n8_β:
 jmp xchain00103_n3_α
.Lx00106_0:
 .quad .Lx00106_0_s
.Lx00106_0_s:
 .string "string"
# IR_KEYWORD_gen
 xchain00103_n9_α:
 mov qword ptr [r12 + 480], 0
.Lx00107_1:
 mov rdi, qword ptr [rip + .Lx00107_0]
 mov rsi, qword ptr [r12 + 480]
 call rt_keyword_gen@PLT
 cmp eax, 99
 je xchain00103_n10_α
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 mov rax, qword ptr [r12 + 480]
 add rax, 1
 mov qword ptr [r12 + 480], rax
 jmp xchain00103_n12_α
 xchain00103_n9_β:
 jmp .Lx00107_1
.Lx00107_0:
 .quad .Lx00107_0_s
.Lx00107_0_s:
 .string "&storage"
# IR_LIT_STRING
 xchain00103_n10_α:
 mov qword ptr [r12 + 384], 1
 mov rax, qword ptr [rip + .Lx00108_0]
 mov qword ptr [r12 + 392], rax
 jmp xchain00103_n13_α
 xchain00103_n10_β:
 jmp xchain00103_n15_α
.Lx00108_0:
 .quad .Lx00108_0_s
.Lx00108_0_s:
 .string "storage"
# IR_LIT_STRING
 xchain00103_n11_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00109_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00103_n14_α
 xchain00103_n11_β:
 jmp xchain00103_n3_α
.Lx00109_0:
 .quad .Lx00109_0_s
.Lx00109_0_s:
 .string "block"
 xchain00103_n12_α:
# BOX IR_CALL put(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn553: .string "put"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn553]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain00103_n10_α
 jmp xchain00103_n9_β
 xchain00103_n12_β:
 jmp xchain00103_n10_α
 xchain00103_n13_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+368]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 368], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 376], rax
  .section .rodata
  .Lrkfn555: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn555]
 lea rsi, [r12 + 368]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 cmp eax, 99
 je xchain00103_n15_α
 jmp xchain00103_n15_α
 xchain00103_n13_β:
 jmp xchain00103_n15_α
# IR_MAKE_LIST
 xchain00103_n14_α:
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 616], rax
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 632], rax
 lea rdi, [r12 + 592]
 mov esi, 3
 call rt_make_list@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 jmp xchain00103_n16_α
 xchain00103_n14_β:
 jmp xchain00103_n3_α
# IR_LIT_INTEGER
 xchain00103_n15_α:
 mov qword ptr [r12 + 64], 6
 mov rax, qword ptr [rip + .Lx00110_0]
 mov qword ptr [r12 + 72], rax
 jmp xchain00103_n17_α
 xchain00103_n15_β:
 jmp xchain00103_n20_α
.Lx00110_0:
 .quad 1
# IR_ASSIGN gva
 xchain00103_n16_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 352], rax
 mov qword ptr [rbx + 360], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00103_n18_α
 xchain00103_n16_β:
 jmp xchain00103_n3_α
# IR_VAR
 xchain00103_n17_α:
 mov rax, qword ptr [rbx + 352]
 mov rdx, qword ptr [rbx + 360]
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00103_n19_α
 xchain00103_n17_β:
 jmp xchain00103_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00103_n18_α:
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
 lea rax, [rip + xchain00103_n3_α]
 mov qword ptr [r12 + 544], rax
 jmp xchain00103_n3_α
 xchain00103_n18_β:
 jmp xchain00103_n3_α
# IR_UNOP
 xchain00103_n19_α:
 mov rdi, qword ptr [r12 + 96]
 mov rsi, qword ptr [r12 + 104]
 call rt_size_d@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00103_n22_α
 xchain00103_n19_β:
 jmp xchain00103_n20_α
# IR_RETURN
 xchain00103_n20_α:
 mov qword ptr [r12 + 0], 0
 mov qword ptr [r12 + 8], 0
 jmp proc_Storage___γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00103_n21_α:
 jmp qword ptr [r12 + 544]
 xchain00103_n21_β:
 jmp xchain00103_n3_α
# IR_TO
 xchain00103_n22_α:
 mov rax, qword ptr [r12 + 72]
 mov qword ptr [r12 + 48], rax
.Lx00111_0:
 mov rax, qword ptr [r12 + 48]
 mov rcx, qword ptr [r12 + 88]
 cmp rax, rcx
 jg xchain00103_n20_α
 mov qword ptr [r12 + 32], 6
 mov qword ptr [r12 + 40], rax
 jmp xchain00103_n23_α
 xchain00103_n22_β:
 inc qword ptr [r12 + 48]
 jmp .Lx00111_0
 xchain00103_n23_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 jmp xchain00103_n24_α
 xchain00103_n23_β:
 jmp xchain00103_n20_α
# IR_VAR_REF
 xchain00103_n24_α:
 lea rdi, [rbx + 352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00103_n25_α
 xchain00103_n24_β:
 jmp xchain00103_n22_β
# IR_VAR
 xchain00103_n25_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 184], rax
 jmp xchain00103_n26_α
 xchain00103_n25_β:
 jmp xchain00103_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00103_n26_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00103_n22_β
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00103_n27_α
 xchain00103_n26_β:
 jmp xchain00103_n22_β
# IR_DEREF variable -> value
 xchain00103_n27_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00103_n22_β
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00103_n28_α
 xchain00103_n27_β:
 jmp xchain00103_n22_β
# IR_VAR_REF
 xchain00103_n28_α:
 lea rdi, [r12 + 784]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain00103_n29_α
 xchain00103_n28_β:
 jmp xchain00103_n22_β
# IR_VAR
 xchain00103_n29_α:
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 296], rax
 jmp xchain00103_n30_α
 xchain00103_n29_β:
 jmp xchain00103_n22_β
# IR_SUBSCRIPT x[i] variable
 xchain00103_n30_α:
 mov rdi, qword ptr [r12 + 272]
 mov rsi, qword ptr [r12 + 280]
 mov rdx, qword ptr [r12 + 288]
 mov rcx, qword ptr [r12 + 296]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00103_n22_β
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00103_n31_α
 xchain00103_n30_β:
 jmp xchain00103_n22_β
# IR_DEREF variable -> value
 xchain00103_n31_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00103_n22_β
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain00103_n32_α
 xchain00103_n31_β:
 jmp xchain00103_n22_β
# IR_LIT_INTEGER
 xchain00103_n32_α:
 mov qword ptr [r12 + 336], 6
 mov rax, qword ptr [rip + .Lx00112_0]
 mov qword ptr [r12 + 344], rax
 jmp xchain00103_n33_α
 xchain00103_n32_β:
 jmp xchain00103_n22_β
.Lx00112_0:
 .quad 8
 xchain00103_n33_α:
# BOX IR_CALL right(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+240]
 mov rax, qword ptr [r12 + 320]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 328]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [zr+336] -> [zr+256]
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn584: .string "right"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn584]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain00103_n22_β
 jmp xchain00103_n34_α
 xchain00103_n33_β:
 jmp xchain00103_n22_β
 xchain00103_n34_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+128]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 136], rax
# marshal arg1 = producer-box slot [zr+224] -> [zr+144]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn586: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn586]
 lea rsi, [r12 + 128]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00103_n22_β
 jmp xchain00103_n22_β
 xchain00103_n34_β:
 jmp xchain00103_n22_β
proc_Storage___β:
jmp proc_Storage___ω
proc_Storage___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 752]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Storage___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_Time___α
proc_Time___α:
#=======================================================================================================================
    .global proc_Time___α
    .global proc_Time___β
    .global proc_Time___γ
    .global proc_Time___ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 224], rax
 pop rsi
proc_Time___α_body:
# IR_VAR_REF
 xchain00113_n0_α:
 lea rdi, [rbx + 400]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00113_n1_α
 xchain00113_n0_β:
 jmp xchain00113_n3_α
# IR_NULLTEST_VAR
 xchain00113_n1_α:
 mov eax, dword ptr [r12 + 160]
 cmp eax, 99
 je xchain00113_n3_α
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00113_n3_α
 cmp eax, 0
 jne xchain00113_n3_α
 mov rax, qword ptr [r12 + 160]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 168]
 mov qword ptr [r12 + 184], rax
 jmp xchain00113_n2_α
 xchain00113_n1_β:
 jmp xchain00113_n3_α
# IR_LIT_INTEGER
 xchain00113_n2_α:
 mov qword ptr [r12 + 208], 6
 mov rax, qword ptr [rip + .Lx00114_0]
 mov qword ptr [r12 + 216], rax
 jmp xchain00113_n4_α
 xchain00113_n2_β:
 jmp xchain00113_n3_α
.Lx00114_0:
 .quad 1
# IR_KEYWORD_read
 xchain00113_n3_α:
 mov rdi, qword ptr [rip + .Lx00115_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 jmp xchain00113_n5_α
 xchain00113_n3_β:
 jmp proc_Time___ω
.Lx00115_0:
 .quad .Lx00115_0_s
.Lx00115_0_s:
 .string "&time"
# IR_ASSIGN_VAR
 xchain00113_n4_α:
 mov rdi, qword ptr [r12 + 176]
 mov rsi, qword ptr [r12 + 184]
 mov rdx, qword ptr [r12 + 208]
 mov rcx, qword ptr [r12 + 216]
 call rt_assign_var@PLT
 cmp eax, 99
 je xchain00113_n3_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00113_n6_α
 xchain00113_n4_β:
 jmp xchain00113_n3_α
# IR_VAR
 xchain00113_n5_α:
 mov rax, qword ptr [rbx + 384]
 mov rdx, qword ptr [rbx + 392]
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 jmp xchain00113_n7_α
 xchain00113_n5_β:
 jmp proc_Time___ω
# IR_KEYWORD_read
 xchain00113_n6_α:
 mov rdi, qword ptr [rip + .Lx00116_0]
 call rt_keyword_read@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00113_n8_α
 xchain00113_n6_β:
 jmp xchain00113_n3_α
.Lx00116_0:
 .quad .Lx00116_0_s
.Lx00116_0_s:
 .string "&time"
 xchain00113_n7_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 32]
 cmp eax, 100
 je .Lx00117_0
 mov eax, dword ptr [r12 + 64]
 cmp eax, 100
 je .Lx00117_0
 mov eax, dword ptr [r12 + 32]
 cmp eax, 6
 jne .Lx00117_2
 mov eax, dword ptr [r12 + 64]
 cmp eax, 6
 jne .Lx00117_2
.Lx00117_1:
 mov rax, qword ptr [r12 + 40]
 mov rcx, qword ptr [r12 + 72]
 sub rax, rcx
 mov qword ptr [r12 + 16], 6
 mov qword ptr [r12 + 24], rax
 jmp xchain00113_n9_α
.Lx00117_0:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 1
 lea r9, [r12 + 16]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00117_3
.Lx00117_2:
 mov rdi, qword ptr [r12 + 32]
 mov rsi, qword ptr [r12 + 40]
 mov rdx, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 72]
 mov r8d, 1
 call rt_num_arith@PLT
 cmp eax, 99
 je proc_Time___ω
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
.Lx00117_3:
 jmp xchain00113_n9_α
 xchain00113_n7_β:
 jmp proc_Time___ω
# IR_ASSIGN gva
 xchain00113_n8_α:
 mov rax, qword ptr [r12 + 128]
 mov rdx, qword ptr [r12 + 136]
 mov qword ptr [rbx + 384], rax
 mov qword ptr [rbx + 392], rdx
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00113_n10_α
 xchain00113_n8_β:
 jmp xchain00113_n3_α
# IR_RETURN
 xchain00113_n9_α:
 mov rax, qword ptr [r12 + 16]
 mov rdx, qword ptr [r12 + 24]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_Time___γ
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00113_n10_α:
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 88], rax
 lea rax, [rip + xchain00113_n3_α]
 mov qword ptr [r12 + 96], rax
 jmp xchain00113_n3_α
 xchain00113_n10_β:
 jmp xchain00113_n3_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00113_n11_α:
 jmp qword ptr [r12 + 96]
 xchain00113_n11_β:
 jmp xchain00113_n3_α
proc_Time___β:
jmp proc_Time___ω
proc_Time___γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 224]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_Time___ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
  .globl proc_shuffle_α
proc_shuffle_α:
#=======================================================================================================================
    .global proc_shuffle_α
    .global proc_shuffle_β
    .global proc_shuffle_γ
    .global proc_shuffle_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 208], rax
 pop rsi
proc_shuffle_α_body:
# IR_VAR
 xchain00118_n0_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 200], rax
 jmp xchain00118_n1_α
 xchain00118_n0_β:
 jmp xchain00118_n2_α
 xchain00118_n1_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+192] -> [zr+176]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn607: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn607]
 lea rsi, [r12 + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain00118_n2_α
 jmp xchain00118_n3_α
 xchain00118_n1_β:
 jmp xchain00118_n2_α
# IR_VAR_REF
 xchain00118_n2_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 80], rax
 mov qword ptr [r12 + 88], rdx
 jmp xchain00118_n4_α
 xchain00118_n2_β:
 jmp xchain00118_n8_α
 xchain00118_n3_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 160]
 mov rdx, qword ptr [r12 + 168]
 mov qword ptr [r12 + 16], rax
 mov qword ptr [r12 + 24], rdx
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 jmp xchain00118_n2_α
 xchain00118_n3_β:
 jmp xchain00118_n2_α
# IR_LIST_BANG
 xchain00118_n4_α:
 mov qword ptr [r12 + 64], 0
.Lx00119_0:
 mov rdi, qword ptr [r12 + 80]
 mov rsi, qword ptr [r12 + 88]
 mov rdx, qword ptr [r12 + 64]
 call rt_list_bang_var_at@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp rax, 99
 je xchain00118_n8_α
 jmp xchain00118_n5_α
 xchain00118_n4_β:
 inc qword ptr [r12 + 64]
 jmp .Lx00119_0
# IR_VAR_REF
 xchain00118_n5_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 jmp xchain00118_n6_α
 xchain00118_n5_β:
 jmp xchain00118_n8_α
# IR_RANDOM ?x -> element variable / value (canonical LCG, oref.r random)
 xchain00118_n6_α:
 mov rdi, qword ptr [r12 + 112]
 mov rsi, qword ptr [r12 + 120]
 call rt_random_var@PLT
 cmp eax, 99
 je xchain00118_n8_α
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 jmp xchain00118_n7_α
 xchain00118_n6_β:
 jmp xchain00118_n8_α
# IR_SWAP_VAR x:=:y through variables (canonical swap, oasgn.r:265)
 xchain00118_n7_α:
 mov rdi, qword ptr [r12 + 48]
 mov rsi, qword ptr [r12 + 56]
 mov rdx, qword ptr [r12 + 96]
 mov rcx, qword ptr [r12 + 104]
 call rt_swap_var@PLT
 cmp eax, 99
 je xchain00118_n8_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00118_n4_β
 xchain00118_n7_β:
 jmp xchain00118_n8_α
# IR_VAR
 xchain00118_n8_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 32], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 40], rax
 jmp xchain00118_n9_α
 xchain00118_n8_β:
 jmp proc_shuffle_ω
# IR_RETURN
 xchain00118_n9_α:
 mov rax, qword ptr [r12 + 32]
 mov rdx, qword ptr [r12 + 40]
 mov qword ptr [r12 + 0], rax
 mov qword ptr [r12 + 8], rdx
 jmp proc_shuffle_γ
proc_shuffle_β:
jmp proc_shuffle_ω
proc_shuffle_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 208]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_shuffle_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1568
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1248
  call rt_proc_set_frame_bytes@PLT
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
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 304
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname3: .string "options"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_options_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2512
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname4: .string "Init__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_Init___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 400
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname5: .string "Term__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_Term___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 384
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname6: .string "Collections__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_Collections___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 832
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname7: .string "Regions__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_Regions___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 800
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname8: .string "Signature__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname8]
  lea rsi, [rip + proc_Signature___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname8]
  mov esi, 224
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname9: .string "Storage__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname9]
  lea rsi, [rip + proc_Storage___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname9]
  mov esi, 800
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname10: .string "Time__"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname10]
  lea rsi, [rip + proc_Time___α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname10]
  mov esi, 240
  call rt_proc_set_frame_bytes@PLT
  .section .rodata
  .Lstartup_pname11: .string "shuffle"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname11]
  lea rsi, [rip + proc_shuffle_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname11]
  mov esi, 224
  call rt_proc_set_frame_bytes@PLT
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
  .Lgvan7: .string "Save__"
  .Lgvan8: .string "Saves__"
  .Lgvan9: .string "Name__"
  .Lgvan10: .string "display__STATIC__bar"
  .Lgvan11: .string "display__STATIC__offset"
  .Lgvan12: .string "display__INITFLAG__0"
  .Lgvan13: .string "show__STATIC__clubmap"
  .Lgvan14: .string "show__STATIC__diamondmap"
  .Lgvan15: .string "show__STATIC__heartmap"
  .Lgvan16: .string "show__STATIC__spademap"
  .Lgvan17: .string "show__INITFLAG__0"
  .Lgvan18: .string "Collections____STATIC__labels"
  .Lgvan19: .string "Collections____INITFLAG__0"
  .Lgvan20: .string "Regions____STATIC__labels"
  .Lgvan21: .string "Regions____INITFLAG__0"
  .Lgvan22: .string "Storage____STATIC__labels"
  .Lgvan23: .string "Storage____INITFLAG__0"
  .Lgvan24: .string "Time____STATIC__lasttime"
  .Lgvan25: .string "Time____INITFLAG__0"
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
  .section .bss
  .align 16
__gva: .space 416, 0
  .section .text
  .intel_syntax noprefix
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  lea rdi, [rip + __gva_names]
  lea rsi, [rip + __gva]
  mov edx, 26
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 912], rax
 pop rsi
main_α_body:
# IR_LIT_STRING
 xchain00120_n0_α:
 mov qword ptr [r12 + 896], 1
 mov rax, qword ptr [rip + .Lx00121_0]
 mov qword ptr [r12 + 904], rax
 jmp xchain00120_n1_α
 xchain00120_n0_β:
 jmp xchain00120_n2_α
.Lx00121_0:
 .quad .Lx00121_0_s
.Lx00121_0_s:
 .string "deal"
 xchain00120_n1_α:
  .section .rodata
  .Lcall00122_pname: .string "Init__"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00122_pname]
 mov esi, 1
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je xchain00120_n2_α
 jmp xchain00120_n2_α
xchain00120_n1_β:
 jmp xchain00120_n2_α
# IR_LIT_CHARSET
 xchain00120_n2_α:
 mov qword ptr [r12 + 848], 1
 mov dword ptr [r12 + 852], -1
 mov rax, qword ptr [rip + .Lx00123_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain00120_n3_α
 xchain00120_n2_β:
 jmp xchain00120_n5_α
.Lx00123_0:
 .quad .Lx00123_0_s
.Lx00123_0_s:
 .string "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
 xchain00120_n3_α:
# BOX IR_CALL string(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+832]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn625: .string "string"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn625]
 lea rsi, [r12 + 832]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain00120_n5_α
 jmp xchain00120_n4_α
 xchain00120_n3_β:
 jmp xchain00120_n5_α
# IR_ASSIGN gva
 xchain00120_n4_α:
 mov rax, qword ptr [r12 + 816]
 mov rdx, qword ptr [r12 + 824]
 mov qword ptr [rbx + 16], rax
 mov qword ptr [rbx + 24], rdx
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 jmp xchain00120_n6_α
 xchain00120_n4_β:
 jmp xchain00120_n5_α
# IR_VAR
 xchain00120_n5_α:
 mov rax, qword ptr [rbx + 0]
 mov rdx, qword ptr [rbx + 8]
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 jmp xchain00120_n7_α
 xchain00120_n5_β:
 jmp xchain00120_n8_α
# IR_ASSIGN gva
 xchain00120_n6_α:
 mov rax, qword ptr [r12 + 800]
 mov rdx, qword ptr [r12 + 808]
 mov qword ptr [rbx + 0], rax
 mov qword ptr [rbx + 8], rdx
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain00120_n5_α
 xchain00120_n6_β:
 jmp xchain00120_n5_α
# IR_UNOP
 xchain00120_n7_α:
 mov rdi, qword ptr [r12 + 752]
 mov rsi, qword ptr [r12 + 760]
 call rt_size_d@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain00120_n9_α
 xchain00120_n7_β:
 jmp xchain00120_n8_α
# IR_LIT_STRING
 xchain00120_n8_α:
 mov qword ptr [r12 + 672], 1
 mov rax, qword ptr [rip + .Lx00124_0]
 mov qword ptr [r12 + 680], rax
 jmp xchain00120_n10_α
 xchain00120_n8_β:
 jmp xchain00120_n12_α
.Lx00124_0:
 .quad .Lx00124_0_s
.Lx00124_0_s:
 .string "AKQJT98765432"
# IR_LIT_INTEGER
 xchain00120_n9_α:
 mov qword ptr [r12 + 768], 6
 mov rax, qword ptr [rip + .Lx00125_0]
 mov qword ptr [r12 + 776], rax
 jmp xchain00120_n11_α
 xchain00120_n9_β:
 jmp xchain00120_n8_α
.Lx00125_0:
 .quad 4
# IR_ASSIGN gva
 xchain00120_n10_α:
 mov rax, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 mov qword ptr [rbx + 80], rax
 mov qword ptr [rbx + 88], rdx
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain00120_n12_α
 xchain00120_n10_β:
 jmp xchain00120_n12_α
 xchain00120_n11_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 736]
 cmp eax, 100
 je .Lx00126_0
 mov eax, dword ptr [r12 + 768]
 cmp eax, 100
 je .Lx00126_0
 mov eax, dword ptr [r12 + 736]
 cmp eax, 6
 jne .Lx00126_2
 mov eax, dword ptr [r12 + 768]
 cmp eax, 6
 jne .Lx00126_2
.Lx00126_1:
 mov rax, qword ptr [r12 + 744]
 mov rcx, qword ptr [r12 + 776]
 cqo
 idiv rcx
 mov qword ptr [r12 + 720], 6
 mov qword ptr [r12 + 728], rax
 jmp xchain00120_n13_α
.Lx00126_0:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 3
 lea r9, [r12 + 720]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00126_3
.Lx00126_2:
 mov rdi, qword ptr [r12 + 736]
 mov rsi, qword ptr [r12 + 744]
 mov rdx, qword ptr [r12 + 768]
 mov rcx, qword ptr [r12 + 776]
 mov r8d, 3
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00120_n8_α
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
.Lx00126_3:
 jmp xchain00120_n13_α
 xchain00120_n11_β:
 jmp xchain00120_n8_α
# IR_LIT_STRING
 xchain00120_n12_α:
 mov qword ptr [r12 + 624], 1
 mov rax, qword ptr [rip + .Lx00127_0]
 mov qword ptr [r12 + 632], rax
 jmp xchain00120_n14_α
 xchain00120_n12_β:
 jmp xchain00120_n17_α
.Lx00127_0:
 .quad .Lx00127_0_s
.Lx00127_0_s:
 .string " "
# IR_ASSIGN gva
 xchain00120_n13_α:
 mov rax, qword ptr [r12 + 720]
 mov rdx, qword ptr [r12 + 728]
 mov qword ptr [rbx + 48], rax
 mov qword ptr [rbx + 56], rdx
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain00120_n15_α
 xchain00120_n13_β:
 jmp xchain00120_n8_α
# IR_VAR
 xchain00120_n14_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain00120_n16_α
 xchain00120_n14_β:
 jmp xchain00120_n17_α
# IR_ASSIGN gva
 xchain00120_n15_α:
 mov rax, qword ptr [r12 + 704]
 mov rdx, qword ptr [r12 + 712]
 mov qword ptr [rbx + 32], rax
 mov qword ptr [rbx + 40], rdx
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain00120_n8_α
 xchain00120_n15_β:
 jmp xchain00120_n8_α
 xchain00120_n16_α:
# BOX IR_CALL repl(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+592]
 mov rax, qword ptr [r12 + 624]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 632]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 616], rax
  .section .rodata
  .Lrkfn639: .string "repl"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn639]
 lea rsi, [r12 + 592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je xchain00120_n17_α
 jmp xchain00120_n18_α
 xchain00120_n16_β:
 jmp xchain00120_n17_α
# IR_LIT_CHARSET
 xchain00120_n17_α:
 mov qword ptr [r12 + 496], 1
 mov dword ptr [r12 + 500], -1
 mov rax, qword ptr [rip + .Lx00128_0]
 mov qword ptr [r12 + 504], rax
 jmp xchain00120_n19_α
 xchain00120_n17_β:
 jmp xchain00120_n22_α
.Lx00128_0:
 .quad .Lx00128_0_s
.Lx00128_0_s:
 .string "abcdefghijklmnopqrstuvwxyz"
# IR_ASSIGN gva
 xchain00120_n18_α:
 mov rax, qword ptr [r12 + 576]
 mov rdx, qword ptr [r12 + 584]
 mov qword ptr [rbx + 96], rax
 mov qword ptr [rbx + 104], rdx
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 jmp xchain00120_n17_α
 xchain00120_n18_β:
 jmp xchain00120_n17_α
# IR_LIT_INTEGER
 xchain00120_n19_α:
 mov qword ptr [r12 + 512], 6
 mov rax, qword ptr [rip + .Lx00129_0]
 mov qword ptr [r12 + 520], rax
 jmp xchain00120_n20_α
 xchain00120_n19_β:
 jmp xchain00120_n22_α
.Lx00129_0:
 .quad 1
# IR_VAR
 xchain00120_n20_α:
 mov rax, qword ptr [rbx + 48]
 mov rdx, qword ptr [rbx + 56]
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain00120_n21_α
 xchain00120_n20_β:
 jmp xchain00120_n22_α
 xchain00120_n21_α:
# IR_BINOP_ARITH
 mov eax, dword ptr [r12 + 512]
 cmp eax, 100
 je .Lx00130_0
 mov eax, dword ptr [r12 + 528]
 cmp eax, 100
 je .Lx00130_0
 mov eax, dword ptr [r12 + 512]
 cmp eax, 6
 jne .Lx00130_2
 mov eax, dword ptr [r12 + 528]
 cmp eax, 6
 jne .Lx00130_2
.Lx00130_1:
 mov rax, qword ptr [r12 + 520]
 mov rcx, qword ptr [r12 + 536]
 add rax, rcx
 mov qword ptr [r12 + 544], 6
 mov qword ptr [r12 + 552], rax
 jmp xchain00120_n23_α
.Lx00130_0:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 0
 lea r9, [r12 + 544]
 call rt_binop_overload@PLT
 test eax, eax
 jne .Lx00130_3
.Lx00130_2:
 mov rdi, qword ptr [r12 + 512]
 mov rsi, qword ptr [r12 + 520]
 mov rdx, qword ptr [r12 + 528]
 mov rcx, qword ptr [r12 + 536]
 mov r8d, 0
 call rt_num_arith@PLT
 cmp eax, 99
 je xchain00120_n22_α
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
.Lx00130_3:
 jmp xchain00120_n23_α
 xchain00120_n21_β:
 jmp xchain00120_n22_α
# IR_VAR
 xchain00120_n22_α:
 mov rax, qword ptr [r12 + 16]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 24]
 mov qword ptr [r12 + 440], rax
 jmp xchain00120_n24_α
 xchain00120_n22_β:
 jmp xchain00120_n25_α
# IR_SUBSCRIPT section extended (x[i+:n]/x[i-:n]; end pre-computed by IR_BINOP; wraparound→ω)
 xchain00120_n23_α:
 mov rdi, qword ptr [r12 + 496]
 mov rsi, qword ptr [r12 + 504]
 mov rdx, qword ptr [r12 + 512]
 mov rcx, qword ptr [r12 + 520]
 mov r8, qword ptr [r12 + 544]
 mov r9, qword ptr [r12 + 552]
 call subscript_get2_ext@PLT
 cmp eax, 99
 je xchain00120_n22_α
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain00120_n26_α
 xchain00120_n23_β:
 jmp xchain00120_n22_α
# IR_LIT_STRING
 xchain00120_n24_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx00131_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain00120_n27_α
 xchain00120_n24_β:
 jmp xchain00120_n25_α
.Lx00131_0:
 .quad .Lx00131_0_s
.Lx00131_0_s:
 .string "h+s+"
# IR_VAR_REF
 xchain00120_n25_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 jmp xchain00120_n28_α
 xchain00120_n25_β:
 jmp xchain00120_n32_α
# IR_ASSIGN gva
 xchain00120_n26_α:
 mov rax, qword ptr [r12 + 480]
 mov rdx, qword ptr [r12 + 488]
 mov qword ptr [rbx + 64], rax
 mov qword ptr [rbx + 72], rdx
 mov qword ptr [r12 + 464], rax
 mov qword ptr [r12 + 472], rdx
 jmp xchain00120_n22_α
 xchain00120_n26_β:
 jmp xchain00120_n22_α
 xchain00120_n27_α:
  .section .rodata
  .Lcall00132_pname: .string "options"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 448]
 mov rdx, qword ptr [r12 + 456]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall00132_pname]
 mov esi, 2
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je xchain00120_n25_α
 jmp xchain00120_n29_α
xchain00120_n27_β:
 jmp xchain00120_n25_α
# IR_LIT_STRING
 xchain00120_n28_α:
 mov qword ptr [r12 + 320], 1
 mov rax, qword ptr [rip + .Lx00133_0]
 mov qword ptr [r12 + 328], rax
 jmp xchain00120_n30_α
 xchain00120_n28_β:
 jmp xchain00120_n32_α
.Lx00133_0:
 .quad .Lx00133_0_s
.Lx00133_0_s:
 .string "h"
 xchain00120_n29_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain00120_n25_α
 xchain00120_n29_β:
 jmp xchain00120_n25_α
# IR_SUBSCRIPT x[i] variable
 xchain00120_n30_α:
 mov rdi, qword ptr [r12 + 304]
 mov rsi, qword ptr [r12 + 312]
 mov rdx, qword ptr [r12 + 320]
 mov rcx, qword ptr [r12 + 328]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00120_n32_α
 mov qword ptr [r12 + 336], rax
 mov qword ptr [r12 + 344], rdx
 jmp xchain00120_n31_α
 xchain00120_n30_β:
 jmp xchain00120_n32_α
# IR_DEREF variable -> value
 xchain00120_n31_α:
 mov rdi, qword ptr [r12 + 336]
 mov rsi, qword ptr [r12 + 344]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00120_n32_α
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain00120_n33_α
 xchain00120_n31_β:
 jmp xchain00120_n32_α
# IR_LIT_INTEGER
 xchain00120_n32_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx00134_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain00120_n34_α
 xchain00120_n32_β:
 jmp xchain00120_n37_α
.Lx00134_0:
 .quad 1
# IR_UNOP
 xchain00120_n33_α:
 mov eax, dword ptr [r12 + 352]
 cmp eax, 99
 je xchain00120_n32_α
 cmp eax, 0
 je xchain00120_n32_α
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 288], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 296], rax
 jmp xchain00120_n35_α
 xchain00120_n33_β:
 jmp xchain00120_n32_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00120_n34_α:
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00120_n37_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00120_n36_α
 xchain00120_n34_β:
 jmp xchain00120_n37_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain00120_n35_α:
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 248], rax
 lea rax, [rip + xchain00120_n32_α]
 mov qword ptr [r12 + 256], rax
 jmp xchain00120_n36_α
 xchain00120_n35_β:
 jmp xchain00120_n37_α
 xchain00120_n36_α:
# IR_ASSIGN local
 mov rax, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 jmp xchain00120_n37_α
 xchain00120_n36_β:
 jmp xchain00120_n37_α
# IR_VAR_REF
 xchain00120_n37_α:
 lea rdi, [r12 + 944]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 jmp xchain00120_n39_α
 xchain00120_n37_β:
 jmp xchain00120_n42_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain00120_n38_α:
 jmp qword ptr [r12 + 256]
 xchain00120_n38_β:
 jmp xchain00120_n37_α
# IR_LIT_STRING
 xchain00120_n39_α:
 mov qword ptr [r12 + 176], 1
 mov rax, qword ptr [rip + .Lx00135_0]
 mov qword ptr [r12 + 184], rax
 jmp xchain00120_n40_α
 xchain00120_n39_β:
 jmp xchain00120_n42_α
.Lx00135_0:
 .quad .Lx00135_0_s
.Lx00135_0_s:
 .string "s"
# IR_SUBSCRIPT x[i] variable
 xchain00120_n40_α:
 mov rdi, qword ptr [r12 + 160]
 mov rsi, qword ptr [r12 + 168]
 mov rdx, qword ptr [r12 + 176]
 mov rcx, qword ptr [r12 + 184]
 call rt_subscript_var@PLT
 cmp eax, 99
 je xchain00120_n42_α
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain00120_n41_α
 xchain00120_n40_β:
 jmp xchain00120_n42_α
# IR_DEREF variable -> value
 xchain00120_n41_α:
 mov rdi, qword ptr [r12 + 192]
 mov rsi, qword ptr [r12 + 200]
 call rt_deref@PLT
 cmp eax, 99
 je xchain00120_n42_α
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain00120_n43_α
 xchain00120_n41_β:
 jmp xchain00120_n42_α
# IR_LIT_INTEGER
 xchain00120_n42_α:
 mov qword ptr [r12 + 80], 6
 mov rax, qword ptr [rip + .Lx00136_0]
 mov qword ptr [r12 + 88], rax
 jmp xchain00120_n44_α
 xchain00120_n42_β:
 jmp xchain00120_n47_α
.Lx00136_0:
 .quad 1
# IR_UNOP
 xchain00120_n43_α:
 mov eax, dword ptr [r12 + 208]
 cmp eax, 99
 je xchain00120_n42_α
 cmp eax, 0
 je xchain00120_n42_α
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 152], rax
 jmp xchain00120_n45_α
 xchain00120_n43_β:
 jmp xchain00120_n42_α
# IR_VAR
 xchain00120_n44_α:
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 96], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 104], rax
 jmp xchain00120_n46_α
 xchain00120_n44_β:
 jmp xchain00120_n47_α
# BOX ICN IR_KEYWORD_ASSIGN random [data.r kywdint: coerce int, store g_random seed, result {DT_I,n}; non-numeric->omega]
 xchain00120_n45_α:
 mov rdi, qword ptr [r12 + 144]
 mov rsi, qword ptr [r12 + 152]
 call rt_keyword_random_set@PLT
 cmp eax, 99
 je xchain00120_n42_α
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 jmp xchain00120_n42_α
 xchain00120_n45_β:
 jmp xchain00120_n42_α
# IR_TO
 xchain00120_n46_α:
 mov rax, qword ptr [r12 + 88]
 mov qword ptr [r12 + 64], rax
.Lx00137_0:
 mov rax, qword ptr [r12 + 64]
 mov rcx, qword ptr [r12 + 104]
 cmp rax, rcx
 jg xchain00120_n47_α
 mov qword ptr [r12 + 48], 6
 mov qword ptr [r12 + 56], rax
 jmp xchain00120_n48_α
 xchain00120_n46_β:
 inc qword ptr [r12 + 64]
 jmp .Lx00137_0
 xchain00120_n47_α:
  .section .rodata
  .Lcall00138_pname: .string "Term__"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00138_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 32], rax
 mov qword ptr [r12 + 40], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
xchain00120_n47_β:
 jmp main_ω
 xchain00120_n48_α:
  .section .rodata
  .Lcall00139_pname: .string "display"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lcall00139_pname]
 mov esi, 0
 call rt_call_proc_descr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je xchain00120_n46_β
 jmp xchain00120_n46_β
xchain00120_n48_β:
 jmp xchain00120_n46_β
main_β:
jmp main_ω
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 912]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
